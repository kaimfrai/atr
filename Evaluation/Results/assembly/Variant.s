
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
               	call	qword ptr  <memset+0x7260>
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
               	mov	rax, qword ptr  <memset+0x7270>
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
               	mov	rax, qword ptr  <memset+0x7278>
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
               	cmp	qword ptr , 0x0 <memset+0x7280>
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

<_GLOBAL__sub_I_Variant.cpp>:
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
               	sub	rsp, 0x358
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
               	mov	qword ptr [rsp + 0x2d0], rdx
               	movsxd	rax, edx
               	imul	rdi, rax, 0x64
               	mov	rsi, qword ptr  <memset+0x7288>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x1f0], rax
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
               	mov	rcx, rax
               	shr	rcx, 0x1f
               	xor	rcx, rax
               	xor	edi, edi
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x318], rcx
               	mov	rax, rcx
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x320], r10
               	mov	rcx, r10
               	xor	r15d, r15d
               	mov	rdx, r8
               	mov	qword ptr [rsp + 0x208], r8
               	mov	qword ptr [rsp + 0x328], r9
               	mov	rsi, r9
               	xor	r9d, r9d
               	jmp	 <L4>
               	nop	dword ptr [rax + rax]
<L6>:
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
               	je	 <L5>
<L4>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L6>
               	xor	r9, rsi
               	xor	r15, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L6>
<L5>:
               	xor	edi, edi
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
<L9>:
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
               	je	 <L8>
<L7>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L9>
               	xor	r9, rsi
               	xor	r15, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
<L12>:
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
               	je	 <L11>
<L10>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L12>
               	xor	r9, rsi
               	xor	r15, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
<L15>:
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
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	r9, rsi
               	xor	r15, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	xor	r10d, r10d
               	mov	rax, r11
               	xor	r12d, r12d
               	mov	rcx, r14
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x200], r15
               	mov	rdx, r15
               	mov	rsi, r9
               	xor	r15d, r15d
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
               	xor	r15, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r10, rax
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
               	xor	r15, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r10, rax
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
               	xor	r15, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r10, rax
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
               	xor	r15, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r10, rax
               	jmp	 <L27>
<L26>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1d0], rax
               	mov	rax, r10
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x1c8], rcx
               	mov	rcx, r12
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x68], rdx
               	mov	rdx, r13
               	mov	rsi, r15
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1c0], r8
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1d0], rax
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
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1d0], rax
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
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1d0], rax
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
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1d0], rax
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b8], rax
               	mov	rax, qword ptr [rsp + 0x1d0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x1b0], rcx
               	mov	rcx, qword ptr [rsp + 0x1c8]
               	xor	edx, edx
               	mov	qword ptr [rsp], rdx
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1a8], r8
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
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
               	jmp	 <L42>
<L41>:
               	xor	edi, edi
               	jmp	 <L43>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
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
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
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
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a0], rax
               	mov	rax, qword ptr [rsp + 0x1b8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x198], rcx
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x28], rdx
               	mov	rdx, qword ptr [rsp]
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x190], r8
               	jmp	 <L52>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
               	jmp	 <L54>
<L53>:
               	xor	edi, edi
               	jmp	 <L55>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
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
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
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
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x188], rax
               	mov	rax, qword ptr [rsp + 0x1a0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x180], rcx
               	mov	rcx, qword ptr [rsp + 0x198]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0x190]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x178], r8
               	jmp	 <L64>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x188], rax
               	jmp	 <L66>
<L65>:
               	xor	edi, edi
               	jmp	 <L67>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x188], rax
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
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x188], rax
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
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x188], rax
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x170], rax
               	mov	rax, qword ptr [rsp + 0x188]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x168], rcx
               	mov	rcx, qword ptr [rsp + 0x180]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x18], rdx
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0x178]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x160], r8
               	jmp	 <L76>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x170], rax
               	jmp	 <L78>
<L77>:
               	xor	edi, edi
               	jmp	 <L79>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x170], rax
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
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x170], rax
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
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x170], rax
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x158], rax
               	mov	rax, qword ptr [rsp + 0x170]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x150], rcx
               	mov	rcx, qword ptr [rsp + 0x168]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x10], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x160]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x148], r8
               	jmp	 <L88>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x158], rax
               	jmp	 <L90>
<L89>:
               	xor	edi, edi
               	jmp	 <L91>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x158], rax
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
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x158], rax
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
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x158], rax
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x140], rax
               	mov	rax, qword ptr [rsp + 0x158]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x138], rcx
               	mov	rcx, qword ptr [rsp + 0x150]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x8], rdx
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x148]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x130], r8
               	jmp	 <L100>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L102>
<L101>:
               	xor	edi, edi
               	jmp	 <L103>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x140], rax
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
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x140], rax
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
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x128], rax
               	mov	rax, qword ptr [rsp + 0x140]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x120], rcx
               	mov	rcx, qword ptr [rsp + 0x138]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x60], rdx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0x130]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x118], r8
               	jmp	 <L112>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x128], rax
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
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x128], rax
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
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x128], rax
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
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x128], rax
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x110], rax
               	mov	rax, qword ptr [rsp + 0x128]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x108], rcx
               	mov	rcx, qword ptr [rsp + 0x120]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x58], rdx
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rsi, qword ptr [rsp + 0x118]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x100], r8
               	jmp	 <L124>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x110], rax
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
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x110], rax
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
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x110], rax
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
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x110], rax
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	mov	rax, qword ptr [rsp + 0x110]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	rcx, qword ptr [rsp + 0x108]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x50], rdx
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xe8], r8
               	jmp	 <L136>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
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
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
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
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
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
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
               	jmp	 <L147>
<L146>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	mov	rax, qword ptr [rsp + 0xf8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xd8], rcx
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x48], rdx
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0xe8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xd0], r8
               	jmp	 <L148>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
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
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
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
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
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
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc8], rax
               	mov	rax, qword ptr [rsp + 0xe0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xc0], rcx
               	mov	rcx, qword ptr [rsp + 0xd8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x40], rdx
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xb8], r8
               	jmp	 <L160>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb0], rax
               	mov	rax, qword ptr [rsp + 0xc8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xa8], rcx
               	mov	rcx, qword ptr [rsp + 0xc0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x38], rdx
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0xb8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa0], r8
               	jmp	 <L172>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	mov	rax, qword ptr [rsp + 0xb0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x90], rcx
               	mov	rcx, qword ptr [rsp + 0xa8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x30], rdx
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0xa0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x88], r8
               	jmp	 <L184>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
               	jmp	 <L195>
<L194>:
               	mov	qword ptr [rsp + 0x2c8], rbx
               	mov	qword ptr [rsp + 0x2f8], r10
               	mov	qword ptr [rsp + 0x300], r9
               	xor	r10d, r10d
               	xor	ebp, ebp
               	mov	rax, qword ptr [rsp + 0x98]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x70], rcx
               	mov	rcx, qword ptr [rsp + 0x90]
               	xor	ebx, ebx
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, qword ptr [rsp + 0x88]
               	xor	r9d, r9d
               	jmp	 <L196>
               	nop	word ptr [rax + rax]
<L198>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L197>
<L196>:
               	movabs	rdi, 0x180ec6d33cfd0aba
               	bt	rdi, r10
               	jae	 <L198>
               	xor	r9, rsi
               	xor	rbx, rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	rbp, rax
               	jmp	 <L198>
<L197>:
               	xor	r10d, r10d
               	jmp	 <L199>
               	nop	dword ptr [rax + rax]
<L201>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L200>
<L199>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	bt	rdi, r10
               	jae	 <L201>
               	xor	r9, rsi
               	xor	rbx, rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	rbp, rax
               	jmp	 <L201>
<L200>:
               	mov	qword ptr [rsp + 0x1e8], r9
               	xor	edi, edi
               	jmp	 <L202>
               	nop
<L204>:
               	mov	r10, rdx
               	shl	r10, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r10
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L203>
<L202>:
               	mov	r9, qword ptr [rsp + 0x70]
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L204>
               	xor	qword ptr [rsp + 0x1e8], rsi
               	xor	rbx, rdx
               	mov	r8, r9
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x70], r8
               	xor	rbp, rax
               	jmp	 <L204>
<L203>:
               	xor	edi, edi
               	jmp	 <L205>
               	nop	word ptr [rax + rax]
<L207>:
               	mov	r10, rdx
               	shl	r10, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r10
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L206>
<L205>:
               	mov	r9, qword ptr [rsp + 0x70]
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L207>
               	xor	qword ptr [rsp + 0x1e8], rsi
               	xor	rbx, rdx
               	mov	r8, r9
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x70], r8
               	xor	rbp, rax
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x2f0], r12
               	mov	qword ptr [rsp + 0x308], r14
               	mov	qword ptr [rsp + 0x310], r11
               	xor	r10d, r10d
               	xor	edx, edx
               	mov	rcx, rbp
               	xor	esi, esi
               	mov	r11, qword ptr [rsp + 0x70]
               	xor	r12d, r12d
               	mov	rax, rbx
               	mov	qword ptr [rsp + 0x1e0], rbx
               	mov	r14, rbx
               	mov	rbx, qword ptr [rsp + 0x1e8]
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L208>
               	nop	dword ptr [rax]
<L210>:
               	mov	rdi, r14
               	shl	rdi, 0x11
               	xor	r11, rbx
               	xor	rcx, r14
               	xor	r14, r11
               	xor	rbx, rcx
               	xor	r11, rdi
               	rol	rcx, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L209>
<L208>:
               	bt	rax, r10
               	jae	 <L210>
               	xor	qword ptr [rsp + 0x80], rbx
               	xor	r12, r14
               	xor	rsi, r11
               	xor	rdx, rcx
               	jmp	 <L210>
<L209>:
               	xor	r10d, r10d
               	movabs	rax, -0x2a59ed990f36c6d4
               	jmp	 <L211>
               	nop	dword ptr [rax + rax]
<L213>:
               	mov	rdi, r14
               	shl	rdi, 0x11
               	xor	r11, rbx
               	xor	rcx, r14
               	xor	r14, r11
               	xor	rbx, rcx
               	xor	r11, rdi
               	rol	rcx, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L212>
<L211>:
               	bt	rax, r10
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x80], rbx
               	xor	r12, r14
               	xor	rsi, r11
               	xor	rdx, rcx
               	jmp	 <L213>
<L212>:
               	xor	edi, edi
               	movabs	rax, -0x56a7d9e71fc03656
               	jmp	 <L214>
               	nop	word ptr [rax + rax]
<L216>:
               	mov	r10, r14
               	shl	r10, 0x11
               	xor	r11, rbx
               	xor	rcx, r14
               	xor	r14, r11
               	xor	rbx, rcx
               	xor	r11, r10
               	rol	rcx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L215>
<L214>:
               	bt	rax, rdi
               	jae	 <L216>
               	xor	qword ptr [rsp + 0x80], rbx
               	xor	r12, r14
               	xor	rsi, r11
               	xor	rdx, rcx
               	jmp	 <L216>
<L215>:
               	xor	edi, edi
               	movabs	rax, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop	word ptr [rax + rax]
<L219>:
               	mov	r10, r14
               	shl	r10, 0x11
               	xor	r11, rbx
               	xor	rcx, r14
               	xor	r14, r11
               	xor	rbx, rcx
               	xor	r11, r10
               	rol	rcx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L218>
<L217>:
               	bt	rax, rdi
               	jae	 <L219>
               	xor	qword ptr [rsp + 0x80], rbx
               	xor	r12, r14
               	xor	rsi, r11
               	xor	rdx, rcx
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x2e8], r15
               	mov	qword ptr [rsp + 0x1f8], r13
               	xor	edi, edi
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x2e0], rdx
               	mov	rcx, rdx
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x2d8], rsi
               	mov	r11, rsi
               	xor	r8d, r8d
               	mov	rsi, r12
               	mov	r10, qword ptr [rsp + 0x80]
               	xor	r15d, r15d
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L220>
               	nop	word ptr cs:[rax + rax]
<L222>:
               	mov	rbx, rsi
               	shl	rbx, 0x11
               	xor	r11, r10
               	xor	rcx, rsi
               	xor	rsi, r11
               	xor	r10, rcx
               	xor	r11, rbx
               	rol	rcx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L221>
<L220>:
               	bt	rax, rdi
               	jae	 <L222>
               	xor	r15, r10
               	xor	r8, rsi
               	xor	rdx, r11
               	xor	r14, rcx
               	jmp	 <L222>
<L221>:
               	xor	edi, edi
               	movabs	rax, -0x2a59ed990f36c6d4
               	jmp	 <L223>
               	nop	word ptr cs:[rax + rax]
<L225>:
               	mov	rbx, rsi
               	shl	rbx, 0x11
               	xor	r11, r10
               	xor	rcx, rsi
               	xor	rsi, r11
               	xor	r10, rcx
               	xor	r11, rbx
               	rol	rcx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L224>
<L223>:
               	bt	rax, rdi
               	jae	 <L225>
               	xor	r15, r10
               	xor	r8, rsi
               	xor	rdx, r11
               	xor	r14, rcx
               	jmp	 <L225>
<L224>:
               	xor	edi, edi
               	movabs	rax, -0x56a7d9e71fc03656
               	jmp	 <L226>
               	nop	word ptr cs:[rax + rax]
<L228>:
               	mov	rbx, rsi
               	shl	rbx, 0x11
               	xor	r11, r10
               	xor	rcx, rsi
               	xor	rsi, r11
               	xor	r10, rcx
               	xor	r11, rbx
               	rol	rcx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L227>
<L226>:
               	bt	rax, rdi
               	jae	 <L228>
               	xor	r15, r10
               	xor	r8, rsi
               	xor	rdx, r11
               	xor	r14, rcx
               	jmp	 <L228>
<L227>:
               	xor	edi, edi
               	movabs	rax, 0x39abdc4529b1661c
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rbx, rsi
               	shl	rbx, 0x11
               	xor	r11, r10
               	xor	rcx, rsi
               	xor	rsi, r11
               	xor	r10, rcx
               	xor	r11, rbx
               	rol	rcx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L230>
<L229>:
               	bt	rax, rdi
               	jae	 <L231>
               	xor	r15, r10
               	xor	r8, rsi
               	xor	rdx, r11
               	xor	r14, rcx
               	jmp	 <L231>
<L230>:
               	mov	rcx, qword ptr [rsp + 0x208]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rbx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x220], rbx
               	mov	rcx, qword ptr [rsp + 0x200]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x228], rcx
               	mov	rcx, qword ptr [rsp + 0x1f8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x230], rcx
               	lea	rcx, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x238], rcx
               	mov	rax, qword ptr [rsp]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x240], rcx
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x248], rcx
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x250], rcx
               	lea	rcx, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x258], rcx
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x260], rcx
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x268], rcx
               	mov	rax, qword ptr [rsp + 0x60]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x270], rcx
               	lea	rcx, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x278], rcx
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x280], rcx
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	r13, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x288], r13
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x290], rcx
               	lea	rcx, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a0], rcx
               	mov	rax, qword ptr [rsp + 0x1e0]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a8], rcx
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	lea	r9, [rcx + 8*rcx]
               	lea	rcx, [r8 + 4*r8]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2b0], r9
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	rcx, qword ptr [rsp + 0x2d0]
               	test	ecx, ecx
               	je	 <L232>
               	mov	eax, ecx
               	mov	rcx, qword ptr [rsp + 0x1f0]
               	add	rcx, 0x60
               	vpbroadcastq	ymm0, qword ptr  <memset+0xd20>
               	xor	r10d, r10d
               	vpbroadcastw	xmm1, word ptr  <memset+0xd9c>
               	lea	r11,  <memset+0xda0>
               	vmovaps	ymm2, ymmword ptr  <memset+0xd60>
               	vmovq	xmm3, qword ptr  <memset+0xd40>
               	vpmovzxbq	xmm4, word ptr  <memset+0xd9e>
               	vmovdqa	xmm5, xmmword ptr  <memset+0xd30>
               	vbroadcastss	xmm6, dword ptr  <memset+0xd80>
               	mov	qword ptr [rsp + 0x340], rax
               	jmp	 <L233>
               	nop	dword ptr [rax]
<L239>:
               	mov	r9, qword ptr [rsp + 0x208]
               	mov	rsi, r9
               	shl	rsi, 0x11
               	mov	rdi, qword ptr [rsp + 0x328]
               	mov	r11, qword ptr [rsp + 0x320]
               	xor	r11, rdi
               	mov	rbx, qword ptr [rsp + 0x318]
               	xor	rbx, r9
               	xor	r9, r11
               	mov	qword ptr [rsp + 0x208], r9
               	xor	rdi, rbx
               	mov	qword ptr [rsp + 0x328], rdi
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x318], rbx
               	xor	r11, rsi
               	mov	qword ptr [rsp + 0x320], r11
               	mov	rbx, qword ptr [rsp + 0x200]
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	mov	r11, qword ptr [rsp + 0x308]
               	mov	qword ptr [rsp + 0x218], rbp
               	mov	r9, qword ptr [rsp + 0x300]
               	xor	r11, r9
               	mov	rdi, qword ptr [rsp + 0x310]
               	xor	rdi, rbx
               	xor	rbx, r11
               	mov	qword ptr [rsp + 0x200], rbx
               	xor	r9, rdi
               	mov	qword ptr [rsp + 0x300], r9
               	xor	r11, rsi
               	mov	qword ptr [rsp + 0x308], r11
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x310], rdi
               	mov	rbx, qword ptr [rsp + 0x1f8]
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	mov	r9, qword ptr [rsp + 0x2f0]
               	mov	r11, qword ptr [rsp + 0x2e8]
               	xor	r9, r11
               	mov	rdi, qword ptr [rsp + 0x2f8]
               	xor	rdi, rbx
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x1f8], rbx
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x2e8], r11
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x2f0], r9
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x2f8], rdi
               	mov	rbp, qword ptr [rsp + 0x68]
               	mov	rsi, rbp
               	shl	rsi, 0x11
               	mov	r9, qword ptr [rsp + 0x1c8]
               	mov	r11, qword ptr [rsp + 0x1c0]
               	xor	r9, r11
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	xor	rdi, rbp
               	xor	rbp, r9
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x1c0], r11
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x1c8], r9
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x1d0], rdi
               	mov	rbx, qword ptr [rsp]
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	mov	r9, qword ptr [rsp + 0x1b0]
               	mov	r11, qword ptr [rsp + 0x1a8]
               	xor	r9, r11
               	mov	rdi, qword ptr [rsp + 0x1b8]
               	xor	rdi, rbx
               	xor	rbx, r9
               	mov	qword ptr [rsp], rbx
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x1a8], r11
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x1b8], rdi
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x1b0], r9
               	mov	rbx, qword ptr [rsp + 0x28]
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	mov	r9, qword ptr [rsp + 0x198]
               	mov	r11, qword ptr [rsp + 0x190]
               	xor	r9, r11
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	xor	rdi, rbx
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x28], rbx
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x190], r11
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x198], r9
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x1a0], rdi
               	mov	rbx, qword ptr [rsp + 0x20]
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	mov	r9, qword ptr [rsp + 0x180]
               	mov	r11, qword ptr [rsp + 0x178]
               	xor	r9, r11
               	mov	rdi, qword ptr [rsp + 0x188]
               	xor	rdi, rbx
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x20], rbx
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x178], r11
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x180], r9
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x188], rdi
               	mov	rbx, qword ptr [rsp + 0x18]
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	mov	r9, qword ptr [rsp + 0x168]
               	mov	r11, qword ptr [rsp + 0x160]
               	xor	r9, r11
               	mov	rdi, qword ptr [rsp + 0x170]
               	xor	rdi, rbx
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x18], rbx
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x160], r11
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x168], r9
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x170], rdi
               	mov	rbx, qword ptr [rsp + 0x10]
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	mov	r9, qword ptr [rsp + 0x150]
               	mov	r11, qword ptr [rsp + 0x148]
               	xor	r9, r11
               	mov	rdi, qword ptr [rsp + 0x158]
               	xor	rdi, rbx
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x10], rbx
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x148], r11
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x158], rdi
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x150], r9
               	mov	rbx, qword ptr [rsp + 0x8]
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	mov	r9, qword ptr [rsp + 0x138]
               	mov	r11, qword ptr [rsp + 0x130]
               	xor	r9, r11
               	mov	rdi, qword ptr [rsp + 0x140]
               	xor	rdi, rbx
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x8], rbx
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x130], r11
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x138], r9
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x140], rdi
               	mov	qword ptr [rsp + 0x210], r12
               	mov	r13, qword ptr [rsp + 0x60]
               	mov	rsi, r13
               	shl	rsi, 0x11
               	mov	r9, qword ptr [rsp + 0x120]
               	mov	rdi, qword ptr [rsp + 0x118]
               	mov	qword ptr [rsp + 0x350], rcx
               	mov	rcx, rdi
               	xor	r9, rdi
               	mov	rdi, qword ptr [rsp + 0x128]
               	xor	rdi, r13
               	xor	r13, r9
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x118], rcx
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x120], r9
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x128], rdi
               	mov	r12, qword ptr [rsp + 0x58]
               	mov	rsi, r12
               	shl	rsi, 0x11
               	mov	rdi, qword ptr [rsp + 0x108]
               	mov	rax, qword ptr [rsp + 0x100]
               	xor	rdi, rax
               	mov	rcx, qword ptr [rsp + 0x110]
               	xor	rcx, r12
               	xor	r12, rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x100], rax
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x108], rdi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x110], rcx
               	mov	qword ptr [rsp + 0x338], r14
               	mov	qword ptr [rsp + 0x330], r15
               	mov	r15, qword ptr [rsp + 0x50]
               	mov	rsi, r15
               	shl	rsi, 0x11
               	mov	rcx, qword ptr [rsp + 0xf0]
               	mov	rdi, qword ptr [rsp + 0xe8]
               	xor	rcx, rdi
               	mov	rax, qword ptr [rsp + 0xf8]
               	xor	rax, r15
               	xor	r15, rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xe8], rdi
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0xf8], rax
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	rbx, qword ptr [rsp + 0x48]
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	mov	rcx, qword ptr [rsp + 0xd8]
               	mov	rdi, qword ptr [rsp + 0xd0]
               	xor	rcx, rdi
               	mov	rax, qword ptr [rsp + 0xe0]
               	xor	rax, rbx
               	xor	rbx, rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xd0], rdi
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0xd8], rcx
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0xe0], rax
               	mov	r11, qword ptr [rsp + 0x40]
               	mov	rsi, r11
               	shl	rsi, 0x11
               	mov	rcx, qword ptr [rsp + 0xc0]
               	mov	rdi, qword ptr [rsp + 0xb8]
               	xor	rcx, rdi
               	mov	rax, qword ptr [rsp + 0xc8]
               	xor	rax, r11
               	xor	r11, rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0xc0], rcx
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0xc8], rax
               	mov	qword ptr [rsp + 0x348], r10
               	mov	r10, qword ptr [rsp + 0x70]
               	mov	r9, qword ptr [rsp + 0x38]
               	mov	rsi, r9
               	shl	rsi, 0x11
               	mov	rcx, qword ptr [rsp + 0xa8]
               	mov	rdi, qword ptr [rsp + 0xa0]
               	xor	rcx, rdi
               	mov	rax, qword ptr [rsp + 0xb0]
               	xor	rax, r9
               	xor	r9, rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xa0], rdi
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0xa8], rcx
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0xb0], rax
               	mov	r14, r8
               	mov	r8, rdx
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, rdx
               	shl	rsi, 0x11
               	mov	rcx, qword ptr [rsp + 0x90]
               	mov	rdi, qword ptr [rsp + 0x88]
               	xor	rcx, rdi
               	mov	rax, qword ptr [rsp + 0x98]
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x88], rdi
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x98], rax
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x90], rcx
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	shl	rsi, 0x11
               	mov	rcx, qword ptr [rsp + 0x1e8]
               	xor	r10, rcx
               	mov	rax, qword ptr [rsp + 0x1e0]
               	xor	qword ptr [rsp + 0x218], rax
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	rcx, qword ptr [rsp + 0x218]
               	mov	qword ptr [rsp + 0x1e8], rcx
               	xor	r10, rsi
               	mov	qword ptr [rsp + 0x70], r10
               	rol	qword ptr [rsp + 0x218], 0x2d
               	mov	rsi, qword ptr [rsp + 0x210]
               	shl	rsi, 0x11
               	mov	rcx, qword ptr [rsp + 0x2d8]
               	mov	rdi, qword ptr [rsp + 0x80]
               	xor	rcx, rdi
               	mov	rax, qword ptr [rsp + 0x2e0]
               	xor	rax, qword ptr [rsp + 0x210]
               	xor	qword ptr [rsp + 0x210], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x80], rdi
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x2d8], rcx
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x2e0], rax
               	mov	rsi, r14
               	shl	rsi, 0x11
               	xor	r8, qword ptr [rsp + 0x330]
               	xor	qword ptr [rsp + 0x338], r14
               	xor	r14, r8
               	xor	r8, rsi
               	mov	rax, qword ptr [rsp + 0x208]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	r10, [rsi + 8*rsi]
               	mov	rax, qword ptr [rsp + 0x200]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	rdi, [rsi + 8*rsi]
               	mov	rax, qword ptr [rsp + 0x1f8]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x68], rbp
               	lea	rsi, [4*rbp]
               	add	rsi, rbp
               	rol	rsi, 0x7
               	lea	rcx, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x220], r10
               	mov	rbp, r10
               	mov	qword ptr [rsp + 0x228], rdi
               	mov	rsi, qword ptr [rsp]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x230], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x238], rcx
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	r10, [rax + 4*rax]
               	rol	r10, 0x7
               	mov	qword ptr [rsp + 0x240], rsi
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	r10, [r10 + 8*r10]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x248], rdi
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x250], r10
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	r10, [rax + 4*rax]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x258], rsi
               	mov	qword ptr [rsp + 0x60], r13
               	lea	rsi, [4*r13]
               	add	rsi, r13
               	mov	rcx, qword ptr [rsp + 0x210]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x260], rdi
               	mov	qword ptr [rsp + 0x58], r12
               	lea	rdi, [r12 + 4*r12]
               	rol	rdi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x268], r10
               	mov	qword ptr [rsp + 0x50], r15
               	lea	r10, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0x330]
               	mov	rax, qword ptr [rsp + 0x338]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x270], rsi
               	mov	qword ptr [rsp + 0x48], rbx
               	lea	rsi, [rbx + 4*rbx]
               	mov	rbx, rbp
               	rol	rsi, 0x7
               	lea	r13, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x278], rdi
               	mov	qword ptr [rsp + 0x40], r11
               	lea	rsi, [r11 + 4*r11]
               	lea	r11,  <memset+0xda0>
               	mov	rbp, qword ptr [rsp + 0x218]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x280], r10
               	mov	r10, qword ptr [rsp + 0x348]
               	mov	qword ptr [rsp + 0x38], r9
               	lea	rdi, [r9 + 4*r9]
               	rol	rdi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x288], r13
               	mov	qword ptr [rsp + 0x290], rsi
               	mov	qword ptr [rsp + 0x30], rdx
               	lea	rsi, [rdx + 4*rdx]
               	mov	rdx, r8
               	mov	r8, r14
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x298], rdi
               	mov	rdi, qword ptr [rsp + 0x1e0]
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x2a0], rsi
               	mov	r12, rcx
               	lea	rsi, [rcx + 4*rcx]
               	mov	rcx, qword ptr [rsp + 0x350]
               	rol	rsi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	lea	r14, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2a8], rdi
               	lea	rsi, [r8 + 4*r8]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	r9, r14
               	mov	qword ptr [rsp + 0x2b0], r14
               	mov	qword ptr [rsp + 0x2b8], rsi
               	xor	r15, rax
               	rol	rax, 0x2d
               	mov	r14, rax
               	mov	rax, qword ptr [rsp + 0x340]
               	add	rcx, 0x64
               	cmp	rax, r10
               	je	 <L234>
<L233>:
               	vmovdqu	ymm7, ymmword ptr [rsp + 0x228]
               	vmovdqu	ymm8, ymmword ptr [rsp + 0x248]
               	vpand	ymm9, ymm8, ymm0
               	vpand	ymm10, ymm7, ymm0
               	vpackusdw	ymm9, ymm10, ymm9
               	vextracti128	xmm10, ymm9, 0x1
               	vpackusdw	xmm9, xmm9, xmm10
               	vpshufd	xmm9, xmm9, 0xd8        # xmm9 = xmm9[0,2,1,3]
               	vpackuswb	xmm10, xmm9, xmm9
               	vmovdqu	xmm9, xmmword ptr [rsp + 0x268]
               	vpshufb	xmm9, xmm9, xmm1
               	movzx	esi, bl
               	imul	esi, esi, 0x4f
               	shr	esi, 0xa
               	lea	edi, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*rdi]
               	sub	bl, sil
               	movzx	esi, bl
               	movsxd	rsi, dword ptr [r11 + 4*rsi]
               	add	rsi, r11
               	jmp	rsi
               	mov	byte ptr [rcx], 0x0
               	jmp	 <L235>
               	mov	byte ptr [rcx], 0xb
               	jmp	 <L236>
               	vpextrb	esi, xmm10, 0x7
               	vcvtsi2ss	xmm11, xmm14, esi
               	mov	byte ptr [rcx], 0x4
               	vmovss	dword ptr [rcx - 0x40], xmm11
               	vpunpcklbw	xmm9, xmm10, xmm9 # xmm9 = xmm10[0],xmm9[0],xmm10[1],xmm9[1],xmm10[2],xmm9[2],xmm10[3],xmm9[3],xmm10[4],xmm9[4],xmm10[5],xmm9[5],xmm10[6],xmm9[6],xmm10[7],xmm9[7]
               	vpshufb	xmm9, xmm9, xmm3
               	vpmovzxbd	ymm9, xmm9      # ymm9 = xmm9[0],zero,zero,zero,xmm9[1],zero,zero,zero,xmm9[2],zero,zero,zero,xmm9[3],zero,zero,zero,xmm9[4],zero,zero,zero,xmm9[5],zero,zero,zero,xmm9[6],zero,zero,zero,xmm9[7],zero,zero,zero
               	jmp	 <L237>
               	mov	byte ptr [rcx], 0xc
               	vpmovzxbd	ymm9, xmm10     # ymm9 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm9, ymm9
               	vpermilps	ymm10, ymm9, ymm2
               	vmovups	ymmword ptr [rcx - 0x60], ymm10
               	vmovdqu	xmm10, xmmword ptr [rsp + 0x278]
               	vpshufb	xmm10, xmm10, xmm5
               	vcvtdq2ps	xmm10, xmm10
               	movzx	esi, r13b
               	vcvtsi2ss	xmm11, xmm14, esi
               	vmovlps	qword ptr [rcx - 0x40], xmm10
               	vmovss	dword ptr [rcx - 0x38], xmm11
               	vshufps	xmm9, xmm9, xmm9, 0xff  # xmm9 = xmm9[3,3,3,3]
               	vmovss	dword ptr [rcx - 0x34], xmm9
               	vmovups	xmm12, xmmword ptr [rsp + 0x290]
               	vshufps	xmm12, xmm12, xmmword ptr [rsp + 0x2a0], 0x88 # xmm12 = xmm12[0,2],mem[0,2]
               	vandps	xmm12, xmm12, xmm6
               	vcvtdq2ps	xmm12, xmm12
               	vshufps	xmm13, xmm12, xmm12, 0xd8 # xmm13 = xmm12[0,2,1,3]
               	vmovups	xmmword ptr [rcx - 0x30], xmm13
               	vmovlps	qword ptr [rcx - 0x20], xmm10
               	movzx	esi, r9b
               	vcvtsi2ss	xmm10, xmm14, esi
               	vmovss	dword ptr [rcx - 0x18], xmm11
               	vmovss	dword ptr [rcx - 0x14], xmm9
               	vmovss	dword ptr [rcx - 0x10], xmm10
               	vshufps	xmm9, xmm12, xmm12, 0xe6 # xmm9 = xmm12[2,1,2,3]
               	vmovlps	qword ptr [rcx - 0xc], xmm9
               	vextractps	dword ptr [rcx - 0x4], xmm12, 0x3
               	inc	r10
               	test	r10b, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	mov	byte ptr [rcx], 0x9
               	jmp	 <L240>
               	mov	byte ptr [rcx], 0x2
               	jmp	 <L241>
               	mov	byte ptr [rcx], 0x3
               	jmp	 <L235>
               	mov	byte ptr [rcx], 0x7
               	vmovd	esi, xmm9
               	vpinsrb	xmm11, xmm10, esi, 0x7
               	vpmovzxbd	ymm11, xmm11    # ymm11 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero,xmm11[4],zero,zero,zero,xmm11[5],zero,zero,zero,xmm11[6],zero,zero,zero,xmm11[7],zero,zero,zero
               	vcvtdq2ps	ymm11, ymm11
               	vpermilps	ymm11, ymm11, ymm2
               	vpsrlq	xmm10, xmm10, 0x38
               	vpblendvb	xmm9, xmm9, xmm10, xmm4
               	vmovups	ymmword ptr [rcx - 0x60], ymm11
               	jmp	 <L242>
               	mov	byte ptr [rcx], 0x1
<L241>:
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm2
               	vmovups	ymmword ptr [rcx - 0x60], ymm10
               	vpextrb	esi, xmm9, 0x0
               	jmp	 <L243>
               	mov	byte ptr [rcx], 0x5
               	jmp	 <L235>
               	mov	byte ptr [rcx], 0x6
<L236>:
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm2
               	vmovups	ymmword ptr [rcx - 0x60], ymm10
<L242>:
               	vpmovzxbd	xmm9, xmm9      # xmm9 = xmm9[0],zero,zero,zero,xmm9[1],zero,zero,zero,xmm9[2],zero,zero,zero,xmm9[3],zero,zero,zero
               	vcvtdq2ps	xmm9, xmm9
               	vmovlps	qword ptr [rcx - 0x40], xmm9
               	inc	r10
               	test	r10b, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	mov	byte ptr [rcx], 0xa
<L240>:
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm2
               	vmovups	ymmword ptr [rcx - 0x60], ymm10
               	vpextrb	esi, xmm9, 0x1
<L243>:
               	vcvtsi2ss	xmm9, xmm14, esi
               	vmovss	dword ptr [rcx - 0x40], xmm9
               	inc	r10
               	test	r10b, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	mov	byte ptr [rcx], 0x8
<L235>:
               	vpmovzxbd	ymm9, xmm10     # ymm9 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
<L237>:
               	vcvtdq2ps	ymm9, ymm9
               	vpermilps	ymm9, ymm9, ymm2
               	vmovups	ymmword ptr [rcx - 0x60], ymm9
               	inc	r10
               	test	r10b, 0x7
               	je	 <L239>
<L238>:
               	vpblendd	ymm7, ymm8, ymm7, 0xc0  # ymm7 = ymm8[0,1,2,3,4,5],ymm7[6,7]
               	vpermq	ymm7, ymm7, 0x93        # ymm7 = ymm7[3,0,1,2]
               	vmovdqu	ymm8, ymmword ptr [rsp + 0x220]
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x260]
               	vmovdqu	ymm10, ymmword ptr [rsp + 0x280]
               	vmovdqu	ymm11, ymmword ptr [rsp + 0x2a0]
               	vpsrlq	ymm8, ymm8, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x220], ymm8
               	vpsrlq	ymm7, ymm7, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x240], ymm7
               	vpsrlq	ymm7, ymm9, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x260], ymm7
               	vpsrlq	ymm7, ymm10, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x280], ymm7
               	vpsrlq	ymm9, ymm11, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2a0], ymm9
               	vmovq	rbx, xmm8
               	vextracti128	xmm8, ymm9, 0x1
               	vmovq	r9, xmm8
               	vpextrq	r13, xmm7, 0x1
               	add	rcx, 0x64
               	cmp	rax, r10
               	jne	 <L233>
<L234>:
               	imul	rax, r10, 0x64
               	shr	rax, 0x2
               	imul	ebp, eax, 0xc28f5c29
               	test	ebp, ebp
               	je	 <L244>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x280], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x260], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x240], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x220], ymm0
               	lea	r15, [rsp + 0x1df]
               	mov	r12, qword ptr [rsp + 0x1f0]
               	jmp	 <L245>
               	nop	word ptr cs:[rax + rax]
<L246>:
               	vmovss	xmm0, dword ptr [rsp + 0x224]
               	vmovss	dword ptr [rsp + 0x228], xmm0
               	mov	ebx, 0x1
<L254>:
               	mov	eax, ebx
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x220]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r12, r14
<L245>:
               	mov	eax, ebp
               	neg	eax
               	and	eax, ebp
               	imul	r14, rax, 0x64
               	add	r14, r12
               	test	eax, eax
               	je	 <L246>
               	mov	qword ptr [rsp], rax
               	mov	dword ptr [rsp + 0x70], ebp
               	mov	r13d, 0x1
               	xor	ecx, ecx
               	mov	ebp, 0x1
               	jmp	 <L247>
               	nop
<L249>:
               	mov	ebp, ebx
               	movsxd	rax, ebx
               	vmovss	dword ptr [rsp + 4*rax + 0x220], xmm0
               	add	r12, 0x64
               	mov	ecx, 0xfffffffe
               	sub	ecx, r13d
               	lea	edx, [r13 + 0x1]
               	bsr	esi, edx
               	xor	esi, 0x1f
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r13d, edx
               	cmp	r12, r14
               	je	 <L248>
<L247>:
               	mov	ebx, ecx
               	movzx	eax, byte ptr [r12 + 0x60]
               	mov	rdi, r15
               	mov	rsi, r12
               	lea	rcx,  <std::__detail::__variant::__gen_vtable<std::__detail::__variant::__deduce_visit_result<float>, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&>::_S_vtable>
               	vzeroupper
               	call	qword ptr [rcx + 8*rax]
               	mov	ecx, ebx
               	sub	ecx, ebp
               	jl	 <L249>
               	movsxd	rax, ebp
               	cmp	ecx, 0x1f
               	jb	 <L250>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vpblendd	xmm0, xmm0, xmmword ptr , 0xe <memset+0xd50> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0x280]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vxorps	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	word ptr cs:[rax + rax]
<L251>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi + 4*rdi - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rsi + 4*rdi - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rsi + 4*rdi]
               	add	rdi, 0x20
               	cmp	rdx, rdi
               	jne	 <L251>
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
               	je	 <L249>
               	add	rax, rdx
<L250>:
               	mov	ecx, ebx
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x220
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L252>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L252>
               	jmp	 <L249>
               	nop	word ptr cs:[rax + rax]
<L248>:
               	mov	ebp, dword ptr [rsp + 0x70]
               	sub	ebp, dword ptr [rsp]
               	je	 <L253>
               	vmovss	dword ptr [rsp + 4*rax + 0x224], xmm0
               	mov	r12, r14
               	test	ebx, ebx
               	jns	 <L254>
               	jmp	 <L245>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
<L253>:
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	test	rdi, rdi
               	mov	rbx, qword ptr [rsp + 0x2c8]
               	jne	 <L255>
               	cmp	ebx, 0x2a
               	je	 <L256>
               	jmp	 <L257>
<L244>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rbx, qword ptr [rsp + 0x2c8]
               	mov	rdi, qword ptr [rsp + 0x1f0]
<L255>:
               	vmovdqa	xmmword ptr [rsp + 0x70], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x70]
               	cmp	ebx, 0x2a
               	jne	 <L257>
<L256>:
               	cmp	dword ptr [rsp + 0x2d0], 0x186a0
               	jne	 <L257>
               	vucomiss	xmm0, dword ptr  <memset+0xd94>
               	jne	 <L258>
<L257>:
               	xor	eax, eax
               	add	rsp, 0x358
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L258>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x70], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x70]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x7290>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xd88>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xd88>
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
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 3ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 4ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xd90>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 6ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 7ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xd8c>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <memset+0xd98>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xd88>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xd84>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xd98>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x7268>
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

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x50>
               	push	0x7
               	jmp	 <.plt>
