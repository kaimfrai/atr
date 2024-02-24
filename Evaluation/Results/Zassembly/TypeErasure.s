
build/ZEvaluation/bin/TypeErasure:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x56e0>
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
               	mov	rax, qword ptr  <memset+0x56f0>
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
               	mov	rax, qword ptr  <memset+0x56f8>
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
               	cmp	qword ptr , 0x0 <memset+0x5700>
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
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	jmp	 <initializer for module Std>
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
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Int32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
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

<initializer for module Meta.Auto.Simd.UInt32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
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

<initializer for module Meta.Auto.Simd.UInt8>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5UInt8__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5UInt8__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.UInt32>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.UInt64>
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Array.Bounded>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
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

<_GLOBAL__sub_I_TypeErasure.cpp>:
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x128
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
               	movabs	r12, 0x180ec6d33cfd0aba
               	mov	qword ptr [rsp + 0x10], rdx
               	movsxd	rdi, edx
               	shl	rdi, 0x5
               	mov	rsi, qword ptr  <memset+0x5708>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	r15, rax
               	movsxd	rdx, ebx
               	movabs	rsi, -0x61c8864680b583eb
               	add	rsi, rdx
               	mov	rcx, rdx
               	shr	rcx, 0x1e
               	xor	rcx, rdx
               	movabs	r9, -0x40a7b892e31b1a47
               	imul	rcx, r9
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
               	imul	r8, r9
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
               	imul	rdx, r9
               	mov	rdi, rdx
               	shr	rdi, 0x1b
               	xor	rdi, rdx
               	imul	rdi, rcx
               	mov	r11, rdi
               	shr	r11, 0x1f
               	xor	r11, rdi
               	mov	rdx, rsi
               	shr	rdx, 0x1e
               	xor	rdx, rsi
               	imul	rdx, r9
               	mov	rsi, rdx
               	shr	rsi, 0x1b
               	xor	rsi, rdx
               	imul	rsi, rcx
               	mov	rcx, rsi
               	shr	rcx, 0x1f
               	xor	rcx, rsi
               	xor	edx, edx
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x80], rcx
               	mov	rsi, rcx
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x88], r11
               	mov	rdi, r11
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x60], r8
               	mov	r9, r10
               	xor	ebp, ebp
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
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L5>
<L4>:
               	bt	r12, rdx
               	jae	 <L6>
               	xor	rbp, r9
               	xor	r13, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L6>
<L5>:
               	mov	qword ptr [rsp + 0x90], r10
               	movabs	rax, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop	dword ptr [rax]
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
               	xor	rbp, r9
               	xor	r13, r8
               	xor	r14, rdi
               	xor	rbx, rsi
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
               	xor	rbp, r9
               	xor	r13, r8
               	xor	r14, rdi
               	xor	rbx, rsi
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
               	xor	rbp, r9
               	xor	r13, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x30], rsi
               	mov	rsi, rbx
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x40], rdi
               	mov	rdi, r14
               	xor	r8d, r8d
               	mov	qword ptr [rsp], r8
               	mov	r8, r13
               	mov	r9, rbp
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x38], r11
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
               	bt	r12, r10
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x40], rdi
               	xor	qword ptr [rsp + 0x30], rsi
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
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x40], rdi
               	xor	qword ptr [rsp + 0x30], rsi
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
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x40], rdi
               	xor	qword ptr [rsp + 0x30], rsi
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
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x40], rdi
               	xor	qword ptr [rsp + 0x30], rsi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0x68], rbp
               	mov	qword ptr [rsp + 0x58], r13
               	mov	qword ptr [rsp + 0x70], r14
               	mov	qword ptr [rsp + 0x78], rbx
               	mov	qword ptr [rsp + 0x50], r15
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, qword ptr [rsp + 0x30]
               	xor	r14d, r14d
               	mov	rdi, qword ptr [rsp + 0x40]
               	xor	r15d, r15d
               	mov	r8, qword ptr [rsp]
               	mov	r9, qword ptr [rsp + 0x38]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x48], r11
               	jmp	 <L28>
               	nop
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
               	bt	r12, r10
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x48], r9
               	xor	r15, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L30>
<L29>:
               	xor	r10d, r10d
               	jmp	 <L31>
               	nop
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
               	xor	qword ptr [rsp + 0x48], r9
               	xor	r15, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L33>
<L32>:
               	xor	eax, eax
               	jmp	 <L34>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x48], r9
               	xor	r15, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L36>
<L35>:
               	xor	eax, eax
               	jmp	 <L37>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x48], r9
               	xor	r15, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L39>
<L38>:
               	mov	eax, 0x40
               	nop
<L40>:
               	dec	rax
               	jne	 <L40>
               	mov	eax, 0x40
               	mov	rcx, qword ptr [rsp + 0x10]
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
               	vmovq	xmm0, r15
               	vmovq	xmm1, qword ptr [rsp]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	vmovq	xmm1, qword ptr [rsp + 0x58]
               	vmovq	xmm2, qword ptr [rsp + 0x60]
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
               	mov	qword ptr [rsp + 0x98], rax
               	xor	esi, esi
               	vmovd	eax, xmm1
               	movzx	eax, al
               	imul	ecx, eax, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	vpxor	xmm0, xmm0, xmm0
               	mov	rbp, qword ptr [rsp + 0x50]
               	vmovdqu	xmmword ptr [rbp + 0x8], xmm0
               	movzx	eax, al
               	lea	rcx,  <memset+0xf50>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
<L104>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rbx, qword ptr [rsp + 0x50]
<L118>:
               	test	rbx, rbx
               	je	 <L105>
               	mov	rdi, rbx
               	vmovdqa	xmmword ptr [rsp], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp]
<L105>:
               	vpxor	xmm1, xmm1, xmm1
               	xor	eax, eax
               	vucomiss	xmm0, xmm1
               	setne	al
               	add	rsp, 0x128
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L125>:
               	test	esi, esi
               	je	 <L106>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x100], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xe0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xc0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xa0], ymm0
               	mov	qword ptr [rsp + 0x10], rsi
               	mov	ebp, esi
               	mov	r13, qword ptr [rsp + 0x50]
               	jmp	 <L107>
               	nop	word ptr cs:[rax + rax]
<L108>:
               	vmovss	xmm0, dword ptr [rsp + 0xa4]
               	vmovss	dword ptr [rsp + 0xa8], xmm0
               	mov	ebx, 0x1
<L116>:
               	mov	eax, ebx
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0xa0]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r13, r15
<L107>:
               	mov	r14d, ebp
               	neg	r14d
               	and	r14d, ebp
               	mov	r15, r14
               	shl	r15, 0x5
               	add	r15, r13
               	test	r14d, r14d
               	je	 <L108>
               	mov	dword ptr [rsp], ebp
               	xor	ecx, ecx
               	mov	r12d, 0x1
               	mov	ebp, 0x1
               	jmp	 <L109>
<L111>:
               	mov	r12d, ebx
               	movsxd	rax, ebx
               	vmovss	dword ptr [rsp + 4*rax + 0xa0], xmm0
               	add	r13, 0x20
               	mov	ecx, 0xfffffffe
               	sub	ecx, ebp
               	lea	edx, [rbp + 0x1]
               	bsr	esi, edx
               	xor	esi, 0x1f
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	ebp, edx
               	cmp	r13, r15
               	je	 <L110>
<L109>:
               	mov	ebx, ecx
               	mov	rax, qword ptr [r13]
               	lea	rdi, [r13 + 0x18]
               	vzeroupper
               	call	qword ptr [rax]
               	mov	ecx, ebx
               	sub	ecx, r12d
               	jl	 <L111>
               	movsxd	rax, r12d
               	cmp	ecx, 0x1f
               	jb	 <L112>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vpblendd	xmm0, xmm0, xmmword ptr , 0xe <memset+0xf40> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0x100]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	word ptr cs:[rax + rax]
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
               	mov	ecx, ebx
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0xa0
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
               	mov	ebp, dword ptr [rsp]
               	sub	ebp, r14d
               	je	 <L115>
               	vmovss	dword ptr [rsp + 4*rax + 0xa4], xmm0
               	mov	r13, r15
               	test	ebx, ebx
               	jns	 <L116>
               	jmp	 <L107>
<L115>:
               	mov	rbx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0x10]
               	shl	rsi, 0x5
               	jne	 <L117>
               	jmp	 <L118>
<L106>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rbx, qword ptr [rsp + 0x50]
               	shl	rsi, 0x5
               	je	 <L118>
<L117>:
               	add	rsi, rbx
               	mov	r14, rbx
               	vmovdqa	xmmword ptr [rsp], xmm0
               	jmp	 <L119>
               	nop	word ptr cs:[rax + rax]
<L120>:
               	add	r14, 0x8
               	cmp	r14, rsi
               	je	 <L118>
<L119>:
               	mov	r12, rsi
               	mov	rax, qword ptr [r14]
               	add	r14, 0x18
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [rax + 0x10]
               	mov	r15, qword ptr [r14 - 0x8]
               	test	r15, r15
               	mov	rsi, r12
               	vmovdqa	xmm0, xmmword ptr [rsp]
               	je	 <L120>
               	lock
               	dec	dword ptr [r15 + 0x8]
               	jne	 <L120>
               	mov	rax, qword ptr [r15]
               	mov	rdi, r15
               	call	qword ptr [rax + 0x10]
               	vmovdqa	xmm0, xmmword ptr [rsp]
               	mov	rsi, r12
               	lock
               	dec	dword ptr [r15 + 0xc]
               	jne	 <L120>
               	mov	rax, qword ptr [r15]
               	mov	rdi, r15
               	call	qword ptr [rax + 0x18]
               	vmovdqa	xmm0, xmmword ptr [rsp]
               	mov	rsi, r12
               	jmp	 <L120>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
<L123>:
               	mov	rbx, rax
               	xor	edi, edi
               	vzeroupper
               	call	 <boost::type_erasure::binding<boost::mpl::vector<Bodies3D::has_ComputeVolume<float () const, boost::type_erasure::_self>, boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na>>::~binding()>
               	mov	rdi, rbx
               	call	 <__clang_call_terminate>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Circle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Circle (Bodies3D::Circle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Circle>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x20
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm1, ymmword ptr [rsp + 0x10]
<L127>:
               	mov	rsi, r13
               	vpxor	xmm0, xmm0, xmm0
<L129>:
               	vmovdqu	ymmword ptr [rax], ymm0
               	mov	qword ptr [rbp + 0x18], rax
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L121>
               	jmp	 <L122>
               	jmp	 <L123>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipse const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Ellipse (Bodies3D::Ellipse&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Ellipse>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x24
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
<L126>:
               	mov	rsi, r13
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	mov	dword ptr [rax + 0x20], 0x0
               	mov	qword ptr [rbp + 0x18], rax
               	inc	rsi
               	test	sil, 0x7
               	je	 <L122>
<L121>:
               	mov	r10, r15
               	vpsrlq	ymm1, ymm1, 0x8
               	cmp	qword ptr [rsp + 0x98], rsi
               	jne	 <L124>
               	jmp	 <L125>
               	jmp	 <L123>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Rectangle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Rectangle (Bodies3D::Rectangle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Rectangle>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x24
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
               	jmp	 <L126>
               	jmp	 <L123>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Square const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Square (Bodies3D::Square&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Square>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x20
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
               	jmp	 <L127>
               	jmp	 <L123>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Triangle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Triangle (Bodies3D::Triangle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Triangle>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x24
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
               	jmp	 <L126>
               	jmp	 <L123>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cube@Evaluation.CRTP.Cube const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cube@Evaluation.CRTP.Cube (Bodies3D::Cube@Evaluation.CRTP.Cube&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cube@Evaluation.CRTP.Cube>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x20
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
               	jmp	 <L127>
               	jmp	 <L123>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x28
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
<L128>:
               	mov	rsi, r13
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	mov	qword ptr [rax + 0x20], 0x0
               	mov	qword ptr [rbp + 0x18], rax
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L121>
<L122>:
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x88]
               	mov	r13, qword ptr [rsp + 0x90]
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0x10], rsi
               	mov	rsi, qword ptr [rsp + 0x80]
               	xor	rsi, rdx
               	xor	rdx, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x88], rcx
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x70]
               	mov	r9, qword ptr [rsp + 0x68]
               	xor	rcx, r9
               	mov	rdi, qword ptr [rsp + 0x78]
               	xor	rdi, r8
               	xor	r8, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x70], rcx
               	mov	r10, qword ptr [rsp]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x40]
               	mov	r11, qword ptr [rsp + 0x38]
               	xor	rcx, r11
               	mov	r12, qword ptr [rsp + 0x30]
               	xor	r12, r10
               	xor	r10, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x40], rcx
               	mov	rax, r15
               	shl	rax, 0x11
               	xor	r14, qword ptr [rsp + 0x48]
               	xor	rbx, r15
               	xor	r15, r14
               	xor	r14, rax
               	mov	qword ptr [rsp], r10
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	mov	r10, r15
               	lea	rcx, [r15 + 4*r15]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm0, rcx
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm1, rax
               	mov	qword ptr [rsp + 0x58], r8
               	lea	rax, [r8 + 4*r8]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm2, rax
               	mov	qword ptr [rsp + 0x60], rdx
               	lea	rax, [rdx + 4*rdx]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm3, rax
               	xor	r13, rsi
               	mov	qword ptr [rsp + 0x90], r13
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x80], rsi
               	mov	rsi, qword ptr [rsp + 0x10]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	xor	r9, rdi
               	mov	qword ptr [rsp + 0x68], r9
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x78], rdi
               	xor	r11, r12
               	mov	qword ptr [rsp + 0x38], r11
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x30], r12
               	xor	qword ptr [rsp + 0x48], rbx
               	rol	rbx, 0x2d
               	vpunpcklqdq	xmm1, xmm3, xmm2 # xmm1 = xmm3[0],xmm2[0]
               	vinserti128	ymm1, ymm1, xmm0, 0x1
               	cmp	qword ptr [rsp + 0x98], rsi
               	je	 <L125>
<L124>:
               	add	rbp, 0x20
               	vmovd	eax, xmm1
               	movzx	eax, al
               	imul	ecx, eax, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rbp + 0x8], xmm0
               	movzx	eax, al
               	lea	rcx,  <memset+0xf50>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	mov	r15, r10
               	jmp	rax
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x28
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
               	jmp	 <L128>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Head@Evaluation.CRTP.Head const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Head@Evaluation.CRTP.Head (Bodies3D::Head@Evaluation.CRTP.Head&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Head@Evaluation.CRTP.Head>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x60
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
               	mov	rsi, r13
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x40], ymm0
               	vmovdqu	ymmword ptr [rax + 0x20], ymm0
               	jmp	 <L129>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cone@Evaluation.CRTP.Cone const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cone@Evaluation.CRTP.Cone (Bodies3D::Cone@Evaluation.CRTP.Cone&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cone@Evaluation.CRTP.Cone>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x24
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
               	jmp	 <L126>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Sphere@Evaluation.CRTP.Sphere const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Sphere@Evaluation.CRTP.Sphere (Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x20
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
               	jmp	 <L127>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x28
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
               	jmp	 <L128>
               	vmovdqu	ymmword ptr [rsp + 0x10], ymm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>::value>
               	mov	qword ptr [rbp], rax
               	mov	edi, 0x24
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x10]
               	jmp	 <L126>
               	jmp	 <L123>
               	jmp	 <L123>
               	jmp	 <L123>
               	jmp	 <L123>
               	jmp	 <L123>
               	jmp	 <L123>
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Head@Evaluation.CRTP.Head const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Head@Evaluation.CRTP.Head const&)>::value(boost::type_erasure::detail::storage const&)>:
<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Sphere@Evaluation.CRTP.Sphere const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <memset+0xf94>
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
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf94>
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
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf84>
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
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf88>
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
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf8c>
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
               	vmovss	xmm0, dword ptr [rax + 0x20]
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
               	vmovss	xmm0, dword ptr [rax + 0x1c]
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
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf90>
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
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Rectangle const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Rectangle const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	ret
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipse const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Ellipse const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf88>
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
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf88>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x56e8>
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
