
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
               	call	qword ptr  <memset+0x79e0>
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
               	mov	rax, qword ptr  <memset+0x79f0>
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
               	mov	rax, qword ptr  <memset+0x79f8>
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
               	cmp	qword ptr , 0x0 <memset+0x7a00>
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

<initializer for module Evaluation.Dependency.TypeErasure>:
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
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
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
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	call	 <initializer for module Meta.Auto.Simd.Int32>
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
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Tag>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW3Tag__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW3Tag__in_chrg>
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

<initializer for module Meta.Auto.Simd.Int32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	jmp	 <initializer for module Std>
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
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	call	 <initializer for module Meta.Auto.Array.Bounded>
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
               	jmp	 <initializer for module Std>
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
               	jmp	 <initializer for module Std>
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
               	jmp	 <initializer for module Std>
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

<initializer for module Meta.Memory.Size.Compare>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW7Compare__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW7Compare__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	int3
               	int3

<initializer for module Meta.Memory.Count>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW5Count__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW5Count__in_chrg>
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

<initializer for module Meta.Memory.Alignment>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW9Alignment__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW9Alignment__in_chrg>
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

<initializer for module Meta.Random.Xoroshiro>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6RandomW9Xoroshiro__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6RandomW9Xoroshiro__in_chrg>
               	call	 <initializer for module Meta.Random.Splitmix>
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Circle__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.CircularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Shape3D>
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

<initializer for module Evaluation.CRTP.Shape3D>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW7Shape3D__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW7Shape3D__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.ExtendedShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW13ExtendedShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW13ExtendedShape__in_chrg>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW7Ellipse__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.CircularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Shape3D>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Rectangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW9Rectangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW9Rectangle__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.RectangularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Shape3D>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Square__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.RectangularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Shape3D>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW8Triangle__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.TriangularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Shape3D>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW9CubicBody__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.Fraction>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW13PyramidicBody__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.Fraction>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW11SphericBody__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
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
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	call	 <initializer for module Evaluation.CRTP.Ellipse>
               	call	 <initializer for module Evaluation.CRTP.Rectangle>
               	call	 <initializer for module Evaluation.CRTP.Square>
               	call	 <initializer for module Evaluation.CRTP.Triangle>
               	call	 <initializer for module Evaluation.CRTP.Shape3D>
               	call	 <initializer for module Evaluation.CRTP.Cube>
               	call	 <initializer for module Evaluation.CRTP.CubicBody>
               	call	 <initializer for module Evaluation.CRTP.Cuboid>
               	call	 <initializer for module Evaluation.CRTP.Pyramid>
               	call	 <initializer for module Evaluation.CRTP.PyramidicBody>
               	call	 <initializer for module Evaluation.CRTP.Sphere>
               	call	 <initializer for module Evaluation.CRTP.BasicSphere>
               	call	 <initializer for module Evaluation.CRTP.Cylinder>
               	call	 <initializer for module Evaluation.CRTP.Cone>
               	call	 <initializer for module Evaluation.CRTP.Ellipsoid>
               	call	 <initializer for module Evaluation.CRTP.SphericBody>
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
               	int3

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x728
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	rbx, byte ptr [rcx]
               	add	rbx, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	dword ptr [rax]
<L1>:
               	lea	rsi, [rbx + 4*rbx]
               	movsx	rdx, dl
               	lea	rbx, [rdx + 2*rsi]
               	add	rbx, -0x30
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	r12, byte ptr [rax]
               	add	r12, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop
<L3>:
               	lea	rdx, [r12 + 4*r12]
               	movsx	rcx, cl
               	lea	r12, [rcx + 2*rdx]
               	add	r12, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movabs	r14, 0x180ec6d33cfd0aba
               	mov	rdi, r12
               	shl	rdi, 0x8
               	mov	rsi, qword ptr  <memset+0x7a08>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vpbroadcastq	ymm0, rbx
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0x1000>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rcx, -0x61c8864680b583eb
               	mov	qword ptr [rsp + 0x28], rbx
               	add	rcx, rbx
               	shr	rcx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rcx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x1020>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x1028>
               	mov	qword ptr [rsp + 0x18], rax
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x300], ymm0
               	vmovq	r8, xmm0
               	vpextrq	r10, xmm0, 0x1
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	rbx, xmm0
               	vpextrq	r15, xmm0, 0x1
               	xor	eax, eax
               	xor	esi, esi
               	xor	edi, edi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	jmp	 <L4>
               	nop
<L6>:
               	mov	rcx, r10
               	shl	rcx, 0x11
               	xor	rbx, r8
               	xor	r15, r10
               	xor	r10, rbx
               	xor	r8, r15
               	xor	rbx, rcx
               	rorx	r15, r15, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L5>
<L4>:
               	bt	r14, rax
               	jae	 <L6>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r15
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
               	xor	r15, r10
               	xor	r10, rbx
               	xor	r8, r15
               	xor	rbx, rdx
               	rorx	r15, r15, 0x13
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L8>
<L7>:
               	bt	rax, rcx
               	jae	 <L9>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r15
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x20], r12
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	dword ptr [rax]
<L12>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	rbx, r8
               	xor	r15, r10
               	xor	r10, rbx
               	xor	r8, r15
               	xor	rbx, r12
               	rorx	r15, r15, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L11>
<L10>:
               	bt	rcx, rdx
               	jae	 <L12>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r15
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r12d, r12d
               	jmp	 <L13>
               	nop	dword ptr [rax + rax]
<L15>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	rbx, r8
               	xor	r15, r10
               	xor	r10, rbx
               	xor	r8, r15
               	xor	rbx, r13
               	rorx	r15, r15, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L14>
<L13>:
               	bt	rdx, r12
               	jae	 <L15>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r15
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0x320], r11
               	mov	qword ptr [rsp + 0x328], r9
               	mov	qword ptr [rsp + 0x330], rdi
               	mov	qword ptr [rsp + 0x338], rsi
               	xor	r12d, r12d
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	xor	r15d, r15d
               	jmp	 <L16>
               	nop	dword ptr [rax]
<L18>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L17>
<L16>:
               	bt	r14, r12
               	jae	 <L18>
               	xor	r15, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L18>
<L17>:
               	xor	r12d, r12d
               	jmp	 <L19>
               	nop
<L21>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L20>
<L19>:
               	bt	rax, r12
               	jae	 <L21>
               	xor	r15, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L21>
<L20>:
               	xor	r12d, r12d
               	jmp	 <L22>
               	nop
<L24>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L23>
<L22>:
               	bt	rcx, r12
               	jae	 <L24>
               	xor	r15, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L24>
<L23>:
               	xor	r12d, r12d
               	jmp	 <L25>
               	nop
<L27>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L26>
<L25>:
               	bt	rdx, r12
               	jae	 <L27>
               	xor	r15, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0x340], r15
               	mov	qword ptr [rsp + 0x348], rbx
               	mov	qword ptr [rsp + 0x350], r10
               	mov	qword ptr [rsp + 0x358], r8
               	xor	edi, edi
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r12d, r12d
               	jmp	 <L28>
               	nop	dword ptr [rax + rax]
<L30>:
               	mov	r13, rbx
               	shl	r13, 0x11
               	xor	r10, r15
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r15, r8
               	xor	r10, r13
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L29>
<L28>:
               	bt	r14, rdi
               	jae	 <L30>
               	xor	r12, r15
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L30>
<L29>:
               	xor	edi, edi
               	jmp	 <L31>
               	nop	dword ptr [rax]
<L33>:
               	mov	r13, rbx
               	shl	r13, 0x11
               	xor	r10, r15
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r15, r8
               	xor	r10, r13
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L32>
<L31>:
               	bt	rax, rdi
               	jae	 <L33>
               	xor	r12, r15
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L33>
<L32>:
               	xor	edi, edi
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
               	mov	r13, rbx
               	shl	r13, 0x11
               	xor	r10, r15
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r15, r8
               	xor	r10, r13
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L35>
<L34>:
               	bt	rcx, rdi
               	jae	 <L36>
               	xor	r12, r15
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L36>
<L35>:
               	xor	edi, edi
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
               	mov	r13, rbx
               	shl	r13, 0x11
               	xor	r10, r15
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r15, r8
               	xor	r10, r13
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L38>
<L37>:
               	bt	rdx, rdi
               	jae	 <L39>
               	xor	r12, r15
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L39>
<L38>:
               	mov	qword ptr [rsp + 0x360], r12
               	mov	qword ptr [rsp + 0x368], r11
               	mov	qword ptr [rsp + 0x370], r9
               	mov	qword ptr [rsp + 0x378], rsi
               	xor	r15d, r15d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L40>
               	nop	dword ptr [rax + rax]
<L42>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r12
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r12, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L41>
<L40>:
               	bt	r14, r15
               	jae	 <L42>
               	xor	rbx, r12
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L42>
<L41>:
               	xor	r15d, r15d
               	jmp	 <L43>
               	nop
<L45>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r12
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r12, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L44>
<L43>:
               	bt	rax, r15
               	jae	 <L45>
               	xor	rbx, r12
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L45>
<L44>:
               	xor	r15d, r15d
               	jmp	 <L46>
               	nop
<L48>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r12
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r12, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L47>
<L46>:
               	bt	rcx, r15
               	jae	 <L48>
               	xor	rbx, r12
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L48>
<L47>:
               	xor	r15d, r15d
               	jmp	 <L49>
               	nop
<L51>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r12
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r12, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L50>
<L49>:
               	bt	rdx, r15
               	jae	 <L51>
               	xor	rbx, r12
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L51>
<L50>:
               	mov	qword ptr [rsp + 0x380], rbx
               	mov	qword ptr [rsp + 0x388], r10
               	mov	qword ptr [rsp + 0x390], r8
               	mov	qword ptr [rsp + 0x398], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L52>
               	nop	dword ptr [rax]
<L54>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L53>
<L52>:
               	bt	r14, r12
               	jae	 <L54>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L54>
<L53>:
               	xor	r12d, r12d
               	jmp	 <L55>
               	nop
<L57>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L56>
<L55>:
               	bt	rax, r12
               	jae	 <L57>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L57>
<L56>:
               	xor	r12d, r12d
               	jmp	 <L58>
               	nop
<L60>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L59>
<L58>:
               	bt	rcx, r12
               	jae	 <L60>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L60>
<L59>:
               	xor	r12d, r12d
               	jmp	 <L61>
               	nop
<L63>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L62>
<L61>:
               	bt	rdx, r12
               	jae	 <L63>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L63>
<L62>:
               	mov	qword ptr [rsp + 0x3a0], r15
               	mov	qword ptr [rsp + 0x3a8], r11
               	mov	qword ptr [rsp + 0x3b0], r9
               	mov	qword ptr [rsp + 0x3b8], rsi
               	xor	r12d, r12d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L64>
               	nop	dword ptr [rax + rax]
<L66>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L65>
<L64>:
               	bt	r14, r12
               	jae	 <L66>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L66>
<L65>:
               	xor	r12d, r12d
               	jmp	 <L67>
               	nop
<L69>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L68>
<L67>:
               	bt	rax, r12
               	jae	 <L69>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L69>
<L68>:
               	xor	r12d, r12d
               	jmp	 <L70>
               	nop
<L72>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L71>
<L70>:
               	bt	rcx, r12
               	jae	 <L72>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L72>
<L71>:
               	xor	r12d, r12d
               	jmp	 <L73>
               	nop
<L75>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L74>
<L73>:
               	bt	rdx, r12
               	jae	 <L75>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L75>
<L74>:
               	mov	qword ptr [rsp + 0x3c0], rbx
               	mov	qword ptr [rsp + 0x3c8], r10
               	mov	qword ptr [rsp + 0x3d0], r8
               	mov	qword ptr [rsp + 0x3d8], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L76>
               	nop	dword ptr [rax]
<L78>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L77>
<L76>:
               	bt	r14, r12
               	jae	 <L78>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L78>
<L77>:
               	xor	r12d, r12d
               	jmp	 <L79>
               	nop
<L81>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L80>
<L79>:
               	bt	rax, r12
               	jae	 <L81>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L81>
<L80>:
               	xor	r12d, r12d
               	jmp	 <L82>
               	nop
<L84>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L83>
<L82>:
               	bt	rcx, r12
               	jae	 <L84>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L84>
<L83>:
               	xor	r12d, r12d
               	jmp	 <L85>
               	nop
<L87>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L86>
<L85>:
               	bt	rdx, r12
               	jae	 <L87>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L87>
<L86>:
               	mov	qword ptr [rsp + 0x3e0], r15
               	mov	qword ptr [rsp + 0x3e8], r11
               	mov	qword ptr [rsp + 0x3f0], r9
               	mov	qword ptr [rsp + 0x3f8], rsi
               	xor	r12d, r12d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L88>
               	nop	dword ptr [rax + rax]
<L90>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L89>
<L88>:
               	bt	r14, r12
               	jae	 <L90>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L90>
<L89>:
               	xor	r12d, r12d
               	jmp	 <L91>
               	nop
<L93>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L92>
<L91>:
               	bt	rax, r12
               	jae	 <L93>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L93>
<L92>:
               	xor	r12d, r12d
               	jmp	 <L94>
               	nop
<L96>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L95>
<L94>:
               	bt	rcx, r12
               	jae	 <L96>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L96>
<L95>:
               	xor	r12d, r12d
               	jmp	 <L97>
               	nop
<L99>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L98>
<L97>:
               	bt	rdx, r12
               	jae	 <L99>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L99>
<L98>:
               	mov	qword ptr [rsp + 0x400], rbx
               	mov	qword ptr [rsp + 0x408], r10
               	mov	qword ptr [rsp + 0x410], r8
               	mov	qword ptr [rsp + 0x418], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L100>
               	nop	dword ptr [rax]
<L102>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L101>
<L100>:
               	bt	r14, r12
               	jae	 <L102>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L102>
<L101>:
               	xor	r12d, r12d
               	jmp	 <L103>
               	nop
<L105>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L104>
<L103>:
               	bt	rax, r12
               	jae	 <L105>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L105>
<L104>:
               	xor	r12d, r12d
               	jmp	 <L106>
               	nop
<L108>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L107>
<L106>:
               	bt	rcx, r12
               	jae	 <L108>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L108>
<L107>:
               	xor	r12d, r12d
               	jmp	 <L109>
               	nop
<L111>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L110>
<L109>:
               	bt	rdx, r12
               	jae	 <L111>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L111>
<L110>:
               	mov	qword ptr [rsp + 0x420], r15
               	mov	qword ptr [rsp + 0x428], r11
               	mov	qword ptr [rsp + 0x430], r9
               	mov	qword ptr [rsp + 0x438], rsi
               	xor	r12d, r12d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L112>
               	nop	dword ptr [rax + rax]
<L114>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L113>
<L112>:
               	bt	r14, r12
               	jae	 <L114>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L114>
<L113>:
               	xor	r12d, r12d
               	jmp	 <L115>
               	nop
<L117>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L116>
<L115>:
               	bt	rax, r12
               	jae	 <L117>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L117>
<L116>:
               	xor	r12d, r12d
               	jmp	 <L118>
               	nop
<L120>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L119>
<L118>:
               	bt	rcx, r12
               	jae	 <L120>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L120>
<L119>:
               	xor	r12d, r12d
               	jmp	 <L121>
               	nop
<L123>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L122>
<L121>:
               	bt	rdx, r12
               	jae	 <L123>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L123>
<L122>:
               	mov	qword ptr [rsp + 0x440], rbx
               	mov	qword ptr [rsp + 0x448], r10
               	mov	qword ptr [rsp + 0x450], r8
               	mov	qword ptr [rsp + 0x458], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L124>
               	nop	dword ptr [rax]
<L126>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L125>
<L124>:
               	bt	r14, r12
               	jae	 <L126>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L126>
<L125>:
               	xor	r12d, r12d
               	jmp	 <L127>
               	nop
<L129>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L128>
<L127>:
               	bt	rax, r12
               	jae	 <L129>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L129>
<L128>:
               	xor	r12d, r12d
               	jmp	 <L130>
               	nop
<L132>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L131>
<L130>:
               	bt	rcx, r12
               	jae	 <L132>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L132>
<L131>:
               	xor	r12d, r12d
               	jmp	 <L133>
               	nop
<L135>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L134>
<L133>:
               	bt	rdx, r12
               	jae	 <L135>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L135>
<L134>:
               	mov	qword ptr [rsp + 0x460], r15
               	mov	qword ptr [rsp + 0x468], r11
               	mov	qword ptr [rsp + 0x470], r9
               	mov	qword ptr [rsp + 0x478], rsi
               	xor	r12d, r12d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L136>
               	nop	dword ptr [rax + rax]
<L138>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L137>
<L136>:
               	bt	r14, r12
               	jae	 <L138>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L138>
<L137>:
               	xor	r12d, r12d
               	jmp	 <L139>
               	nop
<L141>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L140>
<L139>:
               	bt	rax, r12
               	jae	 <L141>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L141>
<L140>:
               	xor	r12d, r12d
               	jmp	 <L142>
               	nop
<L144>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L143>
<L142>:
               	bt	rcx, r12
               	jae	 <L144>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L144>
<L143>:
               	xor	r12d, r12d
               	jmp	 <L145>
               	nop
<L147>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L146>
<L145>:
               	bt	rdx, r12
               	jae	 <L147>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L147>
<L146>:
               	mov	qword ptr [rsp + 0x480], rbx
               	mov	qword ptr [rsp + 0x488], r10
               	mov	qword ptr [rsp + 0x490], r8
               	mov	qword ptr [rsp + 0x498], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L148>
               	nop	dword ptr [rax]
<L150>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L149>
<L148>:
               	bt	r14, r12
               	jae	 <L150>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L150>
<L149>:
               	xor	r12d, r12d
               	jmp	 <L151>
               	nop
<L153>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L152>
<L151>:
               	bt	rax, r12
               	jae	 <L153>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L153>
<L152>:
               	xor	r12d, r12d
               	jmp	 <L154>
               	nop
<L156>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L155>
<L154>:
               	bt	rcx, r12
               	jae	 <L156>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L156>
<L155>:
               	xor	r12d, r12d
               	jmp	 <L157>
               	nop
<L159>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L158>
<L157>:
               	bt	rdx, r12
               	jae	 <L159>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L159>
<L158>:
               	mov	qword ptr [rsp + 0x4a0], r15
               	mov	qword ptr [rsp + 0x4a8], r11
               	mov	qword ptr [rsp + 0x4b0], r9
               	mov	qword ptr [rsp + 0x4b8], rsi
               	xor	r12d, r12d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L160>
               	nop	dword ptr [rax + rax]
<L162>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L161>
<L160>:
               	bt	r14, r12
               	jae	 <L162>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L162>
<L161>:
               	xor	r12d, r12d
               	jmp	 <L163>
               	nop
<L165>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L164>
<L163>:
               	bt	rax, r12
               	jae	 <L165>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L165>
<L164>:
               	xor	r12d, r12d
               	jmp	 <L166>
               	nop
<L168>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L167>
<L166>:
               	bt	rcx, r12
               	jae	 <L168>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L168>
<L167>:
               	xor	r12d, r12d
               	jmp	 <L169>
               	nop
<L171>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L170>
<L169>:
               	bt	rdx, r12
               	jae	 <L171>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L171>
<L170>:
               	mov	qword ptr [rsp + 0x4c0], rbx
               	mov	qword ptr [rsp + 0x4c8], r10
               	mov	qword ptr [rsp + 0x4d0], r8
               	mov	qword ptr [rsp + 0x4d8], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L172>
               	nop	dword ptr [rax]
<L174>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L173>
<L172>:
               	bt	r14, r12
               	jae	 <L174>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L174>
<L173>:
               	xor	r12d, r12d
               	jmp	 <L175>
               	nop
<L177>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L176>
<L175>:
               	bt	rax, r12
               	jae	 <L177>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L177>
<L176>:
               	xor	r12d, r12d
               	jmp	 <L178>
               	nop
<L180>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L179>
<L178>:
               	bt	rcx, r12
               	jae	 <L180>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L180>
<L179>:
               	xor	r12d, r12d
               	jmp	 <L181>
               	nop
<L183>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L182>
<L181>:
               	bt	rdx, r12
               	jae	 <L183>
               	xor	r15, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L183>
<L182>:
               	mov	qword ptr [rsp + 0x4e0], r15
               	mov	qword ptr [rsp + 0x4e8], r11
               	mov	qword ptr [rsp + 0x4f0], r9
               	mov	qword ptr [rsp + 0x4f8], rsi
               	xor	r8d, r8d
               	xor	edi, edi
               	xor	r10d, r10d
               	xor	ebx, ebx
               	xor	r12d, r12d
               	jmp	 <L184>
               	nop	dword ptr [rax + rax]
<L186>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L185>
<L184>:
               	bt	r14, r8
               	jae	 <L186>
               	xor	r12, r15
               	xor	rbx, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L186>
<L185>:
               	xor	r8d, r8d
               	jmp	 <L187>
               	nop
<L189>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L188>
<L187>:
               	bt	rax, r8
               	jae	 <L189>
               	xor	r12, r15
               	xor	rbx, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L189>
<L188>:
               	xor	r8d, r8d
               	jmp	 <L190>
               	nop
<L192>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L191>
<L190>:
               	bt	rcx, r8
               	jae	 <L192>
               	xor	r12, r15
               	xor	rbx, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L192>
<L191>:
               	xor	r8d, r8d
               	jmp	 <L193>
               	nop
<L195>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L194>
<L193>:
               	bt	rdx, r8
               	jae	 <L195>
               	xor	r12, r15
               	xor	rbx, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L195>
<L194>:
               	mov	qword ptr [rsp + 0x500], r12
               	mov	qword ptr [rsp + 0x508], rbx
               	mov	qword ptr [rsp + 0x510], r10
               	mov	qword ptr [rsp + 0x518], rdi
               	xor	r9d, r9d
               	xor	r8d, r8d
               	xor	r11d, r11d
               	xor	esi, esi
               	xor	r15d, r15d
               	jmp	 <L196>
               	nop	dword ptr [rax]
<L198>:
               	mov	r13, rbx
               	shl	r13, 0x11
               	xor	r10, r12
               	xor	rdi, rbx
               	xor	rbx, r10
               	xor	r12, rdi
               	xor	r10, r13
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L197>
<L196>:
               	bt	r14, r9
               	jae	 <L198>
               	xor	r15, r12
               	xor	rsi, rbx
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L198>
<L197>:
               	xor	r9d, r9d
               	jmp	 <L199>
               	nop
<L201>:
               	mov	r13, rbx
               	shl	r13, 0x11
               	xor	r10, r12
               	xor	rdi, rbx
               	xor	rbx, r10
               	xor	r12, rdi
               	xor	r10, r13
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L200>
<L199>:
               	bt	rax, r9
               	jae	 <L201>
               	xor	r15, r12
               	xor	rsi, rbx
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L201>
<L200>:
               	xor	r9d, r9d
               	jmp	 <L202>
               	nop
<L204>:
               	mov	r13, rbx
               	shl	r13, 0x11
               	xor	r10, r12
               	xor	rdi, rbx
               	xor	rbx, r10
               	xor	r12, rdi
               	xor	r10, r13
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L203>
<L202>:
               	bt	rcx, r9
               	jae	 <L204>
               	xor	r15, r12
               	xor	rsi, rbx
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L204>
<L203>:
               	xor	r9d, r9d
               	jmp	 <L205>
               	nop
<L207>:
               	mov	r13, rbx
               	shl	r13, 0x11
               	xor	r10, r12
               	xor	rdi, rbx
               	xor	rbx, r10
               	xor	r12, rdi
               	xor	r10, r13
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L206>
<L205>:
               	bt	rdx, r9
               	jae	 <L207>
               	xor	r15, r12
               	xor	rsi, rbx
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x520], r15
               	mov	qword ptr [rsp + 0x528], rsi
               	mov	qword ptr [rsp + 0x530], r11
               	mov	qword ptr [rsp + 0x538], r8
               	xor	r13d, r13d
               	xor	r9d, r9d
               	xor	r10d, r10d
               	xor	edx, edx
               	mov	r12, rsi
               	xor	ebx, ebx
               	jmp	 <L208>
               	nop	dword ptr [rax + rax]
<L210>:
               	mov	rbp, r12
               	shl	rbp, 0x11
               	xor	r11, r15
               	xor	r8, r12
               	xor	r12, r11
               	xor	r15, r8
               	xor	r11, rbp
               	rorx	r8, r8, 0x13
               	inc	r13
               	cmp	r13, 0x40
               	je	 <L209>
<L208>:
               	bt	r14, r13
               	jae	 <L210>
               	xor	rbx, r15
               	xor	rdx, r12
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L210>
<L209>:
               	xor	r13d, r13d
               	jmp	 <L211>
               	nop
<L213>:
               	mov	rbp, r12
               	shl	rbp, 0x11
               	xor	r11, r15
               	xor	r8, r12
               	xor	r12, r11
               	xor	r15, r8
               	xor	r11, rbp
               	rorx	r8, r8, 0x13
               	inc	r13
               	cmp	r13, 0x40
               	je	 <L212>
<L211>:
               	bt	rax, r13
               	jae	 <L213>
               	xor	rbx, r15
               	xor	rdx, r12
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L213>
<L212>:
               	xor	r13d, r13d
               	jmp	 <L214>
               	nop
<L216>:
               	mov	rbp, r12
               	shl	rbp, 0x11
               	xor	r11, r15
               	xor	r8, r12
               	xor	r12, r11
               	xor	r15, r8
               	xor	r11, rbp
               	rorx	r8, r8, 0x13
               	inc	r13
               	cmp	r13, 0x40
               	je	 <L215>
<L214>:
               	bt	rcx, r13
               	jae	 <L216>
               	xor	rbx, r15
               	xor	rdx, r12
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L216>
<L215>:
               	xor	r13d, r13d
               	movabs	rdi, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop	dword ptr [rax + rax]
<L219>:
               	mov	rbp, r12
               	shl	rbp, 0x11
               	xor	r11, r15
               	xor	r8, r12
               	xor	r12, r11
               	xor	r15, r8
               	xor	r11, rbp
               	rorx	r8, r8, 0x13
               	inc	r13
               	cmp	r13, 0x40
               	je	 <L218>
<L217>:
               	bt	rdi, r13
               	jae	 <L219>
               	xor	rbx, r15
               	xor	rdx, r12
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x540], rbx
               	mov	qword ptr [rsp + 0x548], rdx
               	mov	qword ptr [rsp + 0x550], r10
               	mov	qword ptr [rsp + 0x558], r9
               	xor	ebp, ebp
               	xor	r11d, r11d
               	xor	r15d, r15d
               	xor	r8d, r8d
               	mov	rdi, rdx
               	xor	r12d, r12d
               	jmp	 <L220>
               	nop	dword ptr [rax]
<L222>:
               	mov	r13, rdi
               	shl	r13, 0x11
               	xor	r10, rbx
               	xor	r9, rdi
               	xor	rdi, r10
               	xor	rbx, r9
               	xor	r10, r13
               	rorx	r9, r9, 0x13
               	inc	rbp
               	cmp	rbp, 0x40
               	je	 <L221>
<L220>:
               	bt	r14, rbp
               	jae	 <L222>
               	xor	r12, rbx
               	xor	r8, rdi
               	xor	r15, r10
               	xor	r11, r9
               	jmp	 <L222>
<L221>:
               	xor	r14d, r14d
               	jmp	 <L223>
               	nop
<L225>:
               	mov	rbp, rdi
               	shl	rbp, 0x11
               	xor	r10, rbx
               	xor	r9, rdi
               	xor	rdi, r10
               	xor	rbx, r9
               	xor	r10, rbp
               	rorx	r9, r9, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L224>
<L223>:
               	bt	rax, r14
               	jae	 <L225>
               	xor	r12, rbx
               	xor	r8, rdi
               	xor	r15, r10
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
               	xor	r12, rbx
               	xor	r8, rdi
               	xor	r15, r10
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
               	xor	r12, rbx
               	xor	r8, rdi
               	xor	r15, r10
               	xor	r11, r9
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x560], r12
               	mov	qword ptr [rsp + 0x568], r8
               	mov	qword ptr [rsp + 0x570], r15
               	mov	qword ptr [rsp + 0x578], r11
               	mov	qword ptr [rsp + 0x580], 0x0
               	lea	rax, [rsp + 0x300]
               	kxnorw	k1, k0, k0
               	vpmovzxbd	ymm0, qword ptr  <memset+0x1030>
               	vpxor	xmm1, xmm1, xmm1
               	kxnorw	k2, k0, k0
               	vpxor	xmm2, xmm2, xmm2
               	vpgatherdq	zmm2 {k2}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm2, 0x2
               	vpaddq	zmm0, zmm0, zmm2
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm2, zmm0, 0x3
               	vpaddq	zmm3, zmm2, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x588], zmm3
               	vpmovsxwd	ymm0, xmmword ptr  <memset+0x10d0>
               	vpgatherdq	zmm1 {k1}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm1, 0x2
               	vpaddq	zmm0, zmm0, zmm1
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm2, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x5c8], zmm2
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x508]
               	vpinsrq	xmm0, xmm0, rsi, 0x1
               	mov	r12, qword ptr [rsp + 0x20]
               	shl	r12, 0x3
               	vpbroadcastq	ymm1, rdx
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, r8
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm4, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x608], ymm4
               	test	r12, r12
               	je	 <L232>
               	mov	qword ptr [rsp + 0x20], r12
               	vpbroadcastq	zmm0, rax
               	vpaddq	zmm1, zmm0, zmmword ptr  <memset+0x1040>
               	vmovdqu64	zmmword ptr [rsp + 0x6e0], zmm1
               	vpaddq	zmm0, zmm0, zmmword ptr  <memset+0x1080>
               	vmovdqu64	zmmword ptr [rsp + 0x6a0], zmm0
               	vextracti32x4	xmm0, zmm2, 0x2
               	vextracti128	xmm1, ymm2, 0x1
               	vpextrq	rdi, xmm1, 0x1
               	vpextrq	rcx, xmm2, 0x1
               	vmovq	rbx, xmm0
               	vmovq	rdx, xmm1
               	vmovq	rax, xmm3
               	vextracti128	xmm1, ymm4, 0x1
               	vpblendd	xmm5, xmm1, xmm0, 0xc   # xmm5 = xmm1[0,1],xmm0[2,3]
               	mov	rsi, qword ptr [rsp + 0x300]
               	mov	qword ptr [rsp + 0x2f8], rsi
               	mov	rsi, qword ptr [rsp + 0x308]
               	mov	qword ptr [rsp + 0x2f0], rsi
               	mov	rsi, qword ptr [rsp + 0x310]
               	mov	qword ptr [rsp + 0x2e8], rsi
               	mov	rsi, qword ptr [rsp + 0x318]
               	mov	qword ptr [rsp + 0x2e0], rsi
               	mov	rsi, qword ptr [rsp + 0x328]
               	mov	qword ptr [rsp + 0x2d8], rsi
               	mov	rsi, qword ptr [rsp + 0x320]
               	mov	qword ptr [rsp + 0x2d0], rsi
               	mov	rsi, qword ptr [rsp + 0x330]
               	mov	qword ptr [rsp + 0x2c8], rsi
               	mov	rsi, qword ptr [rsp + 0x338]
               	mov	qword ptr [rsp + 0x2c0], rsi
               	mov	rsi, qword ptr [rsp + 0x348]
               	mov	qword ptr [rsp + 0x2b8], rsi
               	mov	rsi, qword ptr [rsp + 0x340]
               	mov	qword ptr [rsp + 0x2b0], rsi
               	mov	rsi, qword ptr [rsp + 0x350]
               	mov	qword ptr [rsp + 0x2a8], rsi
               	mov	rsi, qword ptr [rsp + 0x358]
               	mov	qword ptr [rsp + 0x2a0], rsi
               	mov	rsi, qword ptr [rsp + 0x368]
               	mov	qword ptr [rsp + 0x298], rsi
               	mov	rsi, qword ptr [rsp + 0x360]
               	mov	qword ptr [rsp + 0x290], rsi
               	mov	rsi, qword ptr [rsp + 0x370]
               	mov	qword ptr [rsp + 0x288], rsi
               	mov	rsi, qword ptr [rsp + 0x378]
               	mov	qword ptr [rsp + 0x280], rsi
               	mov	rsi, qword ptr [rsp + 0x388]
               	mov	qword ptr [rsp + 0x278], rsi
               	mov	rsi, qword ptr [rsp + 0x380]
               	mov	qword ptr [rsp + 0x270], rsi
               	mov	rsi, qword ptr [rsp + 0x390]
               	mov	qword ptr [rsp + 0x268], rsi
               	mov	rsi, qword ptr [rsp + 0x398]
               	mov	qword ptr [rsp + 0x260], rsi
               	mov	rsi, qword ptr [rsp + 0x3a8]
               	mov	qword ptr [rsp + 0x258], rsi
               	mov	rsi, qword ptr [rsp + 0x3a0]
               	mov	qword ptr [rsp + 0x250], rsi
               	mov	rsi, qword ptr [rsp + 0x3b0]
               	mov	qword ptr [rsp + 0x248], rsi
               	mov	rsi, qword ptr [rsp + 0x3b8]
               	mov	qword ptr [rsp + 0x240], rsi
               	mov	rsi, qword ptr [rsp + 0x3c8]
               	mov	qword ptr [rsp + 0x238], rsi
               	mov	rsi, qword ptr [rsp + 0x3c0]
               	mov	qword ptr [rsp + 0x230], rsi
               	mov	rsi, qword ptr [rsp + 0x3d0]
               	mov	qword ptr [rsp + 0x228], rsi
               	mov	rsi, qword ptr [rsp + 0x3d8]
               	mov	qword ptr [rsp + 0x220], rsi
               	mov	rsi, qword ptr [rsp + 0x3e8]
               	mov	qword ptr [rsp + 0x218], rsi
               	mov	rsi, qword ptr [rsp + 0x3e0]
               	mov	qword ptr [rsp + 0x210], rsi
               	mov	rsi, qword ptr [rsp + 0x3f0]
               	mov	qword ptr [rsp + 0x208], rsi
               	mov	rsi, qword ptr [rsp + 0x3f8]
               	mov	qword ptr [rsp + 0x200], rsi
               	mov	rsi, qword ptr [rsp + 0x408]
               	mov	qword ptr [rsp + 0x1f8], rsi
               	mov	rsi, qword ptr [rsp + 0x400]
               	mov	qword ptr [rsp + 0x1f0], rsi
               	mov	rsi, qword ptr [rsp + 0x410]
               	mov	qword ptr [rsp + 0x1e8], rsi
               	mov	rsi, qword ptr [rsp + 0x418]
               	mov	qword ptr [rsp + 0x1e0], rsi
               	mov	rsi, qword ptr [rsp + 0x428]
               	mov	qword ptr [rsp + 0x1d8], rsi
               	mov	rsi, qword ptr [rsp + 0x420]
               	mov	qword ptr [rsp + 0x1d0], rsi
               	mov	rsi, qword ptr [rsp + 0x430]
               	mov	qword ptr [rsp + 0x1c8], rsi
               	mov	rsi, qword ptr [rsp + 0x438]
               	mov	qword ptr [rsp + 0x1c0], rsi
               	mov	rsi, qword ptr [rsp + 0x448]
               	mov	qword ptr [rsp + 0x1b8], rsi
               	mov	rsi, qword ptr [rsp + 0x440]
               	mov	qword ptr [rsp + 0x1b0], rsi
               	mov	rsi, qword ptr [rsp + 0x450]
               	mov	qword ptr [rsp + 0x1a8], rsi
               	mov	rsi, qword ptr [rsp + 0x458]
               	mov	qword ptr [rsp + 0x1a0], rsi
               	mov	rsi, qword ptr [rsp + 0x468]
               	mov	qword ptr [rsp + 0x198], rsi
               	mov	rsi, qword ptr [rsp + 0x460]
               	mov	qword ptr [rsp + 0x190], rsi
               	mov	rsi, qword ptr [rsp + 0x470]
               	mov	qword ptr [rsp + 0x188], rsi
               	mov	rsi, qword ptr [rsp + 0x478]
               	mov	qword ptr [rsp + 0x180], rsi
               	mov	rsi, qword ptr [rsp + 0x488]
               	mov	qword ptr [rsp + 0x178], rsi
               	mov	rsi, qword ptr [rsp + 0x480]
               	mov	qword ptr [rsp + 0x170], rsi
               	mov	rsi, qword ptr [rsp + 0x490]
               	mov	qword ptr [rsp + 0x168], rsi
               	mov	rsi, qword ptr [rsp + 0x498]
               	mov	qword ptr [rsp + 0x160], rsi
               	mov	rsi, qword ptr [rsp + 0x4a8]
               	mov	qword ptr [rsp + 0x158], rsi
               	mov	rsi, qword ptr [rsp + 0x4a0]
               	mov	qword ptr [rsp + 0x150], rsi
               	mov	rsi, qword ptr [rsp + 0x4b0]
               	mov	qword ptr [rsp + 0x148], rsi
               	mov	rsi, qword ptr [rsp + 0x4b8]
               	mov	qword ptr [rsp + 0x140], rsi
               	mov	rsi, qword ptr [rsp + 0x4c8]
               	mov	qword ptr [rsp + 0x138], rsi
               	mov	rsi, qword ptr [rsp + 0x4c0]
               	mov	qword ptr [rsp + 0x130], rsi
               	mov	rsi, qword ptr [rsp + 0x4d0]
               	mov	qword ptr [rsp + 0x128], rsi
               	mov	rsi, qword ptr [rsp + 0x4d8]
               	mov	qword ptr [rsp + 0x120], rsi
               	mov	rsi, qword ptr [rsp + 0x4e8]
               	mov	qword ptr [rsp + 0x118], rsi
               	mov	rsi, qword ptr [rsp + 0x4e0]
               	mov	qword ptr [rsp + 0x110], rsi
               	mov	rsi, qword ptr [rsp + 0x4f0]
               	mov	qword ptr [rsp + 0x108], rsi
               	mov	rsi, qword ptr [rsp + 0x4f8]
               	mov	qword ptr [rsp + 0x100], rsi
               	mov	rsi, qword ptr [rsp + 0x500]
               	mov	qword ptr [rsp + 0xf8], rsi
               	mov	rsi, qword ptr [rsp + 0x528]
               	mov	qword ptr [rsp + 0xb8], rsi
               	mov	rsi, qword ptr [rsp + 0x530]
               	mov	qword ptr [rsp + 0xf0], rsi
               	mov	rsi, qword ptr [rsp + 0x538]
               	mov	qword ptr [rsp + 0xe8], rsi
               	mov	r14, qword ptr [rsp + 0x548]
               	mov	rsi, qword ptr [rsp + 0x540]
               	mov	qword ptr [rsp + 0xe0], rsi
               	mov	rsi, qword ptr [rsp + 0x550]
               	mov	qword ptr [rsp + 0xd8], rsi
               	mov	rsi, qword ptr [rsp + 0x558]
               	mov	qword ptr [rsp + 0xd0], rsi
               	mov	r13, qword ptr [rsp + 0x568]
               	mov	rsi, qword ptr [rsp + 0x560]
               	mov	qword ptr [rsp + 0xc8], rsi
               	mov	rsi, qword ptr [rsp + 0x570]
               	mov	qword ptr [rsp + 0xc0], rsi
               	mov	r15, qword ptr [rsp + 0x578]
               	xor	ebp, ebp
               	mov	r12, qword ptr [rsp + 0x18]
               	jmp	 <L233>
               	nop	word ptr [rax + rax]
<L238>:
               	vpsrlq	zmm3, zmm3, 0x8
               	vmovdqu64	zmmword ptr [rsp + 0x588], zmm3
               	vpsrlq	zmm2, zmm2, 0x8
               	vpsrlq	ymm4, ymm4, 0x8
<L242>:
               	vmovq	rax, xmm3
               	vpextrq	rcx, xmm2, 0x1
               	vextracti128	xmm0, ymm2, 0x1
               	vmovq	rdx, xmm0
               	vextracti32x4	xmm1, zmm2, 0x2
               	vmovq	rbx, xmm1
               	vpextrq	rdi, xmm0, 0x1
               	vextracti128	xmm0, ymm4, 0x1
               	vpblendd	xmm5, xmm0, xmm1, 0xc   # xmm5 = xmm0[0,1],xmm1[2,3]
               	vmovdqu64	zmmword ptr [rsp + 0x5c8], zmm2
               	vmovdqu	ymmword ptr [rsp + 0x608], ymm4
               	add	r12, 0x20
               	cmp	qword ptr [rsp + 0x20], rbp
               	je	 <L234>
<L233>:
               	vmovdqu	ymmword ptr [rsp + 0x50], ymm4
               	vmovdqu64	zmmword ptr [rsp + 0x630], zmm2
               	vmovdqu64	zmmword ptr [rsp + 0x70], zmm3
               	vmovq	xmm0, rcx
               	vmovq	xmm1, rdx
               	vpunpcklqdq	xmm0, xmm0, xmm1 # xmm0 = xmm0[0],xmm1[0]
               	vmovdqu64	zmm1, zmmword ptr [rsp + 0x590]
               	vmovups	ymm2, ymmword ptr [rsp + 0x5f8]
               	vpmovqd	ymm1, zmm1
               	vpandd	ymm1, ymm1, dword ptr {1to8} <memset+0x10e0>
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [rsp + 0x30], ymm1
               	vpshufb	xmm0, xmm0, xmmword ptr  <memset+0x10c0>
               	vcvtdq2ps	xmm1, xmm0
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [r12 + 0x8], xmm0
               	movzx	eax, al
               	lea	rcx,  <memset+0x1100>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Circle@Evaluation.CRTP.Circle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Circle@Evaluation.CRTP.Circle>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x20
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp], xmm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp], xmm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Triangle@Evaluation.CRTP.Triangle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Triangle@Evaluation.CRTP.Triangle>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x24
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L237>
               	vmovups	ymmword ptr [rsp + 0x680], ymm2
               	vmovdqa	xmmword ptr [rsp + 0x670], xmm5
               	mov	qword ptr [rsp], rbp
               	mov	qword ptr [rsp + 0x628], r13
               	mov	r13, r14
               	mov	r14, r15
               	mov	r15, rdi
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Head@Evaluation.CRTP.Head const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Head@Evaluation.CRTP.Head>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x60
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovq	xmm0, r15
               	vmovq	xmm1, rbx
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x670]
               	vpextrb	ecx, xmm2, 0x8
               	vpextrb	edx, xmm2, 0x0
               	vpunpcklqdq	xmm0, xmm0, xmm1 # xmm0 = xmm0[0],xmm1[0]
               	vcvtsi2ss	xmm1, xmm6, ecx
               	vpshufb	xmm0, xmm0, xmmword ptr  <memset+0x10c0>
               	vcvtdq2ps	xmm0, xmm0
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x680]
               	vpmovqd	xmm2, ymm2
               	vpbroadcastd	ymm3, dword ptr  <memset+0x10e0>
               	vpand	xmm2, xmm2, xmm3
               	vcvtdq2ps	xmm2, xmm2
               	vcvtsi2ss	xmm3, xmm6, edx
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x30]
               	vpshufd	xmm4, xmm5, 0xff        # xmm4 = xmm5[3,3,3,3]
               	vmovdqu	ymmword ptr [rax], ymm5
               	vmovlps	qword ptr [rax + 0x20], xmm0
               	vmovss	dword ptr [rax + 0x28], xmm1
               	vmovd	dword ptr [rax + 0x2c], xmm4
               	vmovdqa	xmmword ptr [rax + 0x30], xmm2
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	vmovss	dword ptr [rax + 0x48], xmm1
               	vmovd	dword ptr [rax + 0x4c], xmm4
               	vmovss	dword ptr [rax + 0x50], xmm3
               	vpshufd	xmm0, xmm2, 0xe9        # xmm0 = xmm2[1,2,2,3]
               	vmovq	qword ptr [rax + 0x54], xmm0
               	vextractps	dword ptr [rax + 0x5c], xmm2, 0x3
               	mov	qword ptr [r12 + 0x18], rax
               	vmovdqu64	zmm3, zmmword ptr [rsp + 0x70]
               	vmovdqu64	zmm2, zmmword ptr [rsp + 0x630]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x50]
               	mov	r15, r14
               	mov	r14, r13
               	mov	r13, qword ptr [rsp + 0x628]
               	mov	rbp, qword ptr [rsp]
               	inc	rbp
               	mov	qword ptr [rsp + 0x580], rbp
               	test	bpl, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	vmovaps	xmmword ptr [rsp], xmm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x24
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L240>
               	vmovaps	xmmword ptr [rsp], xmm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x24
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L237>
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Square@Evaluation.CRTP.Square const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Square@Evaluation.CRTP.Square>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x20
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp], xmm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp], xmm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x24
               	vzeroupper
               	call	 <_Znwm@plt>
<L237>:
               	vmovups	ymm0, ymmword ptr [rsp + 0x30]
               	vmovups	ymmword ptr [rax], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp]
               	vmovd	dword ptr [rax + 0x20], xmm0
               	jmp	 <L241>
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cube@Evaluation.CRTP.Cube const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Cube@Evaluation.CRTP.Cube>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x20
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp], xmm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
<L236>:
               	vmovups	ymm0, ymmword ptr [rsp + 0x30]
               	vmovups	ymmword ptr [rax], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp]
               	vmovq	qword ptr [rax + 0x20], xmm0
               	jmp	 <L241>
               	vmovaps	xmmword ptr [rsp], xmm1
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cone@Evaluation.CRTP.Cone const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Cone@Evaluation.CRTP.Cone>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x24
               	vzeroupper
               	call	 <_Znwm@plt>
<L240>:
               	vmovups	ymm0, ymmword ptr [rsp + 0x30]
               	vmovups	ymmword ptr [rax], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp]
               	vextractps	dword ptr [rax + 0x20], xmm0, 0x1
               	jmp	 <L241>
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Sphere@Evaluation.CRTP.Sphere const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>::value>
               	mov	qword ptr [r12], rax
               	mov	edi, 0x20
               	vzeroupper
               	call	 <_Znwm@plt>
<L235>:
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x30]
               	vmovdqu	ymmword ptr [rax], ymm0
<L241>:
               	mov	qword ptr [r12 + 0x18], rax
               	vmovdqu64	zmm3, zmmword ptr [rsp + 0x70]
               	vmovdqu64	zmm2, zmmword ptr [rsp + 0x630]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x50]
               	inc	rbp
               	mov	qword ptr [rsp + 0x580], rbp
               	test	bpl, 0x7
               	jne	 <L238>
<L239>:
               	mov	rdx, qword ptr [rsp + 0x2f0]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2f8]
               	mov	rsi, qword ptr [rsp + 0x2e8]
               	xor	rsi, rcx
               	mov	rdi, qword ptr [rsp + 0x2e0]
               	xor	rdi, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x2f0], rdx
               	mov	qword ptr [rsp + 0x308], rdx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x2f8], rcx
               	mov	qword ptr [rsp + 0x300], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x2e8], rsi
               	mov	qword ptr [rsp + 0x310], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x2e0], rdi
               	mov	qword ptr [rsp + 0x318], rdi
               	mov	rcx, qword ptr [rsp + 0x2d8]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x2d0]
               	mov	rsi, qword ptr [rsp + 0x2c8]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x2c0]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	qword ptr [rsp + 0x328], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x2d0], rdx
               	mov	qword ptr [rsp + 0x320], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x2c8], rsi
               	mov	qword ptr [rsp + 0x330], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x2c0], rdi
               	mov	qword ptr [rsp + 0x338], rdi
               	mov	rcx, qword ptr [rsp + 0x2b8]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x2b0]
               	mov	rsi, qword ptr [rsp + 0x2a8]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x2a0]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	qword ptr [rsp + 0x348], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x2b0], rdx
               	mov	qword ptr [rsp + 0x340], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x2a8], rsi
               	mov	qword ptr [rsp + 0x350], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x2a0], rdi
               	mov	qword ptr [rsp + 0x358], rdi
               	mov	rcx, qword ptr [rsp + 0x298]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x290]
               	mov	rsi, qword ptr [rsp + 0x288]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x280]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	qword ptr [rsp + 0x368], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x290], rdx
               	mov	qword ptr [rsp + 0x360], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x288], rsi
               	mov	qword ptr [rsp + 0x370], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x280], rdi
               	mov	qword ptr [rsp + 0x378], rdi
               	mov	rcx, qword ptr [rsp + 0x278]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x270]
               	mov	rsi, qword ptr [rsp + 0x268]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x260]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x278], rcx
               	mov	qword ptr [rsp + 0x388], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x270], rdx
               	mov	qword ptr [rsp + 0x380], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x268], rsi
               	mov	qword ptr [rsp + 0x390], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x260], rdi
               	mov	qword ptr [rsp + 0x398], rdi
               	mov	rcx, qword ptr [rsp + 0x258]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x250]
               	mov	rsi, qword ptr [rsp + 0x248]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x240]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x258], rcx
               	mov	qword ptr [rsp + 0x3a8], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x250], rdx
               	mov	qword ptr [rsp + 0x3a0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x248], rsi
               	mov	qword ptr [rsp + 0x3b0], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x240], rdi
               	mov	qword ptr [rsp + 0x3b8], rdi
               	mov	rcx, qword ptr [rsp + 0x238]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x230]
               	mov	rsi, qword ptr [rsp + 0x228]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x220]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x238], rcx
               	mov	qword ptr [rsp + 0x3c8], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x230], rdx
               	mov	qword ptr [rsp + 0x3c0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x228], rsi
               	mov	qword ptr [rsp + 0x3d0], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x220], rdi
               	mov	qword ptr [rsp + 0x3d8], rdi
               	mov	rcx, qword ptr [rsp + 0x218]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x210]
               	mov	rsi, qword ptr [rsp + 0x208]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x200]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x218], rcx
               	mov	qword ptr [rsp + 0x3e8], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x210], rdx
               	mov	qword ptr [rsp + 0x3e0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x208], rsi
               	mov	qword ptr [rsp + 0x3f0], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x200], rdi
               	mov	qword ptr [rsp + 0x3f8], rdi
               	mov	rcx, qword ptr [rsp + 0x1f8]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1f0]
               	mov	rsi, qword ptr [rsp + 0x1e8]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x1e0]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x1f8], rcx
               	mov	qword ptr [rsp + 0x408], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x1f0], rdx
               	mov	qword ptr [rsp + 0x400], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1e8], rsi
               	mov	qword ptr [rsp + 0x410], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x1e0], rdi
               	mov	qword ptr [rsp + 0x418], rdi
               	mov	rcx, qword ptr [rsp + 0x1d8]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1d0]
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x1c0]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x1d8], rcx
               	mov	qword ptr [rsp + 0x428], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x1d0], rdx
               	mov	qword ptr [rsp + 0x420], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1c8], rsi
               	mov	qword ptr [rsp + 0x430], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x1c0], rdi
               	mov	qword ptr [rsp + 0x438], rdi
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1b0]
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x1b8], rcx
               	mov	qword ptr [rsp + 0x448], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x1b0], rdx
               	mov	qword ptr [rsp + 0x440], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1a8], rsi
               	mov	qword ptr [rsp + 0x450], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x1a0], rdi
               	mov	qword ptr [rsp + 0x458], rdi
               	mov	rcx, qword ptr [rsp + 0x198]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x190]
               	mov	rsi, qword ptr [rsp + 0x188]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x180]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x198], rcx
               	mov	qword ptr [rsp + 0x468], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x190], rdx
               	mov	qword ptr [rsp + 0x460], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x188], rsi
               	mov	qword ptr [rsp + 0x470], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x180], rdi
               	mov	qword ptr [rsp + 0x478], rdi
               	mov	rcx, qword ptr [rsp + 0x178]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x170]
               	mov	rsi, qword ptr [rsp + 0x168]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x160]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x178], rcx
               	mov	qword ptr [rsp + 0x488], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x170], rdx
               	mov	qword ptr [rsp + 0x480], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x168], rsi
               	mov	qword ptr [rsp + 0x490], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x160], rdi
               	mov	qword ptr [rsp + 0x498], rdi
               	mov	rcx, qword ptr [rsp + 0x158]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x150]
               	mov	rsi, qword ptr [rsp + 0x148]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x140]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x158], rcx
               	mov	qword ptr [rsp + 0x4a8], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x150], rdx
               	mov	qword ptr [rsp + 0x4a0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x148], rsi
               	mov	qword ptr [rsp + 0x4b0], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x140], rdi
               	mov	qword ptr [rsp + 0x4b8], rdi
               	mov	rcx, qword ptr [rsp + 0x138]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x130]
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x120]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x138], rcx
               	mov	qword ptr [rsp + 0x4c8], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x130], rdx
               	mov	qword ptr [rsp + 0x4c0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x128], rsi
               	mov	qword ptr [rsp + 0x4d0], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x120], rdi
               	mov	qword ptr [rsp + 0x4d8], rdi
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x110]
               	mov	rsi, qword ptr [rsp + 0x108]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x100]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x118], rcx
               	mov	qword ptr [rsp + 0x4e8], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x110], rdx
               	mov	qword ptr [rsp + 0x4e0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x108], rsi
               	mov	qword ptr [rsp + 0x4f0], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x100], rdi
               	mov	qword ptr [rsp + 0x4f8], rdi
               	mov	rcx, qword ptr [rsp + 0x508]
               	mov	rax, qword ptr [rsp + 0x520]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x510]
               	mov	r8, qword ptr [rsp + 0xf8]
               	xor	rsi, r8
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x518]
               	shl	rdx, 0x11
               	mov	qword ptr [rsp + 0x508], rdi
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xf8], r8
               	mov	qword ptr [rsp + 0x500], r8
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x510], rsi
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x518], rcx
               	mov	rdi, qword ptr [rsp + 0xb8]
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0xf0]
               	xor	rdx, rax
               	mov	rsi, qword ptr [rsp + 0xe8]
               	xor	rsi, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x528], rdi
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x520], rax
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0xf0], rdx
               	mov	qword ptr [rsp + 0x530], rdx
               	rorx	rsi, rsi, 0x13
               	mov	qword ptr [rsp + 0xe8], rsi
               	mov	qword ptr [rsp + 0x538], rsi
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xe0]
               	mov	rdx, qword ptr [rsp + 0xd8]
               	xor	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	rsi, r14
               	xor	r14, rdx
               	mov	qword ptr [rsp + 0x548], r14
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0xe0], rcx
               	mov	qword ptr [rsp + 0x540], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xd8], rdx
               	mov	qword ptr [rsp + 0x550], rdx
               	rorx	rsi, rsi, 0x13
               	mov	qword ptr [rsp + 0xd0], rsi
               	mov	qword ptr [rsp + 0x558], rsi
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xc8]
               	mov	rdx, qword ptr [rsp + 0xc0]
               	xor	rdx, rcx
               	xor	r15, r13
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0x568], r13
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0xc8], rcx
               	mov	qword ptr [rsp + 0x560], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xc0], rdx
               	mov	qword ptr [rsp + 0x570], rdx
               	rorx	r15, r15, 0x13
               	mov	qword ptr [rsp + 0x578], r15
               	vpxor	xmm0, xmm0, xmm0
               	kxnorw	k1, k0, k0
               	vmovdqu64	zmm1, zmmword ptr [rsp + 0x6e0]
               	vpgatherqq	zmm0 {k1}, zmmword ptr [1*zmm1]
               	vpsllq	zmm1, zmm0, 0x2
               	vpaddq	zmm0, zmm1, zmm0
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm3, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x588], zmm3
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x508]
               	vpxor	xmm1, xmm1, xmm1
               	kxnorw	k1, k0, k0
               	vmovdqu64	zmm2, zmmword ptr [rsp + 0x6a0]
               	vpgatherqq	zmm1 {k1}, zmmword ptr [1*zmm2]
               	vpsllq	zmm2, zmm1, 0x2
               	vpaddq	zmm1, zmm2, zmm1
               	vprolq	zmm1, zmm1, 0x7
               	vpsllq	zmm2, zmm1, 0x3
               	vpaddq	zmm2, zmm2, zmm1
               	mov	qword ptr [rsp + 0xb8], rdi
               	vpinsrq	xmm0, xmm0, rdi, 0x1
               	vpbroadcastq	ymm1, r14
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, r13
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm4, ymm1, ymm0
               	jmp	 <L242>
<L234>:
               	test	ebp, ebp
               	je	 <L243>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu64	zmmword ptr [rsp + 0x340], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x300], zmm0
               	mov	qword ptr [rsp], rbp
               	mov	r12d, ebp
               	mov	r13, qword ptr [rsp + 0x18]
               	jmp	 <L244>
               	nop
<L245>:
               	vmovss	xmm0, dword ptr [rsp + 0x304]
               	vmovss	dword ptr [rsp + 0x308], xmm0
               	mov	ebp, 0x1
<L257>:
               	mov	eax, ebp
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x300]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r13, r14
<L244>:
               	blsi	eax, r12d
               	mov	r14, rax
               	shl	r14, 0x5
               	add	r14, r13
               	test	eax, eax
               	je	 <L245>
               	mov	qword ptr [rsp + 0x70], rax
               	xor	ecx, ecx
               	mov	r15d, 0x1
               	mov	ebx, 0x1
               	jmp	 <L246>
               	nop	dword ptr [rax]
<L248>:
               	mov	r15d, ebp
               	movsxd	rax, ebp
               	vmovss	dword ptr [rsp + 4*rax + 0x300], xmm0
               	add	r13, 0x20
               	mov	ecx, 0xfffffffe
               	sub	ecx, ebx
               	lea	edx, [rbx + 0x1]
               	lzcnt	esi, edx
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	ebx, edx
               	cmp	r13, r14
               	je	 <L247>
<L246>:
               	mov	ebp, ecx
               	mov	rax, qword ptr [r13]
               	lea	rdi, [r13 + 0x18]
               	vzeroupper
               	call	qword ptr [rax]
               	mov	edx, ebp
               	sub	edx, r15d
               	jl	 <L248>
               	movsxd	rax, r15d
               	cmp	edx, 0x7
               	jb	 <L249>
               	lea	rcx, [rdx + 0x1]
               	cmp	edx, 0x3f
               	jae	 <L250>
               	xor	edx, edx
               	jmp	 <L251>
<L250>:
               	mov	rdx, rcx
               	movabs	rsi, 0x1ffffffc0
               	and	rdx, rsi
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	lea	rsi, [rsp + 0x3c0]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	dword ptr [rax + rax]
<L252>:
               	vaddps	zmm0, zmm0, zmmword ptr [rsi + 4*rdi - 0xc0]
               	vaddps	zmm1, zmm1, zmmword ptr [rsi + 4*rdi - 0x80]
               	vaddps	zmm2, zmm2, zmmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	zmm3, zmm3, zmmword ptr [rsi + 4*rdi]
               	add	rdi, 0x40
               	cmp	rdx, rdi
               	jne	 <L252>
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
               	je	 <L248>
               	test	cl, 0x38
               	je	 <L253>
<L251>:
               	movabs	rsi, 0x1ffffffc0
               	add	rsi, 0x38
               	and	rsi, rcx
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	lea	rdi, [rsp + 4*rax]
               	add	rdi, 0x300
               	nop	word ptr cs:[rax + rax]
<L254>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
               	add	rdx, 0x8
               	cmp	rsi, rdx
               	jne	 <L254>
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rsi
               	je	 <L248>
               	add	rax, rsi
               	jmp	 <L249>
<L253>:
               	add	rax, rdx
               	nop	word ptr [rax + rax]
<L249>:
               	mov	ecx, ebp
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x300
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L255>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L255>
               	jmp	 <L248>
               	nop	word ptr cs:[rax + rax]
<L247>:
               	sub	r12d, dword ptr [rsp + 0x70]
               	je	 <L256>
               	vmovss	dword ptr [rsp + 4*rax + 0x304], xmm0
               	mov	r13, r14
               	test	ebp, ebp
               	jns	 <L257>
               	jmp	 <L244>
<L256>:
               	mov	rbx, qword ptr [rsp + 0x28]
               	mov	rdi, qword ptr [rsp + 0x18]
               	mov	rbp, qword ptr [rsp]
               	shl	rbp, 0x5
               	mov	r12, qword ptr [rsp + 0x20]
               	jne	 <L258>
               	jmp	 <L259>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rbx, qword ptr [rsp + 0x28]
<L265>:
               	mov	rdi, qword ptr [rsp + 0x18]
<L259>:
               	test	rdi, rdi
               	je	 <L260>
               	vmovdqa	xmmword ptr [rsp + 0x70], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x70]
<L260>:
               	cmp	rbx, 0x2a
               	jne	 <L261>
               	cmp	r12, 0x30d40
               	je	 <L262>
               	cmp	r12, 0x186a0
               	jne	 <L261>
               	vucomiss	xmm0, dword ptr  <memset+0x10f8>
               	jne	 <L263>
<L261>:
               	xor	eax, eax
               	add	rsp, 0x728
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L243>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rbx, qword ptr [rsp + 0x28]
               	mov	rdi, qword ptr [rsp + 0x18]
               	shl	rbp, 0x5
               	mov	r12, qword ptr [rsp + 0x20]
               	je	 <L259>
<L258>:
               	add	rbp, rdi
               	mov	r14, rdi
               	vmovdqa	xmmword ptr [rsp + 0x70], xmm0
               	jmp	 <L264>
               	nop
<L266>:
               	add	r14, 0x8
               	cmp	r14, rbp
               	je	 <L265>
<L264>:
               	mov	rax, qword ptr [r14]
               	add	r14, 0x18
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [rax + 0x8]
               	mov	r15, qword ptr [r14 - 0x8]
               	test	r15, r15
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x70]
               	je	 <L266>
               	lock
               	dec	dword ptr [r15 + 0x8]
               	jne	 <L266>
               	mov	rax, qword ptr [r15]
               	mov	rdi, r15
               	call	qword ptr [rax + 0x10]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x70]
               	lock
               	dec	dword ptr [r15 + 0xc]
               	jne	 <L266>
               	mov	rax, qword ptr [r15]
               	mov	rdi, r15
               	call	qword ptr [rax + 0x18]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x70]
               	jmp	 <L266>
<L262>:
               	vucomiss	xmm0, dword ptr  <memset+0x10e8>
               	je	 <L261>
<L263>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x70], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x70]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x7a10>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	jmp	 <L267>
               	jmp	 <L267>
               	jmp	 <L267>
               	jmp	 <L267>
               	jmp	 <L267>
               	jmp	 <L267>
               	jmp	 <L267>
               	jmp	 <L267>
               	jmp	 <L267>
               	jmp	 <L267>
               	jmp	 <L267>
               	jmp	 <L267>
<L267>:
               	mov	rbx, rax
               	xor	edi, edi
               	call	 <boost::type_erasure::binding<boost::mpl::vector<Bodies3D::has_ComputeVolume<float () const, boost::type_erasure::_self>, boost::type_erasure::destructible<boost::type_erasure::_self>, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na>>::~binding()>
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

<boost::type_erasure::binding<boost::mpl::vector<Bodies3D::has_ComputeVolume<float () const, boost::type_erasure::_self>, boost::type_erasure::destructible<boost::type_erasure::_self>, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na>>::~binding()>:
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
               	vmulss	xmm1, xmm1, dword ptr  <memset+0x10fc>
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<boost::type_erasure::destructible<Bodies3D::Head@Evaluation.CRTP.Head>::value(boost::type_erasure::detail::storage&)>:
               	mov	rdi, qword ptr [rdi]
               	test	rdi, rdi
               	je	 <L0>
               	mov	esi, 0x60
               	jmp	 <_ZdlPvm@plt>
<L0>:
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x10fc>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<boost::type_erasure::destructible<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::value(boost::type_erasure::detail::storage&)>:
               	mov	rdi, qword ptr [rdi]
               	test	rdi, rdi
               	je	 <L0>
               	mov	esi, 0x28
               	jmp	 <_ZdlPvm@plt>
<L0>:
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cone@Evaluation.CRTP.Cone const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Cone@Evaluation.CRTP.Cone const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x10e4>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<boost::type_erasure::destructible<Bodies3D::Cone@Evaluation.CRTP.Cone>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Triangle@Evaluation.CRTP.Triangle>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>::value(boost::type_erasure::detail::storage&)>:
               	mov	rdi, qword ptr [rdi]
               	test	rdi, rdi
               	je	 <L0>
               	mov	esi, 0x24
               	jmp	 <_ZdlPvm@plt>
<L0>:
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x10ec>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<boost::type_erasure::destructible<Bodies3D::Cube@Evaluation.CRTP.Cube>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Circle@Evaluation.CRTP.Circle>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Square@Evaluation.CRTP.Square>::value(boost::type_erasure::detail::storage&)>:
               	mov	rdi, qword ptr [rdi]
               	test	rdi, rdi
               	je	 <L0>
               	mov	esi, 0x20
               	jmp	 <_ZdlPvm@plt>
<L0>:
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x10f0>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Triangle@Evaluation.CRTP.Triangle const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Triangle@Evaluation.CRTP.Triangle const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x10f4>
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Square@Evaluation.CRTP.Square const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Square@Evaluation.CRTP.Square const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	ret
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x10ec>
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Circle@Evaluation.CRTP.Circle const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Circle@Evaluation.CRTP.Circle const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x10ec>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x79e8>
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
