
build/Evaluation/bin/Visitor:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x81f8>
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
               	mov	rax, qword ptr  <memset+0x8208>
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
               	mov	rax, qword ptr  <memset+0x8210>
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
               	cmp	qword ptr , 0x0 <memset+0x8218>
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

<initializer for module Evaluation.Dependency.Visitor.ObjectReference>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW7VisitorW15ObjectReference__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW7VisitorW15ObjectReference__in_chrg>
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

<initializer for module Evaluation.Dependency.Visitor.ObjectValue>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW7VisitorW11ObjectValue__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW7VisitorW11ObjectValue__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.Visitor.CommonResult>
               	call	 <initializer for module Evaluation.Dependency.Visitor.Invoke>
               	call	 <initializer for module Evaluation.Dependency.Visitor.LaunderCast>
               	call	 <initializer for module Evaluation.Dependency.Visitor.ObjectReference>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.Visitor.CommonResult>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW7VisitorW12CommonResult__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW7VisitorW12CommonResult__in_chrg>
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

<initializer for module Evaluation.Dependency.Visitor.Invoke>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW7VisitorW6Invoke__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW7VisitorW6Invoke__in_chrg>
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

<initializer for module Evaluation.Dependency.Visitor.LaunderCast>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW7VisitorW11LaunderCast__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW7VisitorW11LaunderCast__in_chrg>
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

<_GLOBAL__sub_I_Visitor.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.Visitor.ObjectReference>
               	call	 <initializer for module Evaluation.Dependency.Visitor.ObjectValue>
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
               	movsx	ebx, byte ptr [rax]
               	add	ebx, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	edx, [rbx + 4*rbx]
               	movsx	ecx, cl
               	lea	ebx, [rcx + 2*rdx]
               	add	ebx, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movsxd	rax, ebx
               	shl	rax, 0x4
               	lea	rdi, [rax + 2*rax]
               	mov	rsi, qword ptr  <memset+0x8220>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x230], rax
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
               	mov	r10, rsi
               	shr	r10, 0x1f
               	xor	r10, rsi
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
               	mov	r8, rdi
               	shr	r8, 0x1f
               	xor	r8, rdi
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
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x228], rcx
               	mov	qword ptr [rsp + 0x238], rsi
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x340], r8
               	mov	rdi, r8
               	xor	r13d, r13d
               	mov	rcx, r10
               	mov	qword ptr [rsp + 0x248], r10
               	mov	r8, r10
               	mov	qword ptr [rsp + 0x370], r9
               	xor	r10d, r10d
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
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rax
               	jae	 <L6>
               	xor	r10, r9
               	xor	r13, r8
               	xor	r15, rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L6>
<L5>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
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
               	xor	r10, r9
               	xor	r13, r8
               	xor	r15, rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x240], r10
               	mov	qword ptr [rsp + 0x60], r13
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
               	mov	r10, qword ptr [rsp + 0x60]
               	jae	 <L12>
               	xor	qword ptr [rsp + 0x240], r9
               	xor	r10, r8
               	mov	qword ptr [rsp + 0x60], r10
               	xor	r15, rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r10d, r10d
               	jmp	 <L13>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x240], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	r15, rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x18], rsi
               	mov	rsi, qword ptr [rsp + 0x228]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x10], rdi
               	mov	rdi, r15
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r9, qword ptr [rsp + 0x240]
               	xor	ebp, ebp
               	jmp	 <L16>
               	nop	dword ptr [rax + rax]
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
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp + 0x18], rsi
               	jmp	 <L18>
<L17>:
               	xor	r10d, r10d
               	jmp	 <L19>
               	nop	dword ptr [rax]
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
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp + 0x18], rsi
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
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp + 0x18], rsi
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
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp + 0x18], rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x220], rsi
               	mov	rsi, qword ptr [rsp + 0x18]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x218], rdi
               	mov	rdi, qword ptr [rsp + 0x10]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x8], r8
               	mov	r8, qword ptr [rsp + 0x50]
               	mov	r9, rbp
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x210], r11
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
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	qword ptr [rsp + 0x220], rsi
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
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	qword ptr [rsp + 0x220], rsi
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
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	qword ptr [rsp + 0x220], rsi
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
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	qword ptr [rsp + 0x220], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x208], rsi
               	mov	rsi, qword ptr [rsp + 0x220]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x200], rdi
               	mov	rdi, qword ptr [rsp + 0x218]
               	xor	r8d, r8d
               	mov	qword ptr [rsp], r8
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	r9, qword ptr [rsp + 0x210]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1f8], r11
               	jmp	 <L40>
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
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x208], rsi
               	jmp	 <L42>
<L41>:
               	xor	r10d, r10d
               	jmp	 <L43>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x208], rsi
               	jmp	 <L45>
<L44>:
               	xor	r10d, r10d
               	jmp	 <L46>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x208], rsi
               	jmp	 <L48>
<L47>:
               	xor	r10d, r10d
               	jmp	 <L49>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x208], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1f0], rsi
               	mov	rsi, qword ptr [rsp + 0x208]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e8], rdi
               	mov	rdi, qword ptr [rsp + 0x200]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x48], r8
               	mov	r8, qword ptr [rsp]
               	mov	r9, qword ptr [rsp + 0x1f8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1e0], r11
               	jmp	 <L52>
               	nop
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
               	xor	qword ptr [rsp + 0x1e0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1f0], rsi
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
               	xor	qword ptr [rsp + 0x1e0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1f0], rsi
               	jmp	 <L57>
<L56>:
               	xor	r10d, r10d
               	jmp	 <L58>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1e0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1f0], rsi
               	jmp	 <L60>
<L59>:
               	xor	r10d, r10d
               	jmp	 <L61>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1e0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1f0], rsi
               	jmp	 <L63>
<L62>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1d8], rsi
               	mov	rsi, qword ptr [rsp + 0x1f0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d0], rdi
               	mov	rdi, qword ptr [rsp + 0x1e8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x40], r8
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	r9, qword ptr [rsp + 0x1e0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1c8], r11
               	jmp	 <L64>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
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
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
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
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
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
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1c0], rsi
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b8], rdi
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x38], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r9, qword ptr [rsp + 0x1c8]
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
               	xor	qword ptr [rsp + 0x38], r8
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
               	xor	qword ptr [rsp + 0x38], r8
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
               	xor	qword ptr [rsp + 0x38], r8
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
               	xor	qword ptr [rsp + 0x38], r8
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
               	mov	qword ptr [rsp + 0x30], r8
               	mov	r8, qword ptr [rsp + 0x38]
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
               	xor	qword ptr [rsp + 0x30], r8
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
               	xor	qword ptr [rsp + 0x30], r8
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
               	xor	qword ptr [rsp + 0x30], r8
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
               	xor	qword ptr [rsp + 0x30], r8
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
               	mov	qword ptr [rsp + 0x28], r8
               	mov	r8, qword ptr [rsp + 0x30]
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
               	xor	qword ptr [rsp + 0x28], r8
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
               	xor	qword ptr [rsp + 0x28], r8
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
               	xor	qword ptr [rsp + 0x28], r8
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
               	xor	qword ptr [rsp + 0x28], r8
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
               	mov	qword ptr [rsp + 0x20], r8
               	mov	r8, qword ptr [rsp + 0x28]
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
               	xor	qword ptr [rsp + 0x20], r8
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
               	xor	qword ptr [rsp + 0x20], r8
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
               	xor	qword ptr [rsp + 0x20], r8
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
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x160], rsi
               	mov	rsi, qword ptr [rsp + 0x178]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x158], rdi
               	mov	rdi, qword ptr [rsp + 0x170]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa0], r8
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x168]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x150], r11
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
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
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
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
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
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
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
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x148], rsi
               	mov	rsi, qword ptr [rsp + 0x160]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x140], rdi
               	mov	rdi, qword ptr [rsp + 0x158]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x98], r8
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	r9, qword ptr [rsp + 0x150]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x138], r11
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
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
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
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
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
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
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
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x130], rsi
               	mov	rsi, qword ptr [rsp + 0x148]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x128], rdi
               	mov	rdi, qword ptr [rsp + 0x140]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x90], r8
               	mov	r8, qword ptr [rsp + 0x98]
               	mov	r9, qword ptr [rsp + 0x138]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x120], r11
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
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
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
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
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
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
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
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
               	jmp	 <L159>
<L158>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x118], rsi
               	mov	rsi, qword ptr [rsp + 0x130]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x110], rdi
               	mov	rdi, qword ptr [rsp + 0x128]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x88], r8
               	mov	r8, qword ptr [rsp + 0x90]
               	mov	r9, qword ptr [rsp + 0x120]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x108], r11
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
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
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
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
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
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
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
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
               	jmp	 <L171>
<L170>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x100], rsi
               	mov	rsi, qword ptr [rsp + 0x118]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf8], rdi
               	mov	rdi, qword ptr [rsp + 0x110]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x80], r8
               	mov	r8, qword ptr [rsp + 0x88]
               	mov	r9, qword ptr [rsp + 0x108]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xf0], r11
               	jmp	 <L172>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
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
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
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
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
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
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xe8], rsi
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe0], rdi
               	mov	rdi, qword ptr [rsp + 0xf8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	r9, qword ptr [rsp + 0xf0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xd8], r11
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
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
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
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
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
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
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
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xd0], rsi
               	mov	rsi, qword ptr [rsp + 0xe8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc8], rdi
               	mov	rdi, qword ptr [rsp + 0xe0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x70], r8
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	r9, qword ptr [rsp + 0xd8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xc0], r11
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
               	xor	qword ptr [rsp + 0xc0], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
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
               	xor	qword ptr [rsp + 0xc0], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
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
               	xor	qword ptr [rsp + 0xc0], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
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
               	xor	qword ptr [rsp + 0xc0], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
               	jmp	 <L207>
<L206>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xb8], rsi
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb0], rdi
               	mov	rdi, qword ptr [rsp + 0xc8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x68], r8
               	mov	r8, qword ptr [rsp + 0x70]
               	mov	r9, qword ptr [rsp + 0xc0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xa8], r11
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
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	bt	rax, r10
               	jae	 <L213>
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x338], r15
               	mov	qword ptr [rsp + 0x250], r14
               	mov	qword ptr [rsp + 0x258], rbx
               	xor	r10d, r10d
               	xor	r14d, r14d
               	mov	rsi, qword ptr [rsp + 0xb8]
               	xor	r15d, r15d
               	mov	rdi, qword ptr [rsp + 0xb0]
               	xor	ebx, ebx
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	r9, qword ptr [rsp + 0xa8]
               	xor	r13d, r13d
               	jmp	 <L220>
               	nop	dword ptr [rax]
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
               	xor	rbx, r8
               	xor	r15, rdi
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
               	bt	rax, r10
               	jae	 <L225>
               	xor	r13, r9
               	xor	rbx, r8
               	xor	r15, rdi
               	xor	r14, rsi
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
               	xor	rbx, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L228>
<L227>:
               	mov	qword ptr [rsp + 0x268], r13
               	xor	eax, eax
               	mov	r10, qword ptr [rsp + 0x18]
               	mov	r11, rbx
               	mov	r12, qword ptr [rsp + 0x10]
               	mov	rbx, qword ptr [rsp + 0x50]
               	mov	qword ptr [rsp + 0x330], rbp
               	jmp	 <L229>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x268], r9
               	xor	r11, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L231>
<L230>:
               	mov	rax, qword ptr [rsp + 0x248]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x270], rax
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x278], rcx
               	lea	rcx, [rbx + 4*rbx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x8]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x280], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x288], rcx
               	mov	rcx, qword ptr [rsp]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x290], rcx
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x38]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2a0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b0], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0xa0]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2c0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	rcx, qword ptr [rsp + 0x98]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	rcx, qword ptr [rsp + 0x90]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d8], rsi
               	mov	rcx, qword ptr [rsp + 0x88]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x80]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2e0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	rcx, qword ptr [rsp + 0x78]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f0], rcx
               	mov	rcx, qword ptr [rsp + 0x70]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f8], rcx
               	mov	rcx, qword ptr [rsp + 0x68]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rbp, [rcx + 8*rcx]
               	lea	rcx, [r11 + 4*r11]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x300], rbp
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x308], rcx
               	mov	rcx, qword ptr [rsp + 0x258]
               	test	ecx, ecx
               	je	 <L232>
               	mov	qword ptr [rsp + 0x260], rsi
               	mov	qword ptr [rsp + 0x328], r14
               	mov	edi, ecx
               	mov	ebx, 0x28
               	xor	esi, esi
               	vpbroadcastq	ymm5, qword ptr  <memset+0xe80>
               	vpbroadcastw	xmm6, word ptr  <memset+0xf18>
               	lea	r8,  <memset+0xf1c>
               	vmovaps	ymm7, ymmword ptr  <memset+0xee0>
               	vmovq	xmm8, qword ptr  <memset+0xe90>
               	mov	r14, qword ptr [rsp + 0x230]
               	mov	r13, qword ptr [rsp + 0x370]
               	mov	r9, qword ptr [rsp + 0x238]
               	mov	qword ptr [rsp + 0x320], rdi
               	vmovdqu	ymmword ptr [rsp + 0x390], ymm5
               	jmp	 <L233>
               	nop	word ptr [rax + rax]
<L237>:
               	vpblendd	ymm0, ymm9, ymm4, 0xc0  # ymm0 = ymm9[0,1,2,3,4,5],ymm4[6,7]
               	vpermq	ymm0, ymm0, 0x93        # ymm0 = ymm0[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x270]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x2b0]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x2d0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x2f0]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x270], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x290], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2d0], ymm0
               	vpsrlq	ymm2, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2f0], ymm2
               	vmovq	rax, xmm1
               	vextracti128	xmm1, ymm2, 0x1
               	vmovq	rbp, xmm1
               	vpextrq	qword ptr [rsp + 0x260], xmm0, 0x1
               	add	rbx, 0x30
               	cmp	rdi, rsi
               	je	 <L234>
<L233>:
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x278]
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x298]
               	vpand	ymm0, ymm9, ymm5
               	vpand	ymm1, ymm4, ymm5
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm2, xmm0, xmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x2b8]
               	vpshufb	xmm0, xmm0, xmm6
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	movsxd	rax, dword ptr [r8 + 4*rax]
               	add	rax, r8
               	jmp	rax
               	mov	qword ptr [r14 + rbx - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Circle>(void*)>
               	jmp	 <L235>
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L236>
               	vpextrb	eax, xmm2, 0x7
               	vcvtsi2ss	xmm1, xmm10, eax
               	mov	qword ptr [r14 + rbx - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Triangle>(void*)>
               	mov	qword ptr [r14 + rbx], rax
               	vmovss	dword ptr [r14 + rbx - 0x8], xmm1
               	vpunpcklbw	xmm0, xmm2, xmm0 # xmm0 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
               	vpshufb	xmm0, xmm0, xmm8
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [r14 + rbx - 0x28], ymm0
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L237>
               	jmp	 <L238>
               	mov	edi, 0x60
               	mov	rax, r13
               	mov	r13, rsi
               	mov	rsi, qword ptr  <memset+0x8220>
               	mov	qword ptr [rsp + 0x10], r12
               	mov	r12, rax
               	mov	qword ptr [rsp + 0x238], rbp
               	mov	rbp, r9
               	mov	qword ptr [rsp + 0x18], r10
               	mov	r14, rbx
               	mov	rbx, r11
               	vmovdqu	ymmword ptr [rsp + 0x350], ymm4
               	vmovdqu	ymmword ptr [rsp + 0x370], ymm9
               	vmovdqa	xmmword ptr [rsp + 0x310], xmm2
               	vzeroupper
               	call	 <_ZnwmRKSt9nothrow_t@plt>
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x370]
               	vmovq	xmm8, qword ptr  <memset+0xe90>
               	vmovaps	ymm7, ymmword ptr  <memset+0xee0>
               	lea	r8,  <memset+0xf1c>
               	vpbroadcastw	xmm6, word ptr  <memset+0xf18>
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x390]
               	mov	rdi, qword ptr [rsp + 0x320]
               	mov	rsi, r13
               	mov	r11, rbx
               	mov	rbx, r14
               	mov	r10, qword ptr [rsp + 0x18]
               	mov	r9, rbp
               	mov	r13, r12
               	mov	r12, qword ptr [rsp + 0x10]
               	mov	r14, qword ptr [rsp + 0x230]
               	mov	qword ptr [r14 + rbx - 0x28], rax
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [r14 + rbx - 0x20], ymm0
               	lea	rcx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Head@Evaluation.CRTP.Head>(void*)>
               	mov	qword ptr [r14 + rbx], rcx
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x310]
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm1, ymm0, ymm7
               	vmovups	ymmword ptr [rax], ymm1
               	vmovdqu	xmm1, xmmword ptr [rsp + 0x2c8]
               	vpshufb	xmm1, xmm1, xmmword ptr  <memset+0xea0>
               	vcvtdq2ps	xmm1, xmm1
               	movzx	ecx, byte ptr [rsp + 0x260]
               	vcvtsi2ss	xmm2, xmm10, ecx
               	vmovlps	qword ptr [rax + 0x20], xmm1
               	vmovss	dword ptr [rax + 0x28], xmm2
               	vshufps	xmm0, xmm0, xmm0, 0xff  # xmm0 = xmm0[3,3,3,3]
               	vmovss	dword ptr [rax + 0x2c], xmm0
               	vmovups	xmm3, xmmword ptr [rsp + 0x2e0]
               	vshufps	xmm3, xmm3, xmmword ptr [rsp + 0x2f0], 0x88 # xmm3 = xmm3[0,2],mem[0,2]
               	vandps	xmm3, xmm3, xmmword ptr  <memset+0xec0>
               	vcvtdq2ps	xmm3, xmm3
               	vshufps	xmm4, xmm3, xmm3, 0xd8  # xmm4 = xmm3[0,2,1,3]
               	vmovups	xmmword ptr [rax + 0x30], xmm4
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x350]
               	vmovlps	qword ptr [rax + 0x40], xmm1
               	movzx	ecx, byte ptr [rsp + 0x238]
               	vcvtsi2ss	xmm1, xmm10, ecx
               	vmovss	dword ptr [rax + 0x48], xmm2
               	vmovss	dword ptr [rax + 0x4c], xmm0
               	vmovss	dword ptr [rax + 0x50], xmm1
               	vshufps	xmm0, xmm3, xmm3, 0xe6  # xmm0 = xmm3[2,1,2,3]
               	vmovlps	qword ptr [rax + 0x54], xmm0
               	vextractps	dword ptr [rax + 0x5c], xmm3, 0x3
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L237>
               	jmp	 <L238>
               	mov	qword ptr [r14 + rbx - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(void*)>
               	jmp	 <L239>
               	mov	qword ptr [r14 + rbx - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Rectangle>(void*)>
               	jmp	 <L240>
               	mov	qword ptr [r14 + rbx - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Square>(void*)>
               	jmp	 <L235>
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(void*)>
               	mov	qword ptr [r14 + rbx], rax
               	vpunpcklbw	xmm1, xmm2, xmm0 # xmm1 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
               	vpshufb	xmm1, xmm1, xmm8
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpsrlq	xmm2, xmm2, 0x38
               	vpmovzxbq	xmm3, word ptr  <memset+0xf1a>
               	vpblendvb	xmm0, xmm0, xmm2, xmm3
               	jmp	 <L241>
               	mov	qword ptr [r14 + rbx - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipse>(void*)>
<L240>:
               	mov	qword ptr [r14 + rbx], rax
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm7
               	vmovups	ymmword ptr [r14 + rbx - 0x28], ymm1
               	vpextrb	eax, xmm0, 0x0
               	jmp	 <L242>
               	mov	qword ptr [r14 + rbx - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cube@Evaluation.CRTP.Cube>(void*)>
               	jmp	 <L235>
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>(void*)>
<L236>:
               	mov	qword ptr [r14 + rbx], rax
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm7
<L241>:
               	vmovups	ymmword ptr [r14 + rbx - 0x28], ymm1
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [r14 + rbx - 0x8], xmm0
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L237>
               	jmp	 <L238>
               	mov	qword ptr [r14 + rbx - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cone@Evaluation.CRTP.Cone>(void*)>
<L239>:
               	mov	qword ptr [r14 + rbx], rax
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm7
               	vmovups	ymmword ptr [r14 + rbx - 0x28], ymm1
               	vpextrb	eax, xmm0, 0x1
<L242>:
               	vcvtsi2ss	xmm0, xmm10, eax
               	vmovss	dword ptr [r14 + rbx - 0x8], xmm0
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L237>
               	jmp	 <L238>
               	mov	qword ptr [r14 + rbx - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Sphere@Evaluation.CRTP.Sphere>(void*)>
<L235>:
               	mov	qword ptr [r14 + rbx], rax
               	vpmovzxbd	ymm0, xmm2      # ymm0 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymm7
               	vmovups	ymmword ptr [r14 + rbx - 0x28], ymm0
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L237>
<L238>:
               	mov	rdx, qword ptr [rsp + 0x248]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x340]
               	xor	rcx, r13
               	xor	r9, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x248], rdx
               	xor	r13, r9
               	mov	qword ptr [rsp + 0x370], r13
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x238], r9
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x340], rcx
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x338]
               	mov	rdx, qword ptr [rsp + 0x240]
               	xor	rcx, rdx
               	mov	rdi, qword ptr [rsp + 0x228]
               	xor	rdi, r8
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x60], r8
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x240], rdx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x338], rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x228], rdi
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x330]
               	xor	r12, rcx
               	xor	r10, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x50], rdx
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x330], rcx
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x10], r12
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x18], r10
               	mov	rdi, qword ptr [rsp + 0x8]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x218]
               	mov	r12, qword ptr [rsp + 0x210]
               	xor	rdx, r12
               	mov	rcx, qword ptr [rsp + 0x220]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x8], rdi
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x210], r12
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x218], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x220], rcx
               	mov	rdi, qword ptr [rsp]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x200]
               	mov	r8, qword ptr [rsp + 0x1f8]
               	xor	rdx, r8
               	mov	rcx, qword ptr [rsp + 0x208]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp], rdi
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x1f8], r8
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x208], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x200], rdx
               	mov	rdi, qword ptr [rsp + 0x48]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1e8]
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	mov	qword ptr [rsp + 0x350], r11
               	mov	r11, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x1f0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x48], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x1e0], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1e8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1f0], rcx
               	mov	rdi, qword ptr [rsp + 0x40]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1d0]
               	mov	r13, qword ptr [rsp + 0x1c8]
               	xor	rdx, r13
               	mov	rcx, qword ptr [rsp + 0x1d8]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x40], rdi
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x1c8], r13
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1d0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1d8], rcx
               	mov	rdi, qword ptr [rsp + 0x38]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1b8]
               	mov	r10, qword ptr [rsp + 0x1b0]
               	xor	rdx, r10
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x38], rdi
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x1b0], r10
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1b8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1c0], rcx
               	mov	rdi, qword ptr [rsp + 0x30]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1a0]
               	mov	rbp, qword ptr [rsp + 0x198]
               	xor	rdx, rbp
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x30], rdi
               	xor	rbp, rcx
               	mov	qword ptr [rsp + 0x198], rbp
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1a8], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1a0], rdx
               	mov	rdi, qword ptr [rsp + 0x28]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x188]
               	mov	r9, qword ptr [rsp + 0x180]
               	xor	rdx, r9
               	mov	rcx, qword ptr [rsp + 0x190]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x28], rdi
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x180], r9
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x188], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x190], rcx
               	mov	rdi, qword ptr [rsp + 0x20]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x170]
               	mov	rcx, qword ptr [rsp + 0x168]
               	mov	qword ptr [rsp + 0x310], rbx
               	mov	rbx, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x178]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x20], rdi
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x168], rbx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x170], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x178], rcx
               	mov	rbp, qword ptr [rsp + 0xa0]
               	mov	rax, rbp
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x158]
               	mov	r14, qword ptr [rsp + 0x150]
               	xor	rdx, r14
               	mov	rcx, qword ptr [rsp + 0x160]
               	xor	rcx, rbp
               	xor	rbp, rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x150], r14
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x158], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x160], rcx
               	mov	r14, qword ptr [rsp + 0x98]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x140]
               	mov	rcx, qword ptr [rsp + 0x138]
               	mov	r12, r15
               	mov	r15, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x148]
               	xor	rcx, r14
               	xor	r14, rdx
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x138], r15
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x148], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x140], rdx
               	mov	r15, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x348], rsi
               	mov	rsi, r15
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x128]
               	mov	rax, qword ptr [rsp + 0x120]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x130]
               	xor	rcx, r15
               	xor	r15, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x120], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x128], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x130], rcx
               	mov	rbx, qword ptr [rsp + 0x88]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x110]
               	mov	rsi, qword ptr [rsp + 0x108]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x118]
               	xor	rcx, rbx
               	xor	rbx, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x108], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x110], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x118], rcx
               	mov	r11, qword ptr [rsp + 0x80]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xf8]
               	mov	rsi, qword ptr [rsp + 0xf0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x100]
               	xor	rcx, r11
               	xor	r11, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xf0], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xf8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x100], rcx
               	mov	r10, qword ptr [rsp + 0x78]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xe0]
               	mov	rsi, qword ptr [rsp + 0xd8]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xe8]
               	xor	rcx, r10
               	xor	r10, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xd8], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xe8], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xe0], rdx
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc8]
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xd0]
               	xor	rcx, r9
               	xor	r9, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xc0], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xc8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xd0], rcx
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xb0]
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xb8]
               	xor	rcx, r8
               	xor	r8, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xa8], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xb0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xb8], rcx
               	mov	rax, qword ptr [rsp + 0x350]
               	shl	rax, 0x11
               	mov	r13, qword ptr [rsp + 0x268]
               	xor	r12, r13
               	mov	rdi, qword ptr [rsp + 0x328]
               	xor	rdi, qword ptr [rsp + 0x350]
               	xor	qword ptr [rsp + 0x350], r12
               	xor	r12, rax
               	mov	rax, qword ptr [rsp + 0x248]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x50]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rsi, qword ptr [rsp + 0x8]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x270], rax
               	mov	qword ptr [rsp + 0x278], rcx
               	mov	rcx, qword ptr [rsp]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x280], rdx
               	mov	rdx, qword ptr [rsp + 0x48]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x288], rsi
               	mov	rsi, qword ptr [rsp + 0x40]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x290], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x298], rdx
               	mov	rdx, qword ptr [rsp + 0x30]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2a0], rsi
               	mov	rsi, qword ptr [rsp + 0x28]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2b0], rdx
               	mov	qword ptr [rsp + 0xa0], rbp
               	lea	rdx, [4*rbp]
               	add	rdx, rbp
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2b8], rsi
               	mov	qword ptr [rsp + 0x98], r14
               	lea	rsi, [r14 + 4*r14]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2c0], rcx
               	mov	qword ptr [rsp + 0x90], r15
               	lea	rcx, [r15 + 4*r15]
               	mov	r15, r12
               	rol	rcx, 0x7
               	lea	rbp, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c8], rdx
               	mov	qword ptr [rsp + 0x88], rbx
               	lea	rcx, [rbx + 4*rbx]
               	mov	rbx, qword ptr [rsp + 0x310]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2d0], rsi
               	mov	rsi, qword ptr [rsp + 0x348]
               	mov	r14, qword ptr [rsp + 0x230]
               	mov	qword ptr [rsp + 0x80], r11
               	lea	rdx, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x350]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	r12, rbp
               	mov	qword ptr [rsp + 0x260], rbp
               	mov	qword ptr [rsp + 0x2d8], rbp
               	mov	qword ptr [rsp + 0x2e0], rcx
               	mov	qword ptr [rsp + 0x78], r10
               	lea	rcx, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x18]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2e8], rdx
               	mov	qword ptr [rsp + 0x70], r9
               	lea	rdx, [r9 + 4*r9]
               	mov	r9, qword ptr [rsp + 0x238]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2f0], rcx
               	mov	qword ptr [rsp + 0x68], r8
               	lea	rcx, [r8 + 4*r8]
               	lea	r8,  <memset+0xf1c>
               	rol	rcx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	rbp, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f8], rdx
               	lea	rcx, [r11 + 4*r11]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x300], rbp
               	mov	qword ptr [rsp + 0x308], rcx
               	xor	r13, rdi
               	mov	qword ptr [rsp + 0x268], r13
               	mov	r13, qword ptr [rsp + 0x370]
               	mov	r12, qword ptr [rsp + 0x10]
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x328], rdi
               	mov	rdi, qword ptr [rsp + 0x320]
               	add	rbx, 0x30
               	cmp	rdi, rsi
               	jne	 <L233>
<L234>:
               	shl	rsi, 0x4
               	lea	rcx, [rsi + 2*rsi]
               	mov	rax, rcx
               	shr	rax, 0x4
               	imul	r13d, eax, 0xaaaaaaab
               	test	r13d, r13d
               	je	 <L243>
               	mov	qword ptr [rsp], rcx
               	mov	qword ptr [rsp + 0x310], rbx
               	vxorps	xmm0, xmm0, xmm0
               	vmovups	ymmword ptr [rsp + 0x2d0], ymm0
               	vmovups	ymmword ptr [rsp + 0x2b0], ymm0
               	vmovups	ymmword ptr [rsp + 0x290], ymm0
               	vmovups	ymmword ptr [rsp + 0x270], ymm0
               	lea	rbx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Circle>(void*)>
               	mov	r15, r14
               	jmp	 <L244>
               	nop	word ptr cs:[rax + rax]
<L245>:
               	vmovss	xmm0, dword ptr [rsp + 0x274]
               	vmovss	dword ptr [rsp + 0x278], xmm0
               	mov	ebp, 0x1
<L269>:
               	mov	eax, ebp
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x270]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r15, r12
<L244>:
               	mov	eax, r13d
               	neg	eax
               	and	eax, r13d
               	lea	r12, [rax + 2*rax]
               	shl	r12, 0x4
               	add	r12, r15
               	test	eax, eax
               	je	 <L245>
               	mov	qword ptr [rsp + 0x8], rax
               	mov	dword ptr [rsp + 0x50], r13d
               	xor	ecx, ecx
               	mov	r13d, 0x1
               	mov	r14d, 0x1
               	jmp	 <L246>
               	nop	word ptr [rax + rax]
<L261>:
               	mov	r13d, ebp
               	movsxd	rax, ebp
               	vmovss	dword ptr [rsp + 4*rax + 0x270], xmm0
               	add	r15, 0x30
               	mov	ecx, 0xfffffffe
               	sub	ecx, r14d
               	lea	edx, [r14 + 0x1]
               	bsr	esi, edx
               	xor	esi, 0x1f
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r14d, edx
               	cmp	r15, r12
               	je	 <L247>
<L246>:
               	mov	ebp, ecx
               	mov	rdi, r15
               	vzeroupper
               	call	qword ptr [r15 + 0x28]
               	cmp	rdx, rbx
               	je	 <L248>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipse>(void*)>
               	cmp	rdx, rcx
               	je	 <L249>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Rectangle>(void*)>
               	cmp	rdx, rcx
               	je	 <L250>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Square>(void*)>
               	cmp	rdx, rcx
               	je	 <L251>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Triangle>(void*)>
               	cmp	rdx, rcx
               	je	 <L252>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cube@Evaluation.CRTP.Cube>(void*)>
               	cmp	rdx, rcx
               	je	 <L253>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>(void*)>
               	cmp	rdx, rcx
               	je	 <L254>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(void*)>
               	cmp	rdx, rcx
               	je	 <L255>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Sphere@Evaluation.CRTP.Sphere>(void*)>
               	cmp	rdx, rcx
               	je	 <L256>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(void*)>
               	cmp	rdx, rcx
               	je	 <L257>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cone@Evaluation.CRTP.Cone>(void*)>
               	cmp	rdx, rcx
               	je	 <L258>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rdx, rcx
               	je	 <L259>
<L256>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <memset+0xf14>
               	jmp	 <L260>
               	nop
<L248>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf04>
               	mov	ecx, ebp
               	sub	ecx, r13d
               	jl	 <L261>
               	jmp	 <L262>
               	nop	word ptr cs:[rax + rax]
<L249>:
               	vmovss	xmm0, dword ptr  <memset+0xf04>
<L263>:
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	mov	ecx, ebp
               	sub	ecx, r13d
               	jl	 <L261>
               	jmp	 <L262>
<L250>:
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	mov	ecx, ebp
               	sub	ecx, r13d
               	jl	 <L261>
               	jmp	 <L262>
<L251>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	mov	ecx, ebp
               	sub	ecx, r13d
               	jl	 <L261>
               	jmp	 <L262>
<L252>:
               	vmovss	xmm0, dword ptr  <memset+0xf0c>
               	jmp	 <L263>
<L253>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
<L260>:
               	vmulss	xmm0, xmm1, xmm0
               	mov	ecx, ebp
               	sub	ecx, r13d
               	jl	 <L261>
               	jmp	 <L262>
<L254>:
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
               	mov	ecx, ebp
               	sub	ecx, r13d
               	jl	 <L261>
               	jmp	 <L262>
<L255>:
               	vmovss	xmm0, dword ptr  <memset+0xf08>
<L267>:
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
               	mov	ecx, ebp
               	sub	ecx, r13d
               	jl	 <L261>
               	jmp	 <L262>
<L257>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf04>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	mov	ecx, ebp
               	sub	ecx, r13d
               	jl	 <L261>
               	jmp	 <L262>
<L258>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf00>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	mov	ecx, ebp
               	sub	ecx, r13d
               	jl	 <L261>
<L262>:
               	movsxd	rax, r13d
               	cmp	ecx, 0x1f
               	jb	 <L264>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vblendps	xmm0, xmm0, xmmword ptr , 0xe <memset+0xeb0> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0x2d0]
               	lea	rsi, [rsi + 4*rax]
               	vxorps	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vxorps	xmm2, xmm2, xmm2
               	vxorps	xmm3, xmm3, xmm3
               	nop	word ptr [rax + rax]
<L265>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi + 4*rdi - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rsi + 4*rdi - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rsi + 4*rdi]
               	add	rdi, 0x20
               	cmp	rdx, rdi
               	jne	 <L265>
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
               	je	 <L261>
               	add	rax, rdx
<L264>:
               	mov	ecx, ebp
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x270
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L266>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L266>
               	jmp	 <L261>
<L259>:
               	vmovss	xmm0, dword ptr  <memset+0xf14>
               	jmp	 <L267>
               	nop
<L247>:
               	mov	r13d, dword ptr [rsp + 0x50]
               	sub	r13d, dword ptr [rsp + 0x8]
               	je	 <L268>
               	vmovss	dword ptr [rsp + 4*rax + 0x274], xmm0
               	mov	r15, r12
               	test	ebp, ebp
               	jns	 <L269>
               	jmp	 <L244>
<L268>:
               	mov	r15, qword ptr [rsp + 0x250]
               	mov	r14, qword ptr [rsp + 0x230]
               	mov	rbx, qword ptr [rsp + 0x310]
               	mov	rcx, qword ptr [rsp]
               	test	rcx, rcx
               	je	 <L270>
<L276>:
               	vmovaps	xmmword ptr [rsp + 0x50], xmm0
               	add	rbx, -0x28
               	nop	word ptr cs:[rax + rax]
<L271>:
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [r14 + 0x28]
               	mov	rdi, rax
               	call	rdx
               	add	r14, 0x30
               	add	rbx, -0x30
               	jne	 <L271>
               	mov	r14, qword ptr [rsp + 0x230]
               	vmovaps	xmm0, xmmword ptr [rsp + 0x50]
               	test	r14, r14
               	mov	rbx, qword ptr [rsp + 0x258]
               	jne	 <L272>
<L275>:
               	cmp	r15d, 0x2a
               	je	 <L273>
               	jmp	 <L274>
<L232>:
               	vxorps	xmm0, xmm0, xmm0
               	mov	r14, qword ptr [rsp + 0x230]
               	mov	r15, qword ptr [rsp + 0x250]
               	test	r14, r14
               	mov	rbx, qword ptr [rsp + 0x258]
               	jne	 <L272>
               	jmp	 <L275>
<L243>:
               	vxorps	xmm0, xmm0, xmm0
               	mov	r15, qword ptr [rsp + 0x250]
               	test	rcx, rcx
               	jne	 <L276>
<L270>:
               	mov	rbx, qword ptr [rsp + 0x258]
<L272>:
               	vmovaps	xmmword ptr [rsp + 0x50], xmm0
               	mov	rdi, r14
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x50]
               	cmp	r15d, 0x2a
               	jne	 <L274>
<L273>:
               	cmp	ebx, 0x186a0
               	jne	 <L274>
               	vucomiss	xmm0, dword ptr  <memset+0xf10>
               	jne	 <L277>
<L274>:
               	xor	eax, eax
               	add	rsp, 0x3b8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	ret
<L277>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x50], xmm0
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x50]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x8228>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Circle>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Circle>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipse>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipse>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Rectangle>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Rectangle>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Square>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Square>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Triangle>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Triangle>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cube@Evaluation.CRTP.Cube>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cube@Evaluation.CRTP.Cube>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Sphere@Evaluation.CRTP.Sphere>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Sphere@Evaluation.CRTP.Sphere>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cone@Evaluation.CRTP.Cone>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cone@Evaluation.CRTP.Cone>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Head@Evaluation.CRTP.Head>(void*)>:
               	mov	rax, qword ptr [rdi]
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Head@Evaluation.CRTP.Head>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Head@Evaluation.CRTP.Head>(void*)>:
               	test	rdi, rdi
               	je	 <L0>
               	push	rax
               	call	 <_ZdlPv@plt>
               	add	rsp, 0x8
<L0>:
               	lea	rax,  <memset+0x7fe0>
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

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>:
               	lea	rax,  <memset+0x7fc8>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cone@Evaluation.CRTP.Cone>(void*)>:
               	lea	rax,  <memset+0x7fb0>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(void*)>:
               	lea	rax,  <memset+0x7f98>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Sphere@Evaluation.CRTP.Sphere>(void*)>:
               	lea	rax,  <memset+0x7f80>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(void*)>:
               	lea	rax,  <memset+0x7f68>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>(void*)>:
               	lea	rax,  <memset+0x7f50>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cube@Evaluation.CRTP.Cube>(void*)>:
               	lea	rax,  <memset+0x7f38>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Triangle>(void*)>:
               	lea	rax,  <memset+0x7f20>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Square>(void*)>:
               	lea	rax,  <memset+0x7f08>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Rectangle>(void*)>:
               	lea	rax,  <memset+0x7ef0>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipse>(void*)>:
               	lea	rax,  <memset+0x7ed8>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Circle>(void*)>:
               	lea	rax,  <memset+0x7ec0>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x8200>
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

<_ZdlPv@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>

<_ZnwmRKSt9nothrow_t@plt>:
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
