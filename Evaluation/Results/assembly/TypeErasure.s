
build/Evaluation/bin/TypeErasure:	file format elf64-x86-64

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
               	call	qword ptr  <__libc_start_main+0x7af0>
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
               	mov	rax, qword ptr  <__libc_start_main+0x7b00>
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
               	mov	rax, qword ptr  <__libc_start_main+0x7b08>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x7b10>
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
               	mov	rbp, rsp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	and	rsp, -0x20
               	sub	rsp, 0x760
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r15d, byte ptr [rcx]
               	add	r15d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
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
               	movsx	r14d, byte ptr [rax]
               	add	r14d, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax]
<L3>:
               	lea	edx, [r14 + 4*r14]
               	movsx	ecx, cl
               	lea	r14d, [rcx + 2*rdx]
               	add	r14d, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movsxd	rdi, r14d
               	shl	rdi, 0x5
               	mov	rsi, qword ptr  <__libc_start_main+0x7b18>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	movsxd	rdx, r15d
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
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	rsi, rcx
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x2e0], r11
               	mov	rdi, r11
               	xor	r11d, r11d
               	mov	rcx, r8
               	mov	qword ptr [rsp + 0x298], r8
               	mov	qword ptr [rsp + 0x2e8], r10
               	mov	r9, r10
               	xor	r10d, r10d
               	jmp	 <L4>
               	nop
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
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rdx
               	jae	 <L6>
               	xor	r10, r9
               	xor	r11, r8
               	xor	r13, rdi
               	xor	r12, rsi
               	jmp	 <L6>
<L5>:
               	mov	qword ptr [rsp + 0x228], r10
               	mov	qword ptr [rsp + 0x28], r11
               	movabs	rbx, -0x2a59ed990f36c6d4
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
               	bt	rbx, rcx
               	jae	 <L9>
               	xor	qword ptr [rsp + 0x228], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	r13, rdi
               	xor	r12, rsi
               	jmp	 <L9>
<L8>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x228], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	r13, rdi
               	xor	r12, rsi
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r10d, r10d
               	jmp	 <L13>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x228], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	r13, rdi
               	xor	r12, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x210], rsi
               	mov	rsi, r12
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x208], rdi
               	mov	rdi, r13
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x2a0], r8
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x228]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x200], r11
               	jmp	 <L16>
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
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
               	bt	rbx, r10
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1f8], rsi
               	mov	rsi, qword ptr [rsp + 0x210]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f0], rdi
               	mov	rdi, qword ptr [rsp + 0x208]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x280], r8
               	mov	r8, qword ptr [rsp + 0x2a0]
               	mov	r9, qword ptr [rsp + 0x200]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1e8], r11
               	jmp	 <L28>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
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
               	bt	rbx, r10
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
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
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
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
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1e0], rsi
               	mov	rsi, qword ptr [rsp + 0x1f8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x270], r8
               	mov	r8, qword ptr [rsp + 0x280]
               	mov	r9, qword ptr [rsp + 0x1e8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1d0], r11
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
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
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
               	bt	rbx, r10
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
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
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
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
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1c8], rsi
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	mov	rdi, qword ptr [rsp + 0x1d8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x260], r8
               	mov	r8, qword ptr [rsp + 0x270]
               	mov	r9, qword ptr [rsp + 0x1d0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1b8], r11
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
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
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
               	bt	rbx, r10
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
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
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
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
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L63>
<L62>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1b0], rsi
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	mov	rdi, qword ptr [rsp + 0x1c0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x250], r8
               	mov	r8, qword ptr [rsp + 0x260]
               	mov	r9, qword ptr [rsp + 0x1b8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1a0], r11
               	jmp	 <L64>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
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
               	bt	rbx, r10
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L69>
<L68>:
               	xor	r10d, r10d
               	jmp	 <L70>
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
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L72>
<L71>:
               	xor	r10d, r10d
               	jmp	 <L73>
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
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x198], rsi
               	mov	rsi, qword ptr [rsp + 0x1b0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x240], r8
               	mov	r8, qword ptr [rsp + 0x250]
               	mov	r9, qword ptr [rsp + 0x1a0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x188], r11
               	jmp	 <L76>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
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
               	bt	rbx, r10
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L81>
<L80>:
               	xor	r10d, r10d
               	jmp	 <L82>
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
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L84>
<L83>:
               	xor	r10d, r10d
               	jmp	 <L85>
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
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L87>
<L86>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x180], rsi
               	mov	rsi, qword ptr [rsp + 0x198]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	mov	rdi, qword ptr [rsp + 0x190]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x230], r8
               	mov	r8, qword ptr [rsp + 0x240]
               	mov	r9, qword ptr [rsp + 0x188]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x170], r11
               	jmp	 <L88>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
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
               	bt	rbx, r10
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L93>
<L92>:
               	xor	r10d, r10d
               	jmp	 <L94>
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
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L96>
<L95>:
               	xor	r10d, r10d
               	jmp	 <L97>
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
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L99>
<L98>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x168], rsi
               	mov	rsi, qword ptr [rsp + 0x180]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	mov	rdi, qword ptr [rsp + 0x178]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	mov	r8, qword ptr [rsp + 0x230]
               	mov	r9, qword ptr [rsp + 0x170]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x158], r11
               	jmp	 <L100>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
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
               	bt	rbx, r10
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
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
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
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
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L111>
<L110>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x150], rsi
               	mov	rsi, qword ptr [rsp + 0x168]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	mov	rdi, qword ptr [rsp + 0x160]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x70], r8
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	r9, qword ptr [rsp + 0x158]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x140], r11
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
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
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
               	bt	rbx, r10
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
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
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
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
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x138], rsi
               	mov	rsi, qword ptr [rsp + 0x150]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	mov	rdi, qword ptr [rsp + 0x148]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x68], r8
               	mov	r8, qword ptr [rsp + 0x70]
               	mov	r9, qword ptr [rsp + 0x140]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x128], r11
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
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
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
               	bt	rbx, r10
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
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
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
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
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x120], rsi
               	mov	rsi, qword ptr [rsp + 0x138]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x118], rdi
               	mov	rdi, qword ptr [rsp + 0x130]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r8
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	r9, qword ptr [rsp + 0x128]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x110], r11
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
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
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
               	bt	rbx, r10
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L141>
<L140>:
               	xor	r10d, r10d
               	jmp	 <L142>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L144>
<L143>:
               	xor	r10d, r10d
               	jmp	 <L145>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x108], rsi
               	mov	rsi, qword ptr [rsp + 0x120]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x100], rdi
               	mov	rdi, qword ptr [rsp + 0x118]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x58], r8
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r9, qword ptr [rsp + 0x110]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xf8], r11
               	jmp	 <L148>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
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
               	bt	rbx, r10
               	jae	 <L153>
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L159>
<L158>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xf0], rsi
               	mov	rsi, qword ptr [rsp + 0x108]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], rdi
               	mov	rdi, qword ptr [rsp + 0x100]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	r9, qword ptr [rsp + 0xf8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xe0], r11
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
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
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
               	bt	rbx, r10
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
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
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
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
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L171>
<L170>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xd8], rsi
               	mov	rsi, qword ptr [rsp + 0xf0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd0], rdi
               	mov	rdi, qword ptr [rsp + 0xe8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x48], r8
               	mov	r8, qword ptr [rsp + 0x50]
               	mov	r9, qword ptr [rsp + 0xe0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xc8], r11
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
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
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
               	bt	rbx, r10
               	jae	 <L177>
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
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
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
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
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xc0], rsi
               	mov	rsi, qword ptr [rsp + 0xd8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb8], rdi
               	mov	rdi, qword ptr [rsp + 0xd0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x40], r8
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	r9, qword ptr [rsp + 0xc8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xb0], r11
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
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
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
               	bt	rbx, r10
               	jae	 <L189>
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
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
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
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
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xa8], rsi
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa0], rdi
               	mov	rdi, qword ptr [rsp + 0xb8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x38], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r9, qword ptr [rsp + 0xb0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x98], r11
               	jmp	 <L196>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
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
               	bt	rbx, r10
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
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
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
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
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
               	jmp	 <L207>
<L206>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x90], rsi
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x88], rdi
               	mov	rdi, qword ptr [rsp + 0xa0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x30], r8
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	r9, qword ptr [rsp + 0x98]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x80], r11
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
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L210>
<L209>:
               	xor	r10d, r10d
               	jmp	 <L211>
               	nop	word ptr [rax + rax]
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
               	bt	rbx, r10
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L213>
<L212>:
               	xor	r10d, r10d
               	jmp	 <L214>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L216>
<L215>:
               	xor	r10d, r10d
               	jmp	 <L217>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x2c8], r13
               	mov	qword ptr [rsp + 0x2d0], r12
               	mov	qword ptr [rsp + 0x290], rax
               	mov	qword ptr [rsp + 0x2c0], r14
               	mov	qword ptr [rsp + 0x2f0], r15
               	xor	r10d, r10d
               	xor	r14d, r14d
               	mov	rsi, qword ptr [rsp + 0x90]
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x218], rax
               	mov	rdi, qword ptr [rsp + 0x88]
               	xor	r12d, r12d
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	r9, qword ptr [rsp + 0x80]
               	xor	r13d, r13d
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L220>
               	nop
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
               	bt	rax, r10
               	jae	 <L222>
               	xor	r13, r9
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	r14, rsi
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
               	bt	rbx, r10
               	jae	 <L225>
               	xor	r13, r9
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	r14, rsi
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	mov	r11, qword ptr [rsp + 0x28]
               	jmp	 <L226>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	r14, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	jmp	 <L229>
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
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	r14, rsi
               	jmp	 <L231>
<L230>:
               	mov	rax, qword ptr [rsp + 0x298]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x360], rax
               	lea	rcx, [r11 + 4*r11]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x368], rcx
               	mov	rcx, qword ptr [rsp + 0x2a0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x280]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x370], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	rcx, qword ptr [rsp + 0x270]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x380], rcx
               	mov	rcx, qword ptr [rsp + 0x260]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x388], rcx
               	mov	rcx, qword ptr [rsp + 0x250]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x240]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x390], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x398], rcx
               	mov	rcx, qword ptr [rsp + 0x230]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a0], rcx
               	mov	rcx, qword ptr [rsp + 0x78]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a8], rcx
               	mov	rcx, qword ptr [rsp + 0x70]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x68]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3b0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3b8], rcx
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c0], rcx
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r10, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c8], r10
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x48]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3d0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3d8], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3e0], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3e8], rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rdi, [rcx + 8*rcx]
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3f0], rdi
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3f8], rcx
               	mov	rcx, qword ptr [rsp + 0x2c0]
               	test	ecx, ecx
               	je	 <L232>
               	mov	ecx, ecx
               	mov	qword ptr [rsp + 0x2f8], rcx
               	xor	edx, edx
               	vbroadcastsd	ymm0, qword ptr  <__libc_start_main+0xfc0>
               	vmovaps	ymmword ptr [rsp + 0x720], ymm0
               	mov	rsi, qword ptr [rsp + 0x290]
               	jmp	 <L233>
               	nop	dword ptr [rax]
<L238>:
               	vmovdqa	ymm0, ymmword ptr [rsp + 0x300]
               	vpblendd	ymm0, ymm0, ymmword ptr [rsp + 0x320], 0xc0 # ymm0 = ymm0[0,1,2,3,4,5],mem[6,7]
               	vpermq	ymm0, ymm0, 0x93        # ymm0 = ymm0[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x360]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x3a0]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x3c0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x3e0]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x360], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x380], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3a0], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3c0], ymm0
               	vpsrlq	ymm2, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3e0], ymm2
               	vmovq	rax, xmm1
               	vextracti128	xmm1, ymm2, 0x1
               	vmovq	rdi, xmm1
               	vpextrq	r10, xmm0, 0x1
               	add	rsi, 0x20
               	cmp	qword ptr [rsp + 0x2f8], rdx
               	je	 <L234>
<L233>:
               	mov	qword ptr [rsp + 0x220], rdx
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x368]
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x388]
               	vmovdqa	ymm1, ymmword ptr [rsp + 0x720]
               	vmovdqa	ymmword ptr [rsp + 0x300], ymm0
               	vpand	ymm0, ymm0, ymm1
               	vmovdqa	ymmword ptr [rsp + 0x320], ymm2
               	vpand	ymm1, ymm2, ymm1
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x10], xmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x3a8]
               	vpshufb	xmm0, xmm0, xmmword ptr  <__libc_start_main+0xff0>
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	lea	rcx,  <__libc_start_main+0x105c>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Circle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Circle (Bodies3D::Circle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Circle>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x20
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L235>
               	vmovdqa	xmmword ptr [rsp], xmm0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x28
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x10]
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <__libc_start_main+0x1020>
               	vmovups	ymmword ptr [rax], ymm0
               	vpmovzxbd	xmm0, dword ptr [rsp]
               	jmp	 <L236>
               	vmovdqa	xmmword ptr [rsp], xmm0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Triangle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Triangle (Bodies3D::Triangle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Triangle>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x24
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x10]
               	vpextrb	ecx, xmm1, 0x7
               	vcvtsi2ss	xmm0, xmm6, ecx
               	vpunpcklbw	xmm1, xmm1, xmmword ptr [rsp] # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3],xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
               	vpshufb	xmm1, xmm1, xmmword ptr  <__libc_start_main+0xfd0>
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	jmp	 <L237>
               	mov	r15, rdi
               	mov	rbx, r10
               	vmovups	ymm0, ymmword ptr [rsp + 0x3d0]
               	vmovaps	ymmword ptr [rsp + 0x700], ymm0
               	vmovups	xmm0, xmmword ptr [rsp + 0x3b8]
               	vmovaps	xmmword ptr [rsp + 0x350], xmm0
               	vxorps	xmm0, xmm0, xmm0
               	vmovups	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Head@Evaluation.CRTP.Head const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Head@Evaluation.CRTP.Head (Bodies3D::Head@Evaluation.CRTP.Head&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Head@Evaluation.CRTP.Head>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x60
               	mov	qword ptr [rsp], rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movzx	ecx, r15b
               	vcvtsi2ss	xmm0, xmm6, ecx
               	movzx	ecx, bl
               	vcvtsi2ss	xmm1, xmm6, ecx
               	vpmovzxbd	ymm2, qword ptr [rsp + 0x10]
               	vcvtdq2ps	ymm2, ymm2
               	vpermilps	ymm3, ymm2, ymmword ptr  <__libc_start_main+0x1020>
               	vmovups	ymmword ptr [rax], ymm3
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x350]
               	vpshufb	xmm3, xmm3, xmmword ptr  <__libc_start_main+0xfe0>
               	vcvtdq2ps	xmm3, xmm3
               	vmovlps	qword ptr [rax + 0x20], xmm3
               	vmovss	dword ptr [rax + 0x28], xmm1
               	vshufps	xmm2, xmm2, xmm2, 0xff  # xmm2 = xmm2[3,3,3,3]
               	vmovss	dword ptr [rax + 0x2c], xmm2
               	vmovaps	ymm5, ymmword ptr [rsp + 0x700]
               	vextractf128	xmm4, ymm5, 0x1
               	vshufps	xmm4, xmm5, xmm4, 0x88  # xmm4 = xmm5[0,2],xmm4[0,2]
               	vandps	xmm4, xmm4, xmmword ptr  <__libc_start_main+0x1000>
               	vcvtdq2ps	xmm4, xmm4
               	vshufps	xmm5, xmm4, xmm4, 0xd8  # xmm5 = xmm4[0,2,1,3]
               	vmovaps	xmmword ptr [rax + 0x30], xmm5
               	vmovlps	qword ptr [rax + 0x40], xmm3
               	vmovss	dword ptr [rax + 0x48], xmm1
               	vmovss	dword ptr [rax + 0x4c], xmm2
               	vmovss	dword ptr [rax + 0x50], xmm0
               	vshufps	xmm0, xmm4, xmm4, 0xe6  # xmm0 = xmm4[2,1,2,3]
               	vmovlps	qword ptr [rax + 0x54], xmm0
               	vextractps	dword ptr [rax + 0x5c], xmm4, 0x3
               	mov	rsi, qword ptr [rsp]
               	mov	qword ptr [rsi + 0x18], rax
               	mov	rdx, qword ptr [rsp + 0x220]
               	inc	rdx
               	test	dl, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	vmovdqa	xmmword ptr [rsp], xmm0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x24
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L240>
               	vmovdqa	xmmword ptr [rsp], xmm0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Rectangle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Rectangle (Bodies3D::Rectangle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Rectangle>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x24
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L241>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Square const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Square (Bodies3D::Square&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Square>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x20
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L235>
               	vmovdqa	xmmword ptr [rsp], xmm0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x28
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x10]
               	vmovdqa	xmm2, xmmword ptr [rsp]
               	vpunpcklbw	xmm0, xmm1, xmm2 # xmm0 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
               	vpshufb	xmm0, xmm0, xmmword ptr  <__libc_start_main+0xfd0>
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rax], ymm0
               	vpsrlq	xmm0, xmm1, 0x38
               	vpmovzxbq	xmm1, word ptr  <__libc_start_main+0x1058>
               	vpblendvb	xmm0, xmm2, xmm0, xmm1
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
<L236>:
               	vcvtdq2ps	xmm0, xmm0
               	jmp	 <L242>
               	vmovdqa	xmmword ptr [rsp], xmm0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipse const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Ellipse (Bodies3D::Ellipse&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Ellipse>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x24
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
<L241>:
               	vmovdqa	xmm0, xmmword ptr [rsp]
               	vpextrb	ecx, xmm0, 0x0
               	jmp	 <L243>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cube@Evaluation.CRTP.Cube const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cube@Evaluation.CRTP.Cube (Bodies3D::Cube@Evaluation.CRTP.Cube&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cube@Evaluation.CRTP.Cube>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x20
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L235>
               	vmovdqa	xmmword ptr [rsp], xmm0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x28
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpmovzxbd	xmm0, dword ptr [rsp]
               	vcvtdq2ps	xmm0, xmm0
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x10]
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <__libc_start_main+0x1020>
               	vmovups	ymmword ptr [rax], ymm1
<L242>:
               	vmovlps	qword ptr [rax + 0x20], xmm0
               	jmp	 <L244>
               	vmovdqa	xmmword ptr [rsp], xmm0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cone@Evaluation.CRTP.Cone const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cone@Evaluation.CRTP.Cone (Bodies3D::Cone@Evaluation.CRTP.Cone&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cone@Evaluation.CRTP.Cone>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x24
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
<L240>:
               	vmovdqa	xmm0, xmmword ptr [rsp]
               	vpextrb	ecx, xmm0, 0x1
<L243>:
               	vcvtsi2ss	xmm0, xmm6, ecx
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x10]
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <__libc_start_main+0x1020>
<L237>:
               	vmovups	ymmword ptr [rax], ymm1
               	vmovss	dword ptr [rax + 0x20], xmm0
               	jmp	 <L244>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rsi + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Sphere@Evaluation.CRTP.Sphere const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Sphere@Evaluation.CRTP.Sphere (Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>::value>
               	mov	qword ptr [rsi], rax
               	mov	edi, 0x20
               	mov	rbx, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
<L235>:
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x10]
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <__libc_start_main+0x1020>
               	vmovups	ymmword ptr [rax], ymm0
<L244>:
               	mov	qword ptr [rbx + 0x18], rax
               	mov	rsi, rbx
               	mov	rdx, qword ptr [rsp + 0x220]
               	inc	rdx
               	test	dl, 0x7
               	jne	 <L238>
<L239>:
               	mov	r8, qword ptr [rsp + 0x298]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2e8]
               	mov	qword ptr [rsp], rsi
               	mov	rsi, qword ptr [rsp + 0x2e0]
               	xor	rsi, rcx
               	mov	rdi, qword ptr [rsp + 0x2d8]
               	xor	rdi, r8
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x298], r8
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x2e8], rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x2d8], rdi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x2e0], rsi
               	mov	rdi, qword ptr [rsp + 0x28]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x2c8]
               	mov	r8, qword ptr [rsp + 0x228]
               	xor	rsi, r8
               	mov	rcx, qword ptr [rsp + 0x2d0]
               	xor	rcx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x28], rdi
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x228], r8
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x2c8], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	rdi, qword ptr [rsp + 0x2a0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x208]
               	mov	r9, qword ptr [rsp + 0x200]
               	xor	rsi, r9
               	mov	rcx, qword ptr [rsp + 0x210]
               	xor	rcx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x2a0], rdi
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x200], r9
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x208], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x210], rcx
               	mov	rdi, qword ptr [rsp + 0x280]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1f0]
               	mov	r10, qword ptr [rsp + 0x1e8]
               	xor	rsi, r10
               	mov	rcx, qword ptr [rsp + 0x1f8]
               	xor	rcx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x280], rdi
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x1e8], r10
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1f0], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1f8], rcx
               	mov	rdi, qword ptr [rsp + 0x270]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	mov	r11, qword ptr [rsp + 0x1d0]
               	xor	rsi, r11
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	xor	rcx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x270], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x1d0], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1e0], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1d8], rsi
               	mov	rdi, qword ptr [rsp + 0x260]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	mov	qword ptr [rsp + 0x300], r13
               	mov	r13, rcx
               	xor	rsi, rcx
               	mov	rcx, qword ptr [rsp + 0x1c8]
               	xor	rcx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x260], rdi
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x1b8], r13
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1c0], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1c8], rcx
               	mov	rdi, qword ptr [rsp + 0x250]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	qword ptr [rsp + 0x320], r14
               	mov	r14, rcx
               	xor	rsi, rcx
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	xor	rcx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x250], rdi
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x1a0], r14
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1a8], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1b0], rcx
               	mov	rdi, qword ptr [rsp + 0x240]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x190]
               	mov	r15, qword ptr [rsp + 0x188]
               	xor	rsi, r15
               	mov	rcx, qword ptr [rsp + 0x198]
               	xor	rcx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x240], rdi
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x188], r15
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x190], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x198], rcx
               	mov	rdi, qword ptr [rsp + 0x230]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x178]
               	mov	rcx, qword ptr [rsp + 0x170]
               	mov	qword ptr [rsp + 0x10], r12
               	mov	r12, rcx
               	xor	rsi, rcx
               	mov	rcx, qword ptr [rsp + 0x180]
               	xor	rcx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x230], rdi
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x170], r12
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x180], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x178], rsi
               	mov	r13, qword ptr [rsp + 0x78]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x160]
               	mov	rbx, qword ptr [rsp + 0x158]
               	mov	qword ptr [rsp + 0x220], rdx
               	xor	rsi, rbx
               	mov	rcx, qword ptr [rsp + 0x168]
               	xor	rcx, r13
               	xor	r13, rsi
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x158], rbx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x160], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x168], rcx
               	mov	r12, qword ptr [rsp + 0x70]
               	mov	rdx, r12
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x148]
               	mov	rax, qword ptr [rsp + 0x140]
               	xor	rsi, rax
               	mov	rcx, qword ptr [rsp + 0x150]
               	xor	rcx, r12
               	xor	r12, rsi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x140], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x148], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x150], rcx
               	mov	r15, qword ptr [rsp + 0x68]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x130]
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x138]
               	xor	rcx, r15
               	xor	r15, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x128], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x130], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x138], rcx
               	mov	r14, qword ptr [rsp + 0x60]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x118]
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x120]
               	xor	rcx, r14
               	xor	r14, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x110], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x120], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x118], rdx
               	mov	r10, qword ptr [rsp + 0x58]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x100]
               	mov	rsi, qword ptr [rsp + 0xf8]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x108]
               	xor	rcx, r10
               	xor	r10, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xf8], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x100], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x108], rcx
               	mov	rbx, qword ptr [rsp + 0x50]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xe8]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	rcx, rbx
               	xor	rbx, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xe0], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xe8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	r11, qword ptr [rsp + 0x48]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xd0]
               	mov	rsi, qword ptr [rsp + 0xc8]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xd8]
               	xor	rcx, r11
               	xor	r11, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xc8], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xd0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xd8], rcx
               	mov	r9, qword ptr [rsp + 0x40]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xb8]
               	mov	rsi, qword ptr [rsp + 0xb0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xc0]
               	xor	rcx, r9
               	xor	r9, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xb0], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xc0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xb8], rdx
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xa0]
               	mov	rsi, qword ptr [rsp + 0x98]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xa8]
               	xor	rcx, r8
               	xor	r8, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x98], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xa0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xa8], rcx
               	mov	rdi, qword ptr [rsp + 0x30]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x88]
               	mov	rsi, qword ptr [rsp + 0x80]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x90]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x80], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x88], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x90], rcx
               	mov	rax, qword ptr [rsp + 0x10]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x300]
               	xor	qword ptr [rsp + 0x218], rcx
               	mov	rcx, qword ptr [rsp + 0x10]
               	xor	qword ptr [rsp + 0x320], rcx
               	mov	rcx, qword ptr [rsp + 0x10]
               	xor	rcx, qword ptr [rsp + 0x218]
               	mov	qword ptr [rsp + 0x10], rcx
               	xor	qword ptr [rsp + 0x218], rax
               	mov	rax, qword ptr [rsp + 0x298]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x2a0]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rsi, qword ptr [rsp + 0x280]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x360], rax
               	mov	qword ptr [rsp + 0x368], rcx
               	mov	rcx, qword ptr [rsp + 0x270]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x370], rdx
               	mov	rdx, qword ptr [rsp + 0x260]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x378], rsi
               	mov	rsi, qword ptr [rsp + 0x250]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x380], rcx
               	mov	rcx, qword ptr [rsp + 0x240]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x388], rdx
               	mov	rdx, qword ptr [rsp + 0x230]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x390], rsi
               	mov	qword ptr [rsp + 0x78], r13
               	lea	rsi, [4*r13]
               	add	rsi, r13
               	mov	r13, qword ptr [rsp + 0x300]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x398], rcx
               	mov	qword ptr [rsp + 0x70], r12
               	lea	rcx, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x10]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3a0], rdx
               	mov	qword ptr [rsp + 0x68], r15
               	lea	rdx, [r15 + 4*r15]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3a8], rsi
               	mov	qword ptr [rsp + 0x60], r14
               	lea	rsi, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x320]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x3b0], rcx
               	mov	qword ptr [rsp + 0x58], r10
               	lea	rcx, [r10 + 4*r10]
               	mov	r15, qword ptr [rsp + 0x220]
               	rol	rcx, 0x7
               	lea	r10, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3b8], rdx
               	mov	qword ptr [rsp + 0x50], rbx
               	lea	rcx, [rbx + 4*rbx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3c0], rsi
               	mov	rsi, qword ptr [rsp]
               	mov	qword ptr [rsp + 0x48], r11
               	lea	rdx, [r11 + 4*r11]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3c8], r10
               	mov	qword ptr [rsp + 0x3d0], rcx
               	mov	qword ptr [rsp + 0x40], r9
               	lea	rcx, [r9 + 4*r9]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3d8], rdx
               	mov	qword ptr [rsp + 0x38], r8
               	lea	rdx, [r8 + 4*r8]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3e0], rcx
               	mov	qword ptr [rsp + 0x30], rdi
               	lea	rcx, [rdi + 4*rdi]
               	rol	rcx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	rdi, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3e8], rdx
               	mov	rdx, r15
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3f0], rdi
               	mov	qword ptr [rsp + 0x3f8], rcx
               	xor	r13, r14
               	rol	r14, 0x2d
               	add	rsi, 0x20
               	cmp	qword ptr [rsp + 0x2f8], rdx
               	jne	 <L233>
<L234>:
               	shl	rdx, 0x5
               	je	 <L232>
               	mov	r12, qword ptr [rsp + 0x290]
               	add	rdx, r12
               	mov	qword ptr [rsp + 0x220], rdx
               	lea	r14, [rsp + 0x340]
               	mov	r15d, 0x1
               	xor	r13d, r13d
               	mov	eax, 0x1
               	jmp	 <L245>
               	nop	dword ptr [rax]
<L247>:
               	add	r12, 0x100
               	inc	r15d
               	popcnt	eax, r15d
               	mov	r13d, ebx
               	cmp	r12, qword ptr [rsp + 0x220]
               	je	 <L246>
<L245>:
               	mov	ebx, eax
               	mov	rax, qword ptr [r12]
               	lea	rdi, [r12 + 0x18]
               	vzeroupper
               	call	qword ptr [rax]
               	vmovaps	xmmword ptr [rsp + 0x2a0], xmm0
               	mov	rax, qword ptr [r12 + 0x20]
               	lea	rdi, [r12 + 0x38]
               	call	qword ptr [rax]
               	vmovaps	xmmword ptr [rsp + 0x280], xmm0
               	mov	rax, qword ptr [r12 + 0x40]
               	lea	rdi, [r12 + 0x58]
               	call	qword ptr [rax]
               	vmovaps	xmmword ptr [rsp + 0x270], xmm0
               	mov	rax, qword ptr [r12 + 0x60]
               	lea	rdi, [r12 + 0x78]
               	call	qword ptr [rax]
               	vmovaps	xmmword ptr [rsp + 0x260], xmm0
               	mov	rax, qword ptr [r12 + 0x80]
               	lea	rdi, [r12 + 0x98]
               	call	qword ptr [rax]
               	vmovaps	xmmword ptr [rsp + 0x250], xmm0
               	mov	rax, qword ptr [r12 + 0xa0]
               	lea	rdi, [r12 + 0xb8]
               	call	qword ptr [rax]
               	vmovaps	xmmword ptr [rsp + 0x240], xmm0
               	mov	rax, qword ptr [r12 + 0xc0]
               	lea	rdi, [r12 + 0xd8]
               	call	qword ptr [rax]
               	vmovaps	xmmword ptr [rsp + 0x230], xmm0
               	mov	rax, qword ptr [r12 + 0xe0]
               	lea	rdi, [r12 + 0xf8]
               	call	qword ptr [rax]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x2a0]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x280], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x270], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x260], 0x30 # xmm1 = xmm1[0,1,2],mem[0]
               	vmovaps	xmm2, xmmword ptr [rsp + 0x250]
               	vinsertps	xmm2, xmm2, dword ptr [rsp + 0x240], 0x10 # xmm2 = xmm2[0],mem[0],xmm2[2,3]
               	vinsertps	xmm2, xmm2, dword ptr [rsp + 0x230], 0x20 # xmm2 = xmm2[0,1],mem[0],xmm2[3]
               	vinsertps	xmm0, xmm2, xmm0, 0x30 # xmm0 = xmm2[0,1,2],xmm0[0]
               	movsxd	rcx, r13d
               	mov	rax, rcx
               	shl	rax, 0x5
               	vmovaps	xmmword ptr [rsp + rax + 0x370], xmm0
               	vmovaps	xmmword ptr [rsp + rax + 0x360], xmm1
               	sub	ecx, ebx
               	jb	 <L247>
               	mov	eax, r13d
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x360]
               	inc	ecx
               	and	ecx, 0x3
               	je	 <L248>
               	add	rdx, r14
               	xor	esi, esi
               	nop	dword ptr [rax]
<L249>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx], ymm0
               	inc	rsi
               	add	rdx, -0x20
               	cmp	rcx, rsi
               	jne	 <L249>
               	mov	rcx, rax
               	sub	rcx, rsi
               	mov	edx, ebx
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L247>
               	jmp	 <L250>
<L248>:
               	mov	rcx, rax
               	mov	edx, ebx
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L247>
<L250>:
               	mov	rax, rcx
               	shl	rax, 0x5
               	add	rax, r14
               	inc	rcx
               	nop	word ptr [rax + rax]
<L251>:
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
               	jg	 <L251>
               	jmp	 <L247>
<L232>:
               	mov	r12, qword ptr [rsp + 0x290]
<L259>:
               	test	r12, r12
               	mov	rbx, qword ptr [rsp + 0x2f0]
               	mov	r14, qword ptr [rsp + 0x2c0]
               	je	 <L252>
               	mov	rdi, r12
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L252>:
               	cmp	ebx, 0x2a
               	jne	 <L253>
               	cmp	r14d, 0x186a0
               	jne	 <L253>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x2a0]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0x1050>
               	jne	 <L254>
<L253>:
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
<L246>:
               	cmp	ebx, 0x2
               	mov	r12, qword ptr [rsp + 0x290]
               	jb	 <L255>
               	mov	eax, ebx
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x340]
               	lea	rdx, [rsp + 0x360]
               	test	bl, 0x1
               	jne	 <L256>
               	dec	rax
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L256>:
               	cmp	ebx, 0x2
               	je	 <L255>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	add	rax, rdx
               	add	rax, -0x40
               	nop	word ptr cs:[rax + rax]
<L257>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L257>
<L255>:
               	vmovaps	ymm0, ymmword ptr [rsp + 0x360]
               	vmovaps	ymmword ptr [rsp + 0x2a0], ymm0
               	mov	r14, r12
               	mov	rbx, qword ptr [rsp + 0x220]
               	jmp	 <L258>
               	nop
<L260>:
               	add	r14, 0x8
               	cmp	r14, rbx
               	je	 <L259>
<L258>:
               	mov	rax, qword ptr [r14]
               	add	r14, 0x18
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [rax + 0x10]
               	mov	r15, qword ptr [r14 - 0x8]
               	test	r15, r15
               	je	 <L260>
               	lock
               	dec	dword ptr [r15 + 0x8]
               	jne	 <L260>
               	mov	rax, qword ptr [r15]
               	mov	rdi, r15
               	call	qword ptr [rax + 0x10]
               	lock
               	dec	dword ptr [r15 + 0xc]
               	jne	 <L260>
               	mov	rax, qword ptr [r15]
               	mov	rdi, r15
               	call	qword ptr [rax + 0x18]
               	jmp	 <L260>
<L254>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x2a0], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x2a0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x7b20>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	jmp	 <L261>
               	jmp	 <L261>
               	jmp	 <L261>
               	jmp	 <L261>
               	jmp	 <L261>
               	jmp	 <L261>
               	jmp	 <L261>
               	jmp	 <L261>
               	jmp	 <L261>
               	jmp	 <L261>
               	jmp	 <L261>
               	jmp	 <L261>
<L261>:
               	mov	rbx, rax
               	xor	edi, edi
               	call	 <boost::type_erasure::binding<boost::mpl::vector<Bodies3D::has_ComputeVolume<float () const, boost::type_erasure::_self>, boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na>>::~binding()>
               	mov	rdi, rbx
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
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
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x1054>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1054>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1040>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1044>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1048>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x104c>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1044>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1044>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x7af8>
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
