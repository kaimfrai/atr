
build/ZEvaluation/bin/Any:	file format elf64-x86-64

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
               	call	qword ptr  <strcmp+0x7f28>
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
               	mov	rax, qword ptr  <strcmp+0x7f38>
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
               	mov	rax, qword ptr  <strcmp+0x7f40>
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
               	cmp	qword ptr , 0x0 <strcmp+0x7f48>
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
               	jmp	 <Bodies3D::IBody::~IBody()>
               	int3
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
<Bodies3D::IBody::~IBody()>:
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
               	jmp	 <Bodies3D::IBody::~IBody()>
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
               	jmp	 <Bodies3D::IBody::~IBody()>
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
               	jmp	 <Bodies3D::IBody::~IBody()>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Int32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	jmp	 <Bodies3D::IBody::~IBody()>
               	int3
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
               	jmp	 <Bodies3D::IBody::~IBody()>
               	int3
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
               	jmp	 <Bodies3D::IBody::~IBody()>
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
               	jmp	 <Bodies3D::IBody::~IBody()>
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
               	jmp	 <Bodies3D::IBody::~IBody()>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Array.Bounded>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	jmp	 <Bodies3D::IBody::~IBody()>
               	int3
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
               	jmp	 <Bodies3D::IBody::~IBody()>
               	int3
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
               	jmp	 <Bodies3D::IBody::~IBody()>
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
               	jmp	 <Bodies3D::IBody::~IBody()>
               	int3
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
               	jmp	 <Bodies3D::IBody::~IBody()>
               	int3
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

<_GLOBAL__sub_I_Any.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	call	 <initializer for module Evaluation.CRTP.Ellipse>
               	call	 <initializer for module Evaluation.CRTP.Rectangle>
               	call	 <initializer for module Evaluation.CRTP.Square>
               	call	 <initializer for module Evaluation.CRTP.Triangle>
               	call	 <Bodies3D::IBody::~IBody()>
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
               	jmp	 <Bodies3D::IBody::~IBody()>
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
               	movabs	r13, 0x180ec6d33cfd0aba
               	mov	qword ptr [rsp], rdx
               	movsxd	rax, edx
               	shl	rax, 0x3
               	lea	rdi, [rax + 2*rax]
               	mov	rsi, qword ptr  <strcmp+0x7f58>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x60], rax
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
               	mov	r10, rdi
               	shr	r10, 0x1f
               	xor	r10, rdi
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
               	mov	r9, rdi
               	shr	r9, 0x1f
               	xor	r9, rdi
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
               	mov	qword ptr [rsp + 0x98], rsi
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0xa0], r9
               	mov	rdi, r9
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x70], r8
               	mov	qword ptr [rsp + 0x80], r10
               	mov	r9, r10
               	xor	ebp, ebp
               	jmp	 <L4>
               	nop	dword ptr [rax + rax]
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
               	bt	r13, rax
               	jae	 <L6>
               	xor	rbp, r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L6>
<L5>:
               	mov	qword ptr [rsp + 0x38], rbp
               	movabs	rbp, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
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
               	bt	rbp, rcx
               	jae	 <L9>
               	xor	qword ptr [rsp + 0x38], r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L9>
<L8>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x38], r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r10d, r10d
               	jmp	 <L13>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x38], r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x10], rsi
               	mov	rsi, r14
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x8], rdi
               	mov	rdi, r15
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x20], r8
               	mov	r8, r12
               	mov	r9, qword ptr [rsp + 0x38]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x18], r11
               	jmp	 <L16>
               	nop	word ptr [rax + rax]
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
               	bt	r13, r10
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	qword ptr [rsp + 0x10], rsi
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
               	bt	rbp, r10
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	qword ptr [rsp + 0x10], rsi
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
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	qword ptr [rsp + 0x10], rsi
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
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	qword ptr [rsp + 0x10], rsi
               	jmp	 <L27>
<L26>:
               	mov	rax, r13
               	mov	qword ptr [rsp + 0x68], r12
               	mov	qword ptr [rsp + 0x88], r15
               	mov	qword ptr [rsp + 0x90], r14
               	xor	r10d, r10d
               	xor	r12d, r12d
               	mov	rsi, qword ptr [rsp + 0x10]
               	xor	r14d, r14d
               	mov	rdi, qword ptr [rsp + 0x8]
               	xor	ebx, ebx
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x18]
               	xor	r13d, r13d
               	mov	r15, qword ptr [rsp + 0x60]
               	jmp	 <L28>
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
               	bt	rax, r10
               	jae	 <L30>
               	xor	r13, r9
               	xor	rbx, r8
               	xor	r14, rdi
               	xor	r12, rsi
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
               	bt	rbp, r10
               	jae	 <L33>
               	xor	r13, r9
               	xor	rbx, r8
               	xor	r14, rdi
               	xor	r12, rsi
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
               	xor	r13, r9
               	xor	rbx, r8
               	xor	r14, rdi
               	xor	r12, rsi
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
               	xor	r13, r9
               	xor	rbx, r8
               	xor	r14, rdi
               	xor	r12, rsi
               	jmp	 <L39>
<L38>:
               	mov	eax, 0x40
               	nop	dword ptr [rax]
<L40>:
               	dec	rax
               	jne	 <L40>
               	mov	eax, 0x40
               	mov	rcx, qword ptr [rsp]
               	nop
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
               	mov	qword ptr [rsp + 0x78], r13
               	vmovq	xmm0, rbx
               	vmovq	xmm1, qword ptr [rsp + 0x20]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	vmovq	xmm1, qword ptr [rsp + 0x68]
               	vmovq	xmm2, qword ptr [rsp + 0x70]
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vinserti128	ymm0, ymm1, xmm0, 0x1
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vpsrlq	ymm1, ymm0, 0x39
               	vpsllq	ymm0, ymm0, 0x7
               	vpor	ymm0, ymm0, ymm1
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm1, ymm1, ymm0
               	mov	eax, ecx
               	mov	qword ptr [rsp + 0xa8], rax
               	mov	eax, 0x10
               	mov	qword ptr [rsp], rax
               	xor	r13d, r13d
               	vmovd	eax, xmm1
               	movzx	eax, al
               	imul	ecx, eax, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	lea	rcx,  <strcmp+0x17e0>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
<L104>:
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x20], xmm0
<L118>:
               	test	r15, r15
               	je	 <L105>
               	mov	rdi, r15
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L105>:
               	vpxor	xmm0, xmm0, xmm0
               	xor	eax, eax
               	vmovaps	xmm1, xmmword ptr [rsp + 0x20]
               	vucomiss	xmm1, xmm0
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
               	shl	r13, 0x3
               	lea	rcx, [2*r13]
               	add	rcx, r13
               	mov	rax, rcx
               	shr	rax, 0x3
               	imul	ebp, eax, 0xaaaaaaab
               	test	ebp, ebp
               	je	 <L106>
               	mov	qword ptr [rsp + 0x8], rcx
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x110], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xf0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xd0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xb0], ymm0
               	mov	r15, qword ptr [rsp + 0x60]
               	jmp	 <L107>
               	nop
<L108>:
               	vmovd	xmm0, dword ptr [rsp + 0xb4]
               	vmovd	dword ptr [rsp + 0xb8], xmm0
               	mov	r12d, 0x1
<L116>:
               	mov	eax, r12d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0xb0]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r15, r14
<L107>:
               	mov	ebx, ebp
               	neg	ebx
               	and	ebx, ebp
               	lea	rax, [rbx + 2*rbx]
               	lea	r14, [r15 + 8*rax]
               	je	 <L108>
               	mov	dword ptr [rsp + 0x10], ebp
               	mov	r13d, 0x1
               	xor	ecx, ecx
               	mov	ebp, 0x1
               	jmp	 <L109>
               	nop	dword ptr [rax + rax]
<L111>:
               	mov	ebp, r12d
               	movsxd	rax, r12d
               	vmovss	dword ptr [rsp + 4*rax + 0xb0], xmm0
               	add	r15, 0x18
               	mov	ecx, 0xfffffffe
               	sub	ecx, r13d
               	lea	edx, [r13 + 0x1]
               	bsr	esi, edx
               	xor	esi, 0x1f
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r13d, edx
               	cmp	r15, r14
               	je	 <L110>
<L109>:
               	mov	r12d, ecx
               	mov	rdi, r15
               	vzeroupper
               	call	qword ptr [r15 + 0x10]
               	mov	rcx, qword ptr [rax]
               	mov	rdi, rax
               	call	qword ptr [rcx]
               	mov	ecx, r12d
               	sub	ecx, ebp
               	jl	 <L111>
               	movsxd	rax, ebp
               	cmp	ecx, 0x1f
               	jb	 <L112>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vpblendd	xmm0, xmm0, xmmword ptr , 0xe <strcmp+0x17d0> # xmm0 = xmm0[0],mem[1,2,3]
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
               	mov	ecx, r12d
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
               	vmovaps	xmmword ptr [rsp + 0x20], xmm0
               	mov	ebp, dword ptr [rsp + 0x10]
               	sub	ebp, ebx
               	je	 <L115>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x20]
               	vmovd	dword ptr [rsp + 4*rax + 0xb4], xmm0
               	mov	r15, r14
               	test	r12d, r12d
               	jns	 <L116>
               	jmp	 <L107>
<L115>:
               	mov	r15, qword ptr [rsp + 0x60]
               	mov	rbx, qword ptr [rsp]
               	mov	rcx, qword ptr [rsp + 0x8]
               	test	rcx, rcx
               	jne	 <L117>
               	jmp	 <L118>
<L106>:
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x20], xmm0
               	mov	r15, qword ptr [rsp + 0x60]
               	test	rcx, rcx
               	je	 <L118>
<L117>:
               	add	rbx, -0x10
               	mov	r14, r15
               	jmp	 <L119>
               	nop	word ptr [rax + rax]
<L121>:
               	mov	qword ptr [r14], 0x0
<L120>:
               	add	r14, 0x18
               	add	rbx, -0x18
               	je	 <L118>
<L119>:
               	mov	rax, qword ptr [r14]
               	test	rax, rax
               	je	 <L120>
               	mov	edi, 0x3
               	mov	rsi, r14
               	xor	edx, edx
               	vzeroupper
               	call	rax
               	jmp	 <L121>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Circle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	mov	qword ptr [rax + 0x20], 0x0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Circle>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Circle>(std::in_place_type_t<Bodies3D::Circle>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipse>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Ellipse>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipse>(std::in_place_type_t<Bodies3D::Ellipse>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Rectangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Rectangle>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Rectangle>(std::in_place_type_t<Bodies3D::Rectangle>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Square>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	mov	qword ptr [rax + 0x20], 0x0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Square>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Square>(std::in_place_type_t<Bodies3D::Square>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Triangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Triangle>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Triangle>(std::in_place_type_t<Bodies3D::Triangle>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	mov	qword ptr [rax + 0x20], 0x0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Cube@Evaluation.CRTP.Cube>(std::in_place_type_t<Bodies3D::Cube@Evaluation.CRTP.Cube>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>(std::in_place_type_t<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(std::in_place_type_t<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	mov	qword ptr [rax + 0x20], 0x0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Sphere@Evaluation.CRTP.Sphere>(std::in_place_type_t<Bodies3D::Sphere@Evaluation.CRTP.Sphere>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(std::in_place_type_t<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Cone@Evaluation.CRTP.Cone>(std::in_place_type_t<Bodies3D::Cone@Evaluation.CRTP.Cone>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(std::in_place_type_t<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L122>
               	mov	rdi, rax
               	vzeroupper
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x40], ymm1
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [r15 + rcx - 0x10], rax
               	mov	qword ptr [r15 + rcx - 0x8], 0x0
               	mov	edi, 0x68
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	vmovdqu	ymmword ptr [rax + 0x40], ymm0
               	vmovdqu	ymmword ptr [rax + 0x20], ymm0
               	mov	qword ptr [rax + 0x60], 0x0
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Head@Evaluation.CRTP.Head>(std::in_place_type_t<Bodies3D::Head@Evaluation.CRTP.Head>)::'lambda'(std::any const&)::__invoke(std::any const&)>
<L122>:
               	mov	rdx, qword ptr [rsp]
               	mov	qword ptr [r15 + rdx - 0x8], rax
               	mov	qword ptr [r15 + rdx], rcx
               	inc	r13
               	test	r13b, 0x7
               	je	 <L123>
               	mov	r11, rbx
               	mov	r15, r14
               	vpsrlq	ymm1, ymm1, 0x8
               	jmp	 <L124>
<L123>:
               	mov	rsi, qword ptr [rsp + 0x70]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xa0]
               	xor	rcx, qword ptr [rsp + 0x80]
               	mov	r9, qword ptr [rsp + 0x98]
               	xor	r9, rsi
               	xor	rsi, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xa0], rcx
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x88]
               	mov	rbp, qword ptr [rsp + 0x38]
               	xor	rcx, rbp
               	mov	rdi, qword ptr [rsp + 0x90]
               	xor	rdi, r8
               	xor	r8, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x88], rcx
               	mov	r11, qword ptr [rsp + 0x20]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	r15, r14
               	mov	r14, r12
               	mov	r12, qword ptr [rsp + 0x18]
               	xor	rcx, r12
               	mov	r10, qword ptr [rsp + 0x10]
               	xor	r10, r11
               	xor	r11, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x8], rcx
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x78]
               	xor	r15, rdx
               	xor	r14, rbx
               	xor	rbx, r15
               	xor	r15, rax
               	mov	qword ptr [rsp + 0x20], r11
               	lea	rax, [r11 + 4*r11]
               	rol	rax, 0x7
               	mov	r11, rbx
               	lea	rcx, [rbx + 4*rbx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm0, rcx
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm1, rax
               	mov	qword ptr [rsp + 0x68], r8
               	lea	rax, [r8 + 4*r8]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm2, rax
               	mov	qword ptr [rsp + 0x70], rsi
               	lea	rax, [rsi + 4*rsi]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm3, rax
               	xor	qword ptr [rsp + 0x80], r9
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x98], r9
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	xor	rbp, rdi
               	mov	qword ptr [rsp + 0x38], rbp
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x90], rdi
               	xor	r12, r10
               	mov	qword ptr [rsp + 0x18], r12
               	mov	r12, r14
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x10], r10
               	xor	rdx, r14
               	mov	qword ptr [rsp + 0x78], rdx
               	rol	r12, 0x2d
               	vpunpcklqdq	xmm1, xmm3, xmm2 # xmm1 = xmm3[0],xmm2[0]
               	vinserti128	ymm1, ymm1, xmm0, 0x1
<L124>:
               	mov	rbx, qword ptr [rsp]
               	add	rbx, 0x18
               	cmp	qword ptr [rsp + 0xa8], r13
               	mov	qword ptr [rsp], rbx
               	je	 <L125>
               	vmovd	eax, xmm1
               	movzx	eax, al
               	imul	ecx, eax, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	lea	rcx,  <strcmp+0x17e0>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	mov	r14, r15
               	mov	rbx, r11
               	mov	r15, qword ptr [rsp + 0x60]
               	jmp	rax
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

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Circle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x1814>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x28
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Circle>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Circle>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
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

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipse>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x1828>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x30
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Ellipse>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	ecx, dword ptr [rbx + 0x28]
               	mov	dword ptr [rax + 0x28], ecx
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Ellipse>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	int3
               	int3
               	int3
               	int3

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Rectangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x183c>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x30
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Rectangle>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	ecx, dword ptr [rbx + 0x28]
               	mov	dword ptr [rax + 0x28], ecx
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Rectangle>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	int3
               	int3
               	int3
               	int3

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Square>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x1850>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x28
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Square>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Square>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
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

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Triangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x1864>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x30
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Triangle>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	ecx, dword ptr [rbx + 0x28]
               	mov	dword ptr [rax + 0x28], ecx
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Triangle>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	int3
               	int3
               	int3
               	int3

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x1878>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x28
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
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

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x188c>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x30
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	rcx, qword ptr [rbx + 0x28]
               	mov	qword ptr [rax + 0x28], rcx
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	int3
               	int3

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x18a0>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x30
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	rcx, qword ptr [rbx + 0x28]
               	mov	qword ptr [rax + 0x28], rcx
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	int3
               	int3

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x18b4>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x28
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
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

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x18c8>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x30
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	ecx, dword ptr [rbx + 0x28]
               	mov	dword ptr [rax + 0x28], ecx
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	int3
               	int3
               	int3
               	int3

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x18dc>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x30
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	ecx, dword ptr [rbx + 0x28]
               	mov	dword ptr [rax + 0x28], ecx
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	int3
               	int3
               	int3
               	int3

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x18f0>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x30
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	mov	rcx, qword ptr [rbx + 0x28]
               	mov	qword ptr [rax + 0x28], rcx
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	int3
               	int3

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x1904>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	qword ptr [rdx], rbx
<L0>:
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	rax, qword ptr [rdx]
               	mov	qword ptr [rax + 0x8], rbx
               	mov	rax, qword ptr [rsi]
               	mov	rcx, qword ptr [rdx]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rsi], 0x0
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	mov	edi, 0x68
               	mov	r14, rdx
               	mov	r15, rsi
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rbx + 0x8]
               	vmovups	ymm1, ymmword ptr [rbx + 0x28]
               	vmovups	ymm2, ymmword ptr [rbx + 0x48]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	vmovups	ymmword ptr [rax + 0x28], ymm1
               	vmovups	ymmword ptr [rax + 0x48], ymm2
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx + 0x8], rax
               	mov	rax, qword ptr [r15]
               	mov	rcx, qword ptr [r14]
               	mov	qword ptr [rcx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	vzeroupper
               	ret
               	test	rbx, rbx
               	je	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	pop	r14
               	pop	r15
               	jmp	qword ptr [rax + 0x10]
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Circle>(std::in_place_type_t<Bodies3D::Circle>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Circle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Circle>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Circle>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Circle>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipse>(std::in_place_type_t<Bodies3D::Ellipse>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipse>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipse>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipse>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipse>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Rectangle>(std::in_place_type_t<Bodies3D::Rectangle>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Rectangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Rectangle>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Rectangle>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Rectangle>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Square>(std::in_place_type_t<Bodies3D::Square>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Square>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Square>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Square>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Square>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Triangle>(std::in_place_type_t<Bodies3D::Triangle>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Triangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Triangle>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Triangle>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Triangle>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cube@Evaluation.CRTP.Cube>(std::in_place_type_t<Bodies3D::Cube@Evaluation.CRTP.Cube>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>(std::in_place_type_t<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(std::in_place_type_t<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Sphere@Evaluation.CRTP.Sphere>(std::in_place_type_t<Bodies3D::Sphere@Evaluation.CRTP.Sphere>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(std::in_place_type_t<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cone@Evaluation.CRTP.Cone>(std::in_place_type_t<Bodies3D::Cone@Evaluation.CRTP.Cone>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(std::in_place_type_t<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Head@Evaluation.CRTP.Head>(std::in_place_type_t<Bodies3D::Head@Evaluation.CRTP.Head>)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	cmp	rax, rcx
               	je	 <L0>
               	test	rax, rax
               	je	 <L1>
               	lea	rdx, [rsp + 0x8]
               	mov	edi, 0x1
               	mov	rsi, rbx
               	call	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x7f60>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>>
               	call	 <strcmp@plt>
               	test	eax, eax
               	jne	 <L3>
<L0>:
               	mov	rax, qword ptr [rbx + 0x8]
               	test	rax, rax
               	je	 <L3>
               	add	rsp, 0x10
               	pop	rbx
               	ret
<L3>:
               	call	 <std::__throw_bad_any_cast()>
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
               	int3

<std::__throw_bad_any_cast()>:
               	push	rax
               	mov	edi, 0x8
               	call	 <__cxa_allocate_exception@plt>
               	lea	rcx,  <vtable for std::bad_any_cast+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rsi,  <typeinfo for std::bad_any_cast>
               	mov	rdx, qword ptr  <strcmp+0x7f50>
               	mov	rdi, rax
               	call	 <__cxa_throw@plt>
               	int3
               	int3
               	int3
               	int3
               	int3

<std::bad_any_cast::~bad_any_cast()>:
               	push	rbx
               	mov	rbx, rdi
               	call	 <_ZNSt8bad_castD2Ev@plt>
               	mov	rdi, rbx
               	pop	rbx
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
               	int3
               	int3
               	int3

<std::bad_any_cast::what() const>:
               	lea	rax,  <typeinfo name for std::bad_any_cast+0x11>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>::ComputeVolume() const>:
<Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <strcmp+0x1928>
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

<Bodies3D::BodyAdapter<Bodies3D::Circle>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Square>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Ellipse>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Triangle>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Rectangle>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::~BodyAdapter()>:
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

<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x1928>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x28]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x2c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x1918>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x28]
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

<Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x191c>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x28]
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

<Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x28]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x1920>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x2c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x28]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x2c]
               	ret

<Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<Bodies3D::BodyAdapter<Bodies3D::Triangle>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x28]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x1924>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
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

<Bodies3D::BodyAdapter<Bodies3D::Square>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::BodyAdapter<Bodies3D::Rectangle>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x28]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::BodyAdapter<Bodies3D::Ellipse>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x191c>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x28]
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

<Bodies3D::BodyAdapter<Bodies3D::Circle>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x191c>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <strcmp+0x7f30>
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

<_ZNSt8bad_castD2Ev@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x58>
               	push	0x8
               	jmp	 <.plt>

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x60>
               	push	0x9
               	jmp	 <.plt>

<strcmp@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x68>
               	push	0xa
               	jmp	 <.plt>

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x70>
               	push	0xb
               	jmp	 <.plt>