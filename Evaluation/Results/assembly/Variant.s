
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
               	call	qword ptr  <memset+0x74e8>
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
               	mov	rax, qword ptr  <memset+0x74f8>
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
               	mov	rax, qword ptr  <memset+0x7500>
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
               	cmp	qword ptr , 0x0 <memset+0x7508>
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

<_GLOBAL__sub_I_Variant.cpp>:
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x588
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
               	mov	qword ptr [rsp + 0x148], rdx
               	movsxd	rax, edx
               	imul	rdi, rax, 0x64
               	mov	rsi, qword ptr  <memset+0x7510>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	movsxd	rcx, r15d
               	vpbroadcastq	ymm0, rcx
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0xe40>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rdx, -0x61c8864680b583eb
               	add	rdx, rcx
               	shr	rdx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rdx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0xe60>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0xe68>
               	mov	qword ptr [rsp], rax
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x250], ymm0
               	vmovq	rdx, xmm0
               	vpextrq	rdi, xmm0, 0x1
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	r9, xmm0
               	vpextrq	r10, xmm0, 0x1
               	xor	r11d, r11d
               	xor	eax, eax
               	xor	ecx, ecx
               	xor	esi, esi
               	xor	r8d, r8d
               	jmp	 <L4>
<L6>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	r9, rdx
               	xor	r10, rdi
               	xor	rdi, r9
               	xor	rdx, r10
               	xor	r9, rbx
               	rorx	r10, r10, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L5>
<L4>:
               	bt	r14, r11
               	jae	 <L6>
               	xor	r8, rdx
               	xor	rsi, rdi
               	xor	rcx, r9
               	xor	rax, r10
               	jmp	 <L6>
<L5>:
               	movabs	rbp, -0x2a59ed990f36c6d4
               	xor	r11d, r11d
               	jmp	 <L7>
               	nop	dword ptr [rax + rax]
<L9>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	r9, rdx
               	xor	r10, rdi
               	xor	rdi, r9
               	xor	rdx, r10
               	xor	r9, rbx
               	rorx	r10, r10, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L8>
<L7>:
               	bt	rbp, r11
               	jae	 <L9>
               	xor	r8, rdx
               	xor	rsi, rdi
               	xor	rcx, r9
               	xor	rax, r10
               	jmp	 <L9>
<L8>:
               	movabs	r12, -0x56a7d9e71fc03656
               	xor	r11d, r11d
               	jmp	 <L10>
               	nop	dword ptr [rax + rax]
<L12>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	r9, rdx
               	xor	r10, rdi
               	xor	rdi, r9
               	xor	rdx, r10
               	xor	r9, rbx
               	rorx	r10, r10, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L11>
<L10>:
               	bt	r12, r11
               	jae	 <L12>
               	xor	r8, rdx
               	xor	rsi, rdi
               	xor	rcx, r9
               	xor	rax, r10
               	jmp	 <L12>
<L11>:
               	movabs	r13, 0x39abdc4529b1661c
               	xor	r11d, r11d
               	jmp	 <L13>
               	nop	dword ptr [rax + rax]
<L15>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	r9, rdx
               	xor	r10, rdi
               	xor	rdi, r9
               	xor	rdx, r10
               	xor	r9, rbx
               	rorx	r10, r10, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L14>
<L13>:
               	bt	r13, r11
               	jae	 <L15>
               	xor	r8, rdx
               	xor	rsi, rdi
               	xor	rcx, r9
               	xor	rax, r10
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0x270], r8
               	mov	qword ptr [rsp + 0x278], rsi
               	mov	qword ptr [rsp + 0x280], rcx
               	mov	qword ptr [rsp + 0x288], rax
               	xor	r11d, r11d
               	xor	edx, edx
               	xor	edi, edi
               	xor	r9d, r9d
               	xor	r10d, r10d
               	jmp	 <L16>
               	nop	dword ptr [rax + rax]
<L18>:
               	mov	rbx, rsi
               	shl	rbx, 0x11
               	xor	rcx, r8
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	r8, rax
               	xor	rcx, rbx
               	rorx	rax, rax, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L17>
<L16>:
               	bt	r14, r11
               	jae	 <L18>
               	xor	r10, r8
               	xor	r9, rsi
               	xor	rdi, rcx
               	xor	rdx, rax
               	jmp	 <L18>
<L17>:
               	xor	r11d, r11d
               	jmp	 <L19>
               	nop
<L21>:
               	mov	rbx, rsi
               	shl	rbx, 0x11
               	xor	rcx, r8
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	r8, rax
               	xor	rcx, rbx
               	rorx	rax, rax, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L20>
<L19>:
               	bt	rbp, r11
               	jae	 <L21>
               	xor	r10, r8
               	xor	r9, rsi
               	xor	rdi, rcx
               	xor	rdx, rax
               	jmp	 <L21>
<L20>:
               	xor	r11d, r11d
               	jmp	 <L22>
               	nop
<L24>:
               	mov	rbx, rsi
               	shl	rbx, 0x11
               	xor	rcx, r8
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	r8, rax
               	xor	rcx, rbx
               	rorx	rax, rax, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L23>
<L22>:
               	bt	r12, r11
               	jae	 <L24>
               	xor	r10, r8
               	xor	r9, rsi
               	xor	rdi, rcx
               	xor	rdx, rax
               	jmp	 <L24>
<L23>:
               	xor	r11d, r11d
               	jmp	 <L25>
               	nop
<L27>:
               	mov	rbx, rsi
               	shl	rbx, 0x11
               	xor	rcx, r8
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	r8, rax
               	xor	rcx, rbx
               	rorx	rax, rax, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L26>
<L25>:
               	bt	r13, r11
               	jae	 <L27>
               	xor	r10, r8
               	xor	r9, rsi
               	xor	rdi, rcx
               	xor	rdx, rax
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0x290], r10
               	mov	qword ptr [rsp + 0x298], r9
               	mov	qword ptr [rsp + 0x2a0], rdi
               	mov	qword ptr [rsp + 0x2a8], rdx
               	xor	ecx, ecx
               	xor	eax, eax
               	xor	esi, esi
               	xor	r8d, r8d
               	xor	r11d, r11d
               	jmp	 <L28>
               	nop	word ptr [rax + rax]
<L30>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rdx, r9
               	xor	r9, rdi
               	xor	r10, rdx
               	xor	rdi, rbx
               	rorx	rdx, rdx, 0x13
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L29>
<L28>:
               	bt	r14, rcx
               	jae	 <L30>
               	xor	r11, r10
               	xor	r8, r9
               	xor	rsi, rdi
               	xor	rax, rdx
               	jmp	 <L30>
<L29>:
               	xor	ecx, ecx
               	jmp	 <L31>
               	nop	dword ptr [rax]
<L33>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rdx, r9
               	xor	r9, rdi
               	xor	r10, rdx
               	xor	rdi, rbx
               	rorx	rdx, rdx, 0x13
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L32>
<L31>:
               	bt	rbp, rcx
               	jae	 <L33>
               	xor	r11, r10
               	xor	r8, r9
               	xor	rsi, rdi
               	xor	rax, rdx
               	jmp	 <L33>
<L32>:
               	xor	ecx, ecx
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rdx, r9
               	xor	r9, rdi
               	xor	r10, rdx
               	xor	rdi, rbx
               	rorx	rdx, rdx, 0x13
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L35>
<L34>:
               	bt	r12, rcx
               	jae	 <L36>
               	xor	r11, r10
               	xor	r8, r9
               	xor	rsi, rdi
               	xor	rax, rdx
               	jmp	 <L36>
<L35>:
               	xor	ecx, ecx
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rdx, r9
               	xor	r9, rdi
               	xor	r10, rdx
               	xor	rdi, rbx
               	rorx	rdx, rdx, 0x13
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L38>
<L37>:
               	bt	r13, rcx
               	jae	 <L39>
               	xor	r11, r10
               	xor	r8, r9
               	xor	rsi, rdi
               	xor	rax, rdx
               	jmp	 <L39>
<L38>:
               	mov	qword ptr [rsp + 0x2b0], r11
               	mov	qword ptr [rsp + 0x2b8], r8
               	mov	qword ptr [rsp + 0x2c0], rsi
               	mov	qword ptr [rsp + 0x2c8], rax
               	xor	r10d, r10d
               	xor	ecx, ecx
               	xor	edx, edx
               	xor	edi, edi
               	xor	r9d, r9d
               	jmp	 <L40>
               	nop	word ptr [rax + rax]
<L42>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rsi, r11
               	xor	rax, r8
               	xor	r8, rsi
               	xor	r11, rax
               	xor	rsi, rbx
               	rorx	rax, rax, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L41>
<L40>:
               	bt	r14, r10
               	jae	 <L42>
               	xor	r9, r11
               	xor	rdi, r8
               	xor	rdx, rsi
               	xor	rcx, rax
               	jmp	 <L42>
<L41>:
               	xor	r10d, r10d
               	jmp	 <L43>
               	nop
<L45>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rsi, r11
               	xor	rax, r8
               	xor	r8, rsi
               	xor	r11, rax
               	xor	rsi, rbx
               	rorx	rax, rax, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L44>
<L43>:
               	bt	rbp, r10
               	jae	 <L45>
               	xor	r9, r11
               	xor	rdi, r8
               	xor	rdx, rsi
               	xor	rcx, rax
               	jmp	 <L45>
<L44>:
               	xor	r10d, r10d
               	jmp	 <L46>
               	nop
<L48>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rsi, r11
               	xor	rax, r8
               	xor	r8, rsi
               	xor	r11, rax
               	xor	rsi, rbx
               	rorx	rax, rax, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L47>
<L46>:
               	bt	r12, r10
               	jae	 <L48>
               	xor	r9, r11
               	xor	rdi, r8
               	xor	rdx, rsi
               	xor	rcx, rax
               	jmp	 <L48>
<L47>:
               	xor	r10d, r10d
               	jmp	 <L49>
               	nop
<L51>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rsi, r11
               	xor	rax, r8
               	xor	r8, rsi
               	xor	r11, rax
               	xor	rsi, rbx
               	rorx	rax, rax, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L50>
<L49>:
               	bt	r13, r10
               	jae	 <L51>
               	xor	r9, r11
               	xor	rdi, r8
               	xor	rdx, rsi
               	xor	rcx, rax
               	jmp	 <L51>
<L50>:
               	mov	qword ptr [rsp + 0x2d0], r9
               	mov	qword ptr [rsp + 0x2d8], rdi
               	mov	qword ptr [rsp + 0x2e0], rdx
               	mov	qword ptr [rsp + 0x2e8], rcx
               	xor	r11d, r11d
               	xor	eax, eax
               	xor	esi, esi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	jmp	 <L52>
               	nop	dword ptr [rax + rax]
<L54>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	rdx, r9
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	r9, rcx
               	xor	rdx, rbx
               	rorx	rcx, rcx, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L53>
<L52>:
               	bt	r14, r11
               	jae	 <L54>
               	xor	r10, r9
               	xor	r8, rdi
               	xor	rsi, rdx
               	xor	rax, rcx
               	jmp	 <L54>
<L53>:
               	xor	r11d, r11d
               	jmp	 <L55>
               	nop
<L57>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	rdx, r9
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	r9, rcx
               	xor	rdx, rbx
               	rorx	rcx, rcx, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L56>
<L55>:
               	bt	rbp, r11
               	jae	 <L57>
               	xor	r10, r9
               	xor	r8, rdi
               	xor	rsi, rdx
               	xor	rax, rcx
               	jmp	 <L57>
<L56>:
               	xor	r11d, r11d
               	jmp	 <L58>
               	nop
<L60>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	rdx, r9
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	r9, rcx
               	xor	rdx, rbx
               	rorx	rcx, rcx, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L59>
<L58>:
               	bt	r12, r11
               	jae	 <L60>
               	xor	r10, r9
               	xor	r8, rdi
               	xor	rsi, rdx
               	xor	rax, rcx
               	jmp	 <L60>
<L59>:
               	xor	r11d, r11d
               	jmp	 <L61>
               	nop
<L63>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	rdx, r9
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	r9, rcx
               	xor	rdx, rbx
               	rorx	rcx, rcx, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L62>
<L61>:
               	bt	r13, r11
               	jae	 <L63>
               	xor	r10, r9
               	xor	r8, rdi
               	xor	rsi, rdx
               	xor	rax, rcx
               	jmp	 <L63>
<L62>:
               	mov	qword ptr [rsp + 0x2f0], r10
               	mov	qword ptr [rsp + 0x2f8], r8
               	mov	qword ptr [rsp + 0x300], rsi
               	mov	qword ptr [rsp + 0x308], rax
               	xor	r11d, r11d
               	xor	ecx, ecx
               	xor	edx, edx
               	xor	edi, edi
               	xor	r9d, r9d
               	jmp	 <L64>
               	nop	word ptr [rax + rax]
<L66>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rsi, r10
               	xor	rax, r8
               	xor	r8, rsi
               	xor	r10, rax
               	xor	rsi, rbx
               	rorx	rax, rax, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L65>
<L64>:
               	bt	r14, r11
               	jae	 <L66>
               	xor	r9, r10
               	xor	rdi, r8
               	xor	rdx, rsi
               	xor	rcx, rax
               	jmp	 <L66>
<L65>:
               	xor	r11d, r11d
               	jmp	 <L67>
               	nop
<L69>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rsi, r10
               	xor	rax, r8
               	xor	r8, rsi
               	xor	r10, rax
               	xor	rsi, rbx
               	rorx	rax, rax, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L68>
<L67>:
               	bt	rbp, r11
               	jae	 <L69>
               	xor	r9, r10
               	xor	rdi, r8
               	xor	rdx, rsi
               	xor	rcx, rax
               	jmp	 <L69>
<L68>:
               	xor	r11d, r11d
               	jmp	 <L70>
               	nop
<L72>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rsi, r10
               	xor	rax, r8
               	xor	r8, rsi
               	xor	r10, rax
               	xor	rsi, rbx
               	rorx	rax, rax, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L71>
<L70>:
               	bt	r12, r11
               	jae	 <L72>
               	xor	r9, r10
               	xor	rdi, r8
               	xor	rdx, rsi
               	xor	rcx, rax
               	jmp	 <L72>
<L71>:
               	xor	r11d, r11d
               	jmp	 <L73>
               	nop
<L75>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rsi, r10
               	xor	rax, r8
               	xor	r8, rsi
               	xor	r10, rax
               	xor	rsi, rbx
               	rorx	rax, rax, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L74>
<L73>:
               	bt	r13, r11
               	jae	 <L75>
               	xor	r9, r10
               	xor	rdi, r8
               	xor	rdx, rsi
               	xor	rcx, rax
               	jmp	 <L75>
<L74>:
               	mov	qword ptr [rsp + 0x310], r9
               	mov	qword ptr [rsp + 0x318], rdi
               	mov	qword ptr [rsp + 0x320], rdx
               	mov	qword ptr [rsp + 0x328], rcx
               	xor	eax, eax
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x120], 0x0
               	mov	qword ptr [rsp + 0x10], 0x0
               	jmp	 <L76>
               	nop	word ptr [rax + rax]
<L78>:
               	mov	rsi, rdi
               	shl	rsi, 0x11
               	xor	rdx, r9
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	r9, rcx
               	xor	rdx, rsi
               	rorx	rcx, rcx, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L77>
<L76>:
               	bt	r14, rax
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	rbx, rdx
               	xor	r10, rcx
               	jmp	 <L78>
<L77>:
               	xor	eax, eax
               	jmp	 <L79>
               	nop	word ptr cs:[rax + rax]
<L81>:
               	mov	rsi, rdi
               	shl	rsi, 0x11
               	xor	rdx, r9
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	r9, rcx
               	xor	rdx, rsi
               	rorx	rcx, rcx, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L80>
<L79>:
               	bt	rbp, rax
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	rbx, rdx
               	xor	r10, rcx
               	jmp	 <L81>
<L80>:
               	xor	eax, eax
               	jmp	 <L82>
               	nop	word ptr cs:[rax + rax]
<L84>:
               	mov	rsi, rdi
               	shl	rsi, 0x11
               	xor	rdx, r9
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	r9, rcx
               	xor	rdx, rsi
               	rorx	rcx, rcx, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L83>
<L82>:
               	bt	r12, rax
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	rbx, rdx
               	xor	r10, rcx
               	jmp	 <L84>
<L83>:
               	xor	eax, eax
               	jmp	 <L85>
               	nop	word ptr cs:[rax + rax]
<L87>:
               	mov	rsi, rdi
               	shl	rsi, 0x11
               	xor	rdx, r9
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	r9, rcx
               	xor	rdx, rsi
               	rorx	rcx, rcx, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L86>
<L85>:
               	bt	r13, rax
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	rbx, rdx
               	xor	r10, rcx
               	jmp	 <L87>
<L86>:
               	mov	rsi, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x330], rsi
               	mov	rdx, qword ptr [rsp + 0x120]
               	mov	qword ptr [rsp + 0x338], rdx
               	mov	qword ptr [rsp + 0x340], rbx
               	mov	qword ptr [rsp + 0x348], r10
               	xor	edi, edi
               	xor	r9d, r9d
               	mov	rax, r10
               	mov	qword ptr [rsp + 0x110], 0x0
               	mov	rcx, rbx
               	mov	qword ptr [rsp + 0x108], 0x0
               	mov	qword ptr [rsp + 0x100], 0x0
               	jmp	 <L88>
               	nop
<L90>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L89>
<L88>:
               	bt	r14, rdi
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x108], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	r9, rax
               	jmp	 <L90>
<L89>:
               	xor	edi, edi
               	jmp	 <L91>
               	nop	dword ptr [rax]
<L93>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L92>
<L91>:
               	bt	rbp, rdi
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x108], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	r9, rax
               	jmp	 <L93>
<L92>:
               	xor	edi, edi
               	jmp	 <L94>
               	nop	dword ptr [rax]
<L96>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L95>
<L94>:
               	bt	r12, rdi
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x108], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	r9, rax
               	jmp	 <L96>
<L95>:
               	xor	edi, edi
               	jmp	 <L97>
               	nop	dword ptr [rax]
<L99>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L98>
<L97>:
               	bt	r13, rdi
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x108], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	r9, rax
               	jmp	 <L99>
<L98>:
               	mov	rsi, qword ptr [rsp + 0x100]
               	mov	qword ptr [rsp + 0x350], rsi
               	mov	rdx, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0x358], rdx
               	mov	rcx, qword ptr [rsp + 0x110]
               	mov	qword ptr [rsp + 0x360], rcx
               	mov	qword ptr [rsp + 0x368], r9
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf8], 0x0
               	mov	rax, r9
               	mov	qword ptr [rsp + 0xf0], 0x0
               	mov	qword ptr [rsp + 0xe8], 0x0
               	mov	qword ptr [rsp + 0xe0], 0x0
               	jmp	 <L100>
               	nop	word ptr [rax + rax]
<L102>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L101>
<L100>:
               	bt	r14, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0xe8], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L104>
<L103>:
               	bt	rbp, rdi
               	jae	 <L105>
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0xe8], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L107>
<L106>:
               	bt	r12, rdi
               	jae	 <L108>
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0xe8], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L110>
<L109>:
               	bt	r13, rdi
               	jae	 <L111>
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0xe8], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
               	jmp	 <L111>
<L110>:
               	mov	rsi, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0x370], rsi
               	mov	rdx, qword ptr [rsp + 0xe8]
               	mov	qword ptr [rsp + 0x378], rdx
               	mov	rcx, qword ptr [rsp + 0xf0]
               	mov	qword ptr [rsp + 0x380], rcx
               	mov	rax, qword ptr [rsp + 0xf8]
               	mov	qword ptr [rsp + 0x388], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], 0x0
               	mov	qword ptr [rsp + 0xd0], 0x0
               	mov	qword ptr [rsp + 0xc8], 0x0
               	mov	qword ptr [rsp + 0xc0], 0x0
               	jmp	 <L112>
               	nop	word ptr cs:[rax + rax]
<L114>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L113>
<L112>:
               	bt	r14, rdi
               	jae	 <L114>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0xc8], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L116>
<L115>:
               	bt	rbp, rdi
               	jae	 <L117>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0xc8], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L119>
<L118>:
               	bt	r12, rdi
               	jae	 <L120>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0xc8], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L122>
<L121>:
               	bt	r13, rdi
               	jae	 <L123>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0xc8], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L123>
<L122>:
               	mov	rsi, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0x390], rsi
               	mov	rdx, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0x398], rdx
               	mov	rcx, qword ptr [rsp + 0xd0]
               	mov	qword ptr [rsp + 0x3a0], rcx
               	mov	rax, qword ptr [rsp + 0xd8]
               	mov	qword ptr [rsp + 0x3a8], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb8], 0x0
               	mov	qword ptr [rsp + 0xb0], 0x0
               	mov	qword ptr [rsp + 0xa8], 0x0
               	mov	qword ptr [rsp + 0xa0], 0x0
               	jmp	 <L124>
               	nop	word ptr cs:[rax + rax]
<L126>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L125>
<L124>:
               	bt	r14, rdi
               	jae	 <L126>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0xa8], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L128>
<L127>:
               	bt	rbp, rdi
               	jae	 <L129>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0xa8], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L131>
<L130>:
               	bt	r12, rdi
               	jae	 <L132>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0xa8], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L134>
<L133>:
               	bt	r13, rdi
               	jae	 <L135>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0xa8], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L135>
<L134>:
               	mov	rsi, qword ptr [rsp + 0xa0]
               	mov	qword ptr [rsp + 0x3b0], rsi
               	mov	rdx, qword ptr [rsp + 0xa8]
               	mov	qword ptr [rsp + 0x3b8], rdx
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0x3c0], rcx
               	mov	rax, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x3c8], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x98], 0x0
               	mov	qword ptr [rsp + 0x90], 0x0
               	mov	qword ptr [rsp + 0x88], 0x0
               	mov	qword ptr [rsp + 0x80], 0x0
               	jmp	 <L136>
               	nop	word ptr cs:[rax + rax]
<L138>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L137>
<L136>:
               	bt	r14, rdi
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L140>
<L139>:
               	bt	rbp, rdi
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L143>
<L142>:
               	bt	r12, rdi
               	jae	 <L144>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L146>
<L145>:
               	bt	r13, rdi
               	jae	 <L147>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
               	jmp	 <L147>
<L146>:
               	mov	rsi, qword ptr [rsp + 0x80]
               	mov	qword ptr [rsp + 0x3d0], rsi
               	mov	rdx, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x3d8], rdx
               	mov	rcx, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x3e0], rcx
               	mov	rax, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x3e8], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x78], 0x0
               	mov	qword ptr [rsp + 0x70], 0x0
               	mov	qword ptr [rsp + 0x68], 0x0
               	mov	qword ptr [rsp + 0x60], 0x0
               	jmp	 <L148>
               	nop	word ptr cs:[rax + rax]
<L150>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L149>
<L148>:
               	bt	r14, rdi
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	qword ptr [rsp + 0x78], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L152>
<L151>:
               	bt	rbp, rdi
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	qword ptr [rsp + 0x78], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L155>
<L154>:
               	bt	r12, rdi
               	jae	 <L156>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	qword ptr [rsp + 0x78], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L158>
<L157>:
               	bt	r13, rdi
               	jae	 <L159>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L159>
<L158>:
               	mov	rsi, qword ptr [rsp + 0x60]
               	mov	qword ptr [rsp + 0x3f0], rsi
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	qword ptr [rsp + 0x3f8], rdx
               	mov	rcx, qword ptr [rsp + 0x70]
               	mov	qword ptr [rsp + 0x400], rcx
               	mov	rax, qword ptr [rsp + 0x78]
               	mov	qword ptr [rsp + 0x408], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x58], 0x0
               	mov	qword ptr [rsp + 0x50], 0x0
               	mov	qword ptr [rsp + 0x48], 0x0
               	mov	qword ptr [rsp + 0x40], 0x0
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L161>
<L160>:
               	bt	r14, rdi
               	jae	 <L162>
               	xor	qword ptr [rsp + 0x40], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x50], rcx
               	xor	qword ptr [rsp + 0x58], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L164>
<L163>:
               	bt	rbp, rdi
               	jae	 <L165>
               	xor	qword ptr [rsp + 0x40], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x50], rcx
               	xor	qword ptr [rsp + 0x58], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L167>
<L166>:
               	bt	r12, rdi
               	jae	 <L168>
               	xor	qword ptr [rsp + 0x40], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x50], rcx
               	xor	qword ptr [rsp + 0x58], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L170>
<L169>:
               	bt	r13, rdi
               	jae	 <L171>
               	xor	qword ptr [rsp + 0x40], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x50], rcx
               	xor	qword ptr [rsp + 0x58], rax
               	jmp	 <L171>
<L170>:
               	mov	rsi, qword ptr [rsp + 0x40]
               	mov	qword ptr [rsp + 0x410], rsi
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	qword ptr [rsp + 0x418], rdx
               	mov	rcx, qword ptr [rsp + 0x50]
               	mov	qword ptr [rsp + 0x420], rcx
               	mov	rax, qword ptr [rsp + 0x58]
               	mov	qword ptr [rsp + 0x428], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x38], 0x0
               	mov	qword ptr [rsp + 0x30], 0x0
               	mov	qword ptr [rsp + 0x28], 0x0
               	mov	qword ptr [rsp + 0x20], 0x0
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L173>
<L172>:
               	bt	r14, rdi
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	qword ptr [rsp + 0x38], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L176>
<L175>:
               	bt	rbp, rdi
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	qword ptr [rsp + 0x38], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L179>
<L178>:
               	bt	r12, rdi
               	jae	 <L180>
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	qword ptr [rsp + 0x38], rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L182>
<L181>:
               	bt	r13, rdi
               	jae	 <L183>
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	qword ptr [rsp + 0x38], rax
               	jmp	 <L183>
<L182>:
               	mov	qword ptr [rsp + 0x240], r9
               	mov	qword ptr [rsp + 0x248], r10
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	qword ptr [rsp + 0x430], r9
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	qword ptr [rsp + 0x438], r8
               	mov	rdi, qword ptr [rsp + 0x30]
               	mov	qword ptr [rsp + 0x440], rdi
               	mov	rax, qword ptr [rsp + 0x38]
               	mov	qword ptr [rsp + 0x448], rax
               	xor	r10d, r10d
               	xor	ecx, ecx
               	xor	edx, edx
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x18], 0x0
               	jmp	 <L184>
               	nop	dword ptr [rax]
<L186>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rax, r8
               	xor	r8, rdi
               	xor	r9, rax
               	xor	rdi, r11
               	rorx	rax, rax, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L185>
<L184>:
               	bt	r14, r10
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x18], r9
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rcx, rax
               	jmp	 <L186>
<L185>:
               	xor	r10d, r10d
               	jmp	 <L187>
<L189>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rax, r8
               	xor	r8, rdi
               	xor	r9, rax
               	xor	rdi, r11
               	rorx	rax, rax, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L188>
<L187>:
               	bt	rbp, r10
               	jae	 <L189>
               	xor	qword ptr [rsp + 0x18], r9
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rcx, rax
               	jmp	 <L189>
<L188>:
               	xor	r10d, r10d
               	jmp	 <L190>
<L192>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rax, r8
               	xor	r8, rdi
               	xor	r9, rax
               	xor	rdi, r11
               	rorx	rax, rax, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L191>
<L190>:
               	bt	r12, r10
               	jae	 <L192>
               	xor	qword ptr [rsp + 0x18], r9
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rcx, rax
               	jmp	 <L192>
<L191>:
               	xor	r10d, r10d
               	jmp	 <L193>
<L195>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rax, r8
               	xor	r8, rdi
               	xor	r9, rax
               	xor	rdi, r11
               	rorx	rax, rax, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L194>
<L193>:
               	bt	r13, r10
               	jae	 <L195>
               	xor	qword ptr [rsp + 0x18], r9
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rcx, rax
               	jmp	 <L195>
<L194>:
               	mov	qword ptr [rsp + 0x138], r15
               	mov	rax, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x450], rax
               	mov	qword ptr [rsp + 0x458], rsi
               	mov	qword ptr [rsp + 0x460], rdx
               	mov	qword ptr [rsp + 0x468], rcx
               	xor	edi, edi
               	xor	r11d, r11d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	xor	r9d, r9d
               	jmp	 <L196>
               	nop	dword ptr [rax + rax]
<L198>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rax, rcx
               	xor	rdx, r8
               	rorx	rcx, rcx, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L197>
<L196>:
               	bt	r14, rdi
               	jae	 <L198>
               	xor	r9, rax
               	xor	r15, rsi
               	xor	r10, rdx
               	xor	r11, rcx
               	jmp	 <L198>
<L197>:
               	xor	edi, edi
               	jmp	 <L199>
               	nop	dword ptr [rax]
<L201>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rax, rcx
               	xor	rdx, r8
               	rorx	rcx, rcx, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L200>
<L199>:
               	bt	rbp, rdi
               	jae	 <L201>
               	xor	r9, rax
               	xor	r15, rsi
               	xor	r10, rdx
               	xor	r11, rcx
               	jmp	 <L201>
<L200>:
               	xor	edi, edi
               	jmp	 <L202>
               	nop	dword ptr [rax]
<L204>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rax, rcx
               	xor	rdx, r8
               	rorx	rcx, rcx, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L203>
<L202>:
               	bt	r12, rdi
               	jae	 <L204>
               	xor	r9, rax
               	xor	r15, rsi
               	xor	r10, rdx
               	xor	r11, rcx
               	jmp	 <L204>
<L203>:
               	xor	edi, edi
               	jmp	 <L205>
               	nop	dword ptr [rax]
<L207>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rax, rcx
               	xor	rdx, r8
               	rorx	rcx, rcx, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L206>
<L205>:
               	bt	r13, rdi
               	jae	 <L207>
               	xor	r9, rax
               	xor	r15, rsi
               	xor	r10, rdx
               	xor	r11, rcx
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x470], r9
               	mov	qword ptr [rsp + 0x478], r15
               	mov	qword ptr [rsp + 0x480], r10
               	mov	qword ptr [rsp + 0x488], r11
               	xor	edi, edi
               	xor	r12d, r12d
               	mov	rax, r11
               	xor	esi, esi
               	mov	rcx, r10
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x140], r15
               	mov	rdx, r15
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x230], r10
               	jmp	 <L208>
               	nop	word ptr cs:[rax + rax]
<L210>:
               	mov	r10, rdx
               	shl	r10, 0x11
               	xor	rcx, r9
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r9, rax
               	xor	rcx, r10
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L209>
<L208>:
               	bt	r14, rdi
               	jae	 <L210>
               	xor	r15, r9
               	xor	r8, rdx
               	xor	rsi, rcx
               	xor	r12, rax
               	jmp	 <L210>
<L209>:
               	xor	edi, edi
               	jmp	 <L211>
               	nop	dword ptr [rax]
<L213>:
               	mov	r10, rdx
               	shl	r10, 0x11
               	xor	rcx, r9
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r9, rax
               	xor	rcx, r10
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L212>
<L211>:
               	bt	rbp, rdi
               	jae	 <L213>
               	xor	r15, r9
               	xor	r8, rdx
               	xor	rsi, rcx
               	xor	r12, rax
               	jmp	 <L213>
<L212>:
               	xor	edi, edi
               	jmp	 <L214>
               	nop	dword ptr [rax]
<L216>:
               	mov	r10, rdx
               	shl	r10, 0x11
               	xor	rcx, r9
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r9, rax
               	xor	rcx, r10
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L215>
<L214>:
               	movabs	r10, -0x56a7d9e71fc03656
               	bt	r10, rdi
               	jae	 <L216>
               	xor	r15, r9
               	xor	r8, rdx
               	xor	rsi, rcx
               	xor	r12, rax
               	jmp	 <L216>
<L215>:
               	xor	edi, edi
               	jmp	 <L217>
               	nop	word ptr [rax + rax]
<L219>:
               	mov	r10, rdx
               	shl	r10, 0x11
               	xor	rcx, r9
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r9, rax
               	xor	rcx, r10
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L218>
<L217>:
               	movabs	r10, 0x39abdc4529b1661c
               	bt	r10, rdi
               	jae	 <L219>
               	xor	r15, r9
               	xor	r8, rdx
               	xor	rsi, rcx
               	xor	r12, rax
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x238], r11
               	mov	qword ptr [rsp + 0x8], rbx
               	mov	qword ptr [rsp + 0x490], r15
               	mov	qword ptr [rsp + 0x498], r8
               	mov	qword ptr [rsp + 0x4a0], rsi
               	mov	qword ptr [rsp + 0x4a8], r12
               	xor	ebx, ebx
               	xor	r9d, r9d
               	mov	rax, r12
               	xor	r10d, r10d
               	mov	rcx, rsi
               	mov	r11, r15
               	xor	r15d, r15d
               	mov	rdi, r8
               	mov	qword ptr [rsp + 0x228], r11
               	xor	edx, edx
               	mov	rbp, r14
               	jmp	 <L220>
               	nop	word ptr cs:[rax + rax]
<L222>:
               	mov	r14, rdi
               	shl	r14, 0x11
               	xor	rcx, r11
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r11, rax
               	xor	rcx, r14
               	rorx	rax, rax, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	mov	r14, rbp
               	je	 <L221>
<L220>:
               	bt	r14, rbx
               	jae	 <L222>
               	xor	rdx, r11
               	xor	r15, rdi
               	xor	r10, rcx
               	xor	r9, rax
               	jmp	 <L222>
<L221>:
               	xor	ebx, ebx
               	movabs	rbp, -0x2a59ed990f36c6d4
               	jmp	 <L223>
               	nop	word ptr [rax + rax]
<L225>:
               	mov	r14, rdi
               	shl	r14, 0x11
               	xor	rcx, r11
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r11, rax
               	xor	rcx, r14
               	rorx	rax, rax, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L224>
<L223>:
               	bt	rbp, rbx
               	jae	 <L225>
               	xor	rdx, r11
               	xor	r15, rdi
               	xor	r10, rcx
               	xor	r9, rax
               	jmp	 <L225>
<L224>:
               	xor	ebx, ebx
               	jmp	 <L226>
               	nop	dword ptr [rax]
<L228>:
               	mov	r14, rdi
               	shl	r14, 0x11
               	xor	rcx, r11
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r11, rax
               	xor	rcx, r14
               	rorx	rax, rax, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L227>
<L226>:
               	movabs	r14, -0x56a7d9e71fc03656
               	bt	r14, rbx
               	jae	 <L228>
               	xor	rdx, r11
               	xor	r15, rdi
               	xor	r10, rcx
               	xor	r9, rax
               	jmp	 <L228>
<L227>:
               	xor	ebx, ebx
               	jmp	 <L229>
               	nop	word ptr [rax + rax]
<L231>:
               	mov	r14, rdi
               	shl	r14, 0x11
               	xor	rcx, r11
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r11, rax
               	xor	rcx, r14
               	rorx	rax, rax, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L230>
<L229>:
               	movabs	r14, 0x39abdc4529b1661c
               	bt	r14, rbx
               	jae	 <L231>
               	xor	rdx, r11
               	xor	r15, rdi
               	xor	r10, rcx
               	xor	r9, rax
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x4b0], rdx
               	mov	qword ptr [rsp + 0x4b8], r15
               	mov	qword ptr [rsp + 0x4c0], r10
               	mov	qword ptr [rsp + 0x4c8], r9
               	mov	dword ptr [rsp + 0x4d0], 0x0
               	lea	rax, [rsp + 0x250]
               	kxnorw	k1, k0, k0
               	vpmovzxbd	ymm0, qword ptr  <memset+0xe70>
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm2, xmm2, xmm2
               	kxnorw	k2, k0, k0
               	vpgatherdq	zmm2 {k2}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm2, 0x2
               	vpaddq	zmm0, zmm0, zmm2
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm2, zmm0, 0x3
               	vpaddq	zmm5, zmm2, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x4d8], zmm5
               	vpmovsxwd	ymm0, xmmword ptr  <memset+0xf10>
               	vpgatherdq	zmm1 {k1}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm1, 0x2
               	vpaddq	zmm0, zmm0, zmm1
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm6, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x518], zmm6
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x458]
               	vpinsrq	xmm0, xmm0, qword ptr [rsp + 0x140], 0x1
               	vpbroadcastq	ymm1, r8
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, r15
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm7, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x558], ymm7
               	mov	rcx, qword ptr [rsp + 0x148]
               	test	ecx, ecx
               	je	 <L232>
               	vpbroadcastq	zmm1, rax
               	vpaddq	zmm0, zmm1, zmmword ptr  <memset+0xe80>
               	vpaddq	zmm1, zmm1, zmmword ptr  <memset+0xec0>
               	vextracti32x4	xmm2, zmm6, 0x2
               	vextracti128	xmm3, ymm6, 0x1
               	vpextrq	rbx, xmm3, 0x1
               	vpextrq	rdi, xmm6, 0x1
               	vmovq	rbp, xmm2
               	vmovq	r11, xmm3
               	vmovq	rax, xmm5
               	mov	r13, qword ptr [rsp + 0x250]
               	mov	r14, qword ptr [rsp + 0x258]
               	mov	qword ptr [rsp + 0x220], r14
               	mov	r14, qword ptr [rsp + 0x260]
               	mov	qword ptr [rsp + 0x218], r14
               	mov	r14, qword ptr [rsp + 0x268]
               	mov	qword ptr [rsp + 0x210], r14
               	mov	r14, qword ptr [rsp + 0x278]
               	mov	qword ptr [rsp + 0x208], r14
               	mov	r14, qword ptr [rsp + 0x270]
               	mov	qword ptr [rsp + 0x200], r14
               	mov	r14, qword ptr [rsp + 0x280]
               	mov	qword ptr [rsp + 0x1f8], r14
               	mov	r14, qword ptr [rsp + 0x288]
               	mov	qword ptr [rsp + 0x1f0], r14
               	mov	r14, qword ptr [rsp + 0x298]
               	mov	qword ptr [rsp + 0x1e8], r14
               	mov	r14, qword ptr [rsp + 0x290]
               	mov	qword ptr [rsp + 0x1e0], r14
               	vextracti128	xmm3, ymm7, 0x1
               	vpalignr	xmm8, xmm3, xmm2, 0x8   # xmm8 = xmm2[8,9,10,11,12,13,14,15],xmm3[0,1,2,3,4,5,6,7]
               	vpbroadcastd	ymm2, dword ptr  <memset+0xf20>
               	vmovdqa	xmm3, xmmword ptr  <memset+0xf00>
               	vpbroadcastd	xmm4, dword ptr  <memset+0xf20>
               	mov	r14, qword ptr [rsp + 0x2a0]
               	mov	qword ptr [rsp + 0x1d8], r14
               	mov	r14, qword ptr [rsp + 0x2a8]
               	mov	qword ptr [rsp + 0x1d0], r14
               	mov	r14, qword ptr [rsp + 0x2b8]
               	mov	qword ptr [rsp + 0x1c8], r14
               	mov	r14, qword ptr [rsp + 0x2b0]
               	mov	qword ptr [rsp + 0x1c0], r14
               	mov	r14, qword ptr [rsp + 0x2c0]
               	mov	qword ptr [rsp + 0x1b8], r14
               	mov	r14, qword ptr [rsp + 0x2c8]
               	mov	qword ptr [rsp + 0x1b0], r14
               	mov	r14, qword ptr [rsp + 0x2d8]
               	mov	qword ptr [rsp + 0x1a8], r14
               	mov	r14, qword ptr [rsp + 0x2d0]
               	mov	qword ptr [rsp + 0x1a0], r14
               	mov	r14, qword ptr [rsp + 0x2e0]
               	mov	qword ptr [rsp + 0x198], r14
               	mov	r14, qword ptr [rsp + 0x2e8]
               	mov	qword ptr [rsp + 0x190], r14
               	mov	r14, qword ptr [rsp + 0x2f8]
               	mov	qword ptr [rsp + 0x188], r14
               	mov	r14, qword ptr [rsp + 0x2f0]
               	mov	qword ptr [rsp + 0x180], r14
               	mov	r14, qword ptr [rsp + 0x300]
               	mov	qword ptr [rsp + 0x178], r14
               	mov	r14, qword ptr [rsp + 0x308]
               	mov	qword ptr [rsp + 0x170], r14
               	mov	r14, qword ptr [rsp + 0x318]
               	mov	qword ptr [rsp + 0x168], r14
               	mov	r14, qword ptr [rsp + 0x310]
               	mov	qword ptr [rsp + 0x160], r14
               	mov	r14, qword ptr [rsp + 0x320]
               	mov	qword ptr [rsp + 0x158], r14
               	mov	r14, qword ptr [rsp + 0x328]
               	mov	qword ptr [rsp + 0x150], r14
               	mov	ecx, ecx
               	mov	qword ptr [rsp + 0x580], rcx
               	xor	ecx, ecx
               	mov	r14, qword ptr [rsp]
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
               	imul	rdi, rcx, 0x64
               	add	rdi, qword ptr [rsp]
               	vmovdqu	ymmword ptr [r14], ymm9
<L236>:
               	mov	r11, qword ptr [rsp + 0x8]
               	mov	byte ptr [rdi + 0x60], al
               	inc	rcx
               	mov	dword ptr [rsp + 0x4d0], ecx
               	test	cl, 0x7
               	je	 <L234>
               	vpsrlq	zmm5, zmm5, 0x8
               	vmovdqu64	zmmword ptr [rsp + 0x4d8], zmm5
               	vpsrlq	zmm6, zmm6, 0x8
               	vpsrlq	ymm7, ymm7, 0x8
<L237>:
               	vmovq	rax, xmm5
               	vpextrq	rdi, xmm6, 0x1
               	vextracti128	xmm8, ymm6, 0x1
               	vmovq	r11, xmm8
               	vextracti32x4	xmm9, zmm6, 0x2
               	vmovq	rbp, xmm9
               	vpextrq	rbx, xmm8, 0x1
               	vmovdqu64	zmmword ptr [rsp + 0x518], zmm6
               	vmovdqu	ymmword ptr [rsp + 0x558], ymm7
               	vextracti128	xmm8, ymm7, 0x1
               	vpalignr	xmm8, xmm8, xmm9, 0x8   # xmm8 = xmm9[8,9,10,11,12,13,14,15],xmm8[0,1,2,3,4,5,6,7]
               	add	r14, 0x64
               	cmp	qword ptr [rsp + 0x580], rcx
               	je	 <L235>
<L233>:
               	vmovq	xmm9, rdi
               	vmovq	xmm10, r11
               	vpunpcklqdq	xmm10, xmm9, xmm10 # xmm10 = xmm9[0],xmm10[0]
               	vmovdqu64	zmm9, zmmword ptr [rsp + 0x4e0]
               	vpmovqd	ymm9, zmm9
               	vpand	ymm9, ymm9, ymm2
               	vcvtdq2ps	ymm9, ymm9
               	vpshufb	xmm10, xmm10, xmm3
               	vcvtdq2ps	xmm10, xmm10
               	movzx	edi, al
               	imul	edi, edi, 0x4f
               	shr	edi, 0xa
               	lea	r11d, [rdi + 2*rdi]
               	lea	edi, [rdi + 4*r11]
               	sub	al, dil
               	movzx	edi, al
               	lea	r11,  <memset+0xf3c>
               	movsxd	rdi, dword ptr [r11 + 4*rdi]
               	add	rdi, r11
               	jmp	rdi
               	imul	rdi, rcx, 0x64
               	add	rdi, qword ptr [rsp]
               	vmovdqu	ymmword ptr [r14], ymm9
               	vmovss	dword ptr [r14 + 0x20], xmm10
               	jmp	 <L236>
               	nop	word ptr cs:[rax + rax]
<L234>:
               	mov	rdi, qword ptr [rsp + 0x220]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x218]
               	xor	rbx, r13
               	mov	rbp, qword ptr [rsp + 0x210]
               	xor	rbp, rdi
               	xor	rdi, rbx
               	mov	qword ptr [rsp + 0x220], rdi
               	mov	qword ptr [rsp + 0x258], rdi
               	xor	r13, rbp
               	mov	qword ptr [rsp + 0x578], r13
               	mov	qword ptr [rsp + 0x250], r13
               	xor	rbx, rax
               	mov	qword ptr [rsp + 0x218], rbx
               	mov	qword ptr [rsp + 0x260], rbx
               	rorx	rbp, rbp, 0x13
               	mov	qword ptr [rsp + 0x210], rbp
               	mov	qword ptr [rsp + 0x268], rbp
               	mov	rdi, qword ptr [rsp + 0x208]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x200]
               	mov	r13, qword ptr [rsp + 0x1f8]
               	xor	r13, rbx
               	mov	rbp, qword ptr [rsp + 0x1f0]
               	xor	rbp, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x208], rdi
               	mov	qword ptr [rsp + 0x278], rdi
               	xor	rbx, rbp
               	mov	qword ptr [rsp + 0x200], rbx
               	mov	qword ptr [rsp + 0x270], rbx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x1f8], r13
               	mov	qword ptr [rsp + 0x280], r13
               	rorx	rbp, rbp, 0x13
               	mov	qword ptr [rsp + 0x1f0], rbp
               	mov	qword ptr [rsp + 0x288], rbp
               	mov	rdi, qword ptr [rsp + 0x1e8]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x1e0]
               	mov	r13, qword ptr [rsp + 0x1d8]
               	xor	r13, rbx
               	mov	rbp, qword ptr [rsp + 0x1d0]
               	xor	rbp, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x1e8], rdi
               	mov	qword ptr [rsp + 0x298], rdi
               	xor	rbx, rbp
               	mov	qword ptr [rsp + 0x1e0], rbx
               	mov	qword ptr [rsp + 0x290], rbx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x1d8], r13
               	mov	qword ptr [rsp + 0x2a0], r13
               	rorx	rbp, rbp, 0x13
               	mov	qword ptr [rsp + 0x1d0], rbp
               	mov	qword ptr [rsp + 0x2a8], rbp
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x1c0]
               	mov	r13, qword ptr [rsp + 0x1b8]
               	xor	r13, rbx
               	mov	rbp, qword ptr [rsp + 0x1b0]
               	xor	rbp, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x1c8], rdi
               	mov	qword ptr [rsp + 0x2b8], rdi
               	xor	rbx, rbp
               	mov	qword ptr [rsp + 0x1c0], rbx
               	mov	qword ptr [rsp + 0x2b0], rbx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x1b8], r13
               	mov	qword ptr [rsp + 0x2c0], r13
               	rorx	rbp, rbp, 0x13
               	mov	qword ptr [rsp + 0x1b0], rbp
               	mov	qword ptr [rsp + 0x2c8], rbp
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x1a0]
               	mov	r13, qword ptr [rsp + 0x198]
               	xor	r13, rbx
               	mov	rbp, qword ptr [rsp + 0x190]
               	xor	rbp, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x1a8], rdi
               	mov	qword ptr [rsp + 0x2d8], rdi
               	xor	rbx, rbp
               	mov	qword ptr [rsp + 0x1a0], rbx
               	mov	qword ptr [rsp + 0x2d0], rbx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x198], r13
               	mov	qword ptr [rsp + 0x2e0], r13
               	rorx	rbp, rbp, 0x13
               	mov	qword ptr [rsp + 0x190], rbp
               	mov	qword ptr [rsp + 0x2e8], rbp
               	mov	rdi, qword ptr [rsp + 0x188]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x180]
               	mov	r13, qword ptr [rsp + 0x178]
               	xor	r13, rbx
               	mov	rbp, qword ptr [rsp + 0x170]
               	xor	rbp, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x188], rdi
               	mov	qword ptr [rsp + 0x2f8], rdi
               	xor	rbx, rbp
               	mov	qword ptr [rsp + 0x180], rbx
               	mov	qword ptr [rsp + 0x2f0], rbx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x178], r13
               	mov	qword ptr [rsp + 0x300], r13
               	rorx	rbp, rbp, 0x13
               	mov	qword ptr [rsp + 0x170], rbp
               	mov	qword ptr [rsp + 0x308], rbp
               	mov	rdi, qword ptr [rsp + 0x168]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x160]
               	mov	r13, qword ptr [rsp + 0x158]
               	xor	r13, rbx
               	mov	rbp, qword ptr [rsp + 0x150]
               	xor	rbp, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x168], rdi
               	mov	qword ptr [rsp + 0x318], rdi
               	xor	rbx, rbp
               	mov	qword ptr [rsp + 0x160], rbx
               	mov	qword ptr [rsp + 0x310], rbx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x158], r13
               	mov	qword ptr [rsp + 0x320], r13
               	rorx	rbp, rbp, 0x13
               	mov	qword ptr [rsp + 0x150], rbp
               	mov	qword ptr [rsp + 0x328], rbp
               	mov	rbp, qword ptr [rsp + 0x120]
               	mov	rax, rbp
               	shl	rax, 0x11
               	mov	r13, qword ptr [rsp + 0x10]
               	xor	r11, r13
               	mov	rdi, qword ptr [rsp + 0x248]
               	xor	rdi, rbp
               	xor	rbp, r11
               	mov	qword ptr [rsp + 0x120], rbp
               	mov	qword ptr [rsp + 0x338], rbp
               	xor	r13, rdi
               	mov	qword ptr [rsp + 0x10], r13
               	mov	qword ptr [rsp + 0x330], r13
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x8], r11
               	mov	qword ptr [rsp + 0x340], r11
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x248], rdi
               	mov	qword ptr [rsp + 0x348], rdi
               	mov	r13, qword ptr [rsp + 0x108]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x110]
               	mov	rbp, qword ptr [rsp + 0x100]
               	xor	r11, rbp
               	mov	rdi, qword ptr [rsp + 0x240]
               	xor	rdi, r13
               	xor	r13, r11
               	mov	qword ptr [rsp + 0x108], r13
               	mov	qword ptr [rsp + 0x358], r13
               	xor	rbp, rdi
               	mov	qword ptr [rsp + 0x100], rbp
               	mov	qword ptr [rsp + 0x350], rbp
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x110], r11
               	mov	qword ptr [rsp + 0x360], r11
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x240], rdi
               	mov	qword ptr [rsp + 0x368], rdi
               	mov	r13, qword ptr [rsp + 0xe8]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0xf0]
               	mov	rbp, qword ptr [rsp + 0xe0]
               	xor	r11, rbp
               	mov	rdi, qword ptr [rsp + 0xf8]
               	xor	rdi, r13
               	xor	r13, r11
               	mov	qword ptr [rsp + 0xe8], r13
               	mov	qword ptr [rsp + 0x378], r13
               	xor	rbp, rdi
               	mov	qword ptr [rsp + 0xe0], rbp
               	mov	qword ptr [rsp + 0x370], rbp
               	xor	r11, rax
               	mov	qword ptr [rsp + 0xf0], r11
               	mov	qword ptr [rsp + 0x380], r11
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0xf8], rdi
               	mov	qword ptr [rsp + 0x388], rdi
               	mov	r13, qword ptr [rsp + 0xc8]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0xd0]
               	mov	rbp, qword ptr [rsp + 0xc0]
               	xor	r11, rbp
               	mov	rdi, qword ptr [rsp + 0xd8]
               	xor	rdi, r13
               	xor	r13, r11
               	mov	qword ptr [rsp + 0xc8], r13
               	mov	qword ptr [rsp + 0x398], r13
               	xor	rbp, rdi
               	mov	qword ptr [rsp + 0xc0], rbp
               	mov	qword ptr [rsp + 0x390], rbp
               	xor	r11, rax
               	mov	qword ptr [rsp + 0xd0], r11
               	mov	qword ptr [rsp + 0x3a0], r11
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0xd8], rdi
               	mov	qword ptr [rsp + 0x3a8], rdi
               	mov	r13, qword ptr [rsp + 0xa8]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0xb0]
               	mov	rbp, qword ptr [rsp + 0xa0]
               	xor	r11, rbp
               	mov	rdi, qword ptr [rsp + 0xb8]
               	xor	rdi, r13
               	xor	r13, r11
               	mov	qword ptr [rsp + 0xa8], r13
               	mov	qword ptr [rsp + 0x3b8], r13
               	xor	rbp, rdi
               	mov	qword ptr [rsp + 0xa0], rbp
               	mov	qword ptr [rsp + 0x3b0], rbp
               	xor	r11, rax
               	mov	qword ptr [rsp + 0xb0], r11
               	mov	qword ptr [rsp + 0x3c0], r11
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0xb8], rdi
               	mov	qword ptr [rsp + 0x3c8], rdi
               	mov	r13, qword ptr [rsp + 0x88]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x90]
               	mov	rbp, qword ptr [rsp + 0x80]
               	xor	r11, rbp
               	mov	rdi, qword ptr [rsp + 0x98]
               	xor	rdi, r13
               	xor	r13, r11
               	mov	qword ptr [rsp + 0x88], r13
               	mov	qword ptr [rsp + 0x3d8], r13
               	xor	rbp, rdi
               	mov	qword ptr [rsp + 0x80], rbp
               	mov	qword ptr [rsp + 0x3d0], rbp
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x90], r11
               	mov	qword ptr [rsp + 0x3e0], r11
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x98], rdi
               	mov	qword ptr [rsp + 0x3e8], rdi
               	mov	r13, qword ptr [rsp + 0x68]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x70]
               	mov	rbp, qword ptr [rsp + 0x60]
               	xor	r11, rbp
               	mov	rdi, qword ptr [rsp + 0x78]
               	xor	rdi, r13
               	xor	r13, r11
               	mov	qword ptr [rsp + 0x68], r13
               	mov	qword ptr [rsp + 0x3f8], r13
               	xor	rbp, rdi
               	mov	qword ptr [rsp + 0x60], rbp
               	mov	qword ptr [rsp + 0x3f0], rbp
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x70], r11
               	mov	qword ptr [rsp + 0x400], r11
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x78], rdi
               	mov	qword ptr [rsp + 0x408], rdi
               	mov	r13, qword ptr [rsp + 0x48]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x50]
               	mov	rbp, qword ptr [rsp + 0x40]
               	xor	r11, rbp
               	mov	rdi, qword ptr [rsp + 0x58]
               	xor	rdi, r13
               	xor	r13, r11
               	mov	qword ptr [rsp + 0x48], r13
               	mov	qword ptr [rsp + 0x418], r13
               	xor	rbp, rdi
               	mov	qword ptr [rsp + 0x40], rbp
               	mov	qword ptr [rsp + 0x410], rbp
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x50], r11
               	mov	qword ptr [rsp + 0x420], r11
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x58], rdi
               	mov	qword ptr [rsp + 0x428], rdi
               	mov	r13, qword ptr [rsp + 0x28]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x30]
               	mov	rbp, qword ptr [rsp + 0x20]
               	xor	r11, rbp
               	mov	rdi, qword ptr [rsp + 0x38]
               	xor	rdi, r13
               	xor	r13, r11
               	mov	qword ptr [rsp + 0x28], r13
               	mov	qword ptr [rsp + 0x438], r13
               	xor	rbp, rdi
               	mov	qword ptr [rsp + 0x20], rbp
               	mov	qword ptr [rsp + 0x430], rbp
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x30], r11
               	mov	qword ptr [rsp + 0x440], r11
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x38], rdi
               	mov	qword ptr [rsp + 0x448], rdi
               	mov	rdi, qword ptr [rsp + 0x458]
               	mov	rax, qword ptr [rsp + 0x470]
               	mov	r11, rdi
               	mov	rbx, qword ptr [rsp + 0x460]
               	mov	r13, qword ptr [rsp + 0x18]
               	xor	rbx, r13
               	mov	rbp, rbx
               	xor	rbp, rdi
               	xor	rdi, qword ptr [rsp + 0x468]
               	mov	qword ptr [rsp + 0x458], rbp
               	shl	r11, 0x11
               	xor	rbx, r11
               	xor	r13, rdi
               	mov	qword ptr [rsp + 0x18], r13
               	mov	qword ptr [rsp + 0x450], r13
               	mov	qword ptr [rsp + 0x460], rbx
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x468], rdi
               	mov	r13, qword ptr [rsp + 0x140]
               	mov	rdi, r13
               	mov	rbx, qword ptr [rsp + 0x230]
               	xor	rbx, rax
               	mov	r11, qword ptr [rsp + 0x238]
               	xor	r11, r13
               	xor	r13, rbx
               	mov	qword ptr [rsp + 0x478], r13
               	xor	rax, r11
               	mov	qword ptr [rsp + 0x470], rax
               	shl	rdi, 0x11
               	xor	rbx, rdi
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x228]
               	xor	rsi, rdi
               	xor	r12, r8
               	xor	r8, rsi
               	xor	rsi, rax
               	mov	rax, r15
               	shl	rax, 0x11
               	xor	r10, rdx
               	xor	r9, r15
               	xor	r15, r10
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x230], rbx
               	mov	qword ptr [rsp + 0x480], rbx
               	rorx	r11, r11, 0x13
               	mov	qword ptr [rsp + 0x238], r11
               	mov	qword ptr [rsp + 0x488], r11
               	mov	qword ptr [rsp + 0x498], r8
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x228], rdi
               	mov	qword ptr [rsp + 0x490], rdi
               	mov	qword ptr [rsp + 0x4a0], rsi
               	rorx	r12, r12, 0x13
               	mov	qword ptr [rsp + 0x4a8], r12
               	mov	qword ptr [rsp + 0x4b8], r15
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x4b0], rdx
               	mov	qword ptr [rsp + 0x4c0], r10
               	rorx	r9, r9, 0x13
               	mov	qword ptr [rsp + 0x4c8], r9
               	vpxor	xmm5, xmm5, xmm5
               	kxnorw	k1, k0, k0
               	vpgatherqq	zmm5 {k1}, zmmword ptr [1*zmm0]
               	vpsllq	zmm6, zmm5, 0x2
               	vpaddq	zmm5, zmm6, zmm5
               	vprolq	zmm5, zmm5, 0x7
               	vpsllq	zmm6, zmm5, 0x3
               	vpaddq	zmm5, zmm6, zmm5
               	vmovdqu64	zmmword ptr [rsp + 0x4d8], zmm5
               	vmovdqu	xmm7, xmmword ptr [rsp + 0x458]
               	vpxor	xmm6, xmm6, xmm6
               	kxnorw	k1, k0, k0
               	vpgatherqq	zmm6 {k1}, zmmword ptr [1*zmm1]
               	vpsllq	zmm8, zmm6, 0x2
               	vpaddq	zmm6, zmm8, zmm6
               	vprolq	zmm6, zmm6, 0x7
               	vpsllq	zmm8, zmm6, 0x3
               	vpaddq	zmm6, zmm8, zmm6
               	mov	qword ptr [rsp + 0x140], r13
               	vpinsrq	xmm7, xmm7, r13, 0x1
               	mov	r13, qword ptr [rsp + 0x578]
               	vpbroadcastq	ymm8, r8
               	vpblendd	ymm7, ymm7, ymm8, 0x30  # ymm7 = ymm7[0,1,2,3],ymm8[4,5],ymm7[6,7]
               	vpbroadcastq	ymm8, r15
               	vpblendd	ymm7, ymm7, ymm8, 0xc0  # ymm7 = ymm7[0,1,2,3,4,5],ymm8[6,7]
               	vpsllq	ymm8, ymm7, 0x2
               	vpaddq	ymm7, ymm8, ymm7
               	vprolq	ymm7, ymm7, 0x7
               	vpsllq	ymm8, ymm7, 0x3
               	vpaddq	ymm7, ymm8, ymm7
               	jmp	 <L237>
               	nop	dword ptr [rax]
               	imul	rdi, rcx, 0x64
               	add	rdi, qword ptr [rsp]
               	vmovdqu	ymmword ptr [r14], ymm9
               	vmovlps	qword ptr [r14 + 0x20], xmm10
               	jmp	 <L236>
               	imul	rdi, rcx, 0x64
               	add	rdi, qword ptr [rsp]
               	vmovdqu	ymmword ptr [r14], ymm9
               	vextractps	dword ptr [r14 + 0x20], xmm10, 0x1
               	jmp	 <L236>
               	vpextrb	edi, xmm8, 0x8
               	vcvtsi2ss	xmm10, xmm13, edi
               	vmovq	xmm11, rbx
               	vpextrb	edi, xmm8, 0x0
               	vmovq	xmm8, rbp
               	vcvtsi2ss	xmm12, xmm13, edi
               	vpunpcklqdq	xmm8, xmm11, xmm8 # xmm8 = xmm11[0],xmm8[0]
               	imul	rdi, rcx, 0x64
               	add	rdi, qword ptr [rsp]
               	vshufps	xmm11, xmm9, xmm9, 0xff # xmm11 = xmm9[3,3,3,3]
               	vmovups	ymmword ptr [r14], ymm9
               	vpshufb	xmm8, xmm8, xmm3
               	vcvtdq2ps	xmm8, xmm8
               	vmovlps	qword ptr [r14 + 0x20], xmm8
               	vmovss	dword ptr [r14 + 0x28], xmm12
               	vmovss	dword ptr [r14 + 0x2c], xmm11
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x548]
               	vpmovqd	xmm9, ymm9
               	vpand	xmm9, xmm9, xmm4
               	vcvtdq2ps	xmm9, xmm9
               	vmovdqu	xmmword ptr [r14 + 0x30], xmm9
               	vmovlps	qword ptr [r14 + 0x40], xmm8
               	vmovss	dword ptr [r14 + 0x48], xmm12
               	vmovss	dword ptr [r14 + 0x4c], xmm11
               	vmovss	dword ptr [r14 + 0x50], xmm10
               	vpshufd	xmm8, xmm9, 0xe9        # xmm8 = xmm9[1,2,2,3]
               	vmovq	qword ptr [r14 + 0x54], xmm8
               	vextractps	dword ptr [r14 + 0x5c], xmm9, 0x3
               	jmp	 <L236>
               	vmovdqu	ymmword ptr [r14], ymm9
               	mov	rdi, r14
               	jmp	 <L236>
<L235>:
               	imul	rax, rcx, 0x64
               	shr	rax, 0x2
               	imul	ebx, eax, 0xc28f5c29
               	test	ebx, ebx
               	je	 <L238>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu64	zmmword ptr [rsp + 0x290], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x250], zmm0
               	lea	r15, [rsp + 0x11f]
               	mov	r12, qword ptr [rsp]
               	jmp	 <L239>
               	nop	dword ptr [rax]
<L240>:
               	vmovss	xmm0, dword ptr [rsp + 0x254]
               	vmovss	dword ptr [rsp + 0x258], xmm0
               	mov	r13d, 0x1
<L252>:
               	mov	eax, r13d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x250]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r12, rbp
<L239>:
               	blsi	eax, ebx
               	imul	rbp, rax, 0x64
               	add	rbp, r12
               	test	eax, eax
               	je	 <L240>
               	mov	qword ptr [rsp + 0x10], rax
               	mov	dword ptr [rsp + 0x120], ebx
               	mov	ebx, 0x1
               	xor	ecx, ecx
               	mov	r14d, 0x1
               	jmp	 <L241>
               	nop	word ptr cs:[rax + rax]
<L243>:
               	mov	r14d, r13d
               	movsxd	rax, r13d
               	vmovss	dword ptr [rsp + 4*rax + 0x250], xmm0
               	add	r12, 0x64
               	mov	ecx, 0xfffffffe
               	sub	ecx, ebx
               	lea	edx, [rbx + 0x1]
               	lzcnt	esi, edx
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	ebx, edx
               	cmp	r12, rbp
               	je	 <L242>
<L241>:
               	mov	r13d, ecx
               	movzx	eax, byte ptr [r12 + 0x60]
               	mov	rdi, r15
               	mov	rsi, r12
               	lea	rcx,  <std::__detail::__variant::__gen_vtable<std::__detail::__variant::__deduce_visit_result<float>, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&>::_S_vtable>
               	vzeroupper
               	call	qword ptr [rcx + 8*rax]
               	mov	edx, r13d
               	sub	edx, r14d
               	jl	 <L243>
               	movsxd	rax, r14d
               	cmp	edx, 0x7
               	jb	 <L244>
               	lea	rcx, [rdx + 0x1]
               	cmp	edx, 0x3f
               	jae	 <L245>
               	xor	edx, edx
               	jmp	 <L246>
<L245>:
               	mov	rdx, rcx
               	movabs	rsi, 0x1ffffffc0
               	and	rdx, rsi
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	lea	rsi, [rsp + 0x310]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	word ptr cs:[rax + rax]
<L247>:
               	vaddps	zmm0, zmm0, zmmword ptr [rsi + 4*rdi - 0xc0]
               	vaddps	zmm1, zmm1, zmmword ptr [rsi + 4*rdi - 0x80]
               	vaddps	zmm2, zmm2, zmmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	zmm3, zmm3, zmmword ptr [rsi + 4*rdi]
               	add	rdi, 0x40
               	cmp	rdx, rdi
               	jne	 <L247>
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
               	je	 <L243>
               	test	cl, 0x38
               	je	 <L248>
<L246>:
               	movabs	rsi, 0x1ffffffc0
               	add	rsi, 0x38
               	and	rsi, rcx
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	lea	rdi, [rsp + 4*rax]
               	add	rdi, 0x250
               	nop	word ptr cs:[rax + rax]
<L249>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
               	add	rdx, 0x8
               	cmp	rsi, rdx
               	jne	 <L249>
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rsi
               	je	 <L243>
               	add	rax, rsi
               	jmp	 <L244>
<L248>:
               	add	rax, rdx
               	nop	word ptr [rax + rax]
<L244>:
               	mov	ecx, r13d
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x250
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L250>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L250>
               	jmp	 <L243>
               	nop	word ptr cs:[rax + rax]
<L242>:
               	mov	ebx, dword ptr [rsp + 0x120]
               	sub	ebx, dword ptr [rsp + 0x10]
               	je	 <L251>
               	vmovss	dword ptr [rsp + 4*rax + 0x254], xmm0
               	mov	r12, rbp
               	test	r13d, r13d
               	jns	 <L252>
               	jmp	 <L239>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
<L251>:
               	mov	rbx, qword ptr [rsp + 0x138]
               	mov	rdi, qword ptr [rsp]
               	test	rdi, rdi
               	jne	 <L253>
               	cmp	ebx, 0x2a
               	je	 <L254>
               	jmp	 <L255>
<L238>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rbx, qword ptr [rsp + 0x138]
               	mov	rdi, qword ptr [rsp]
<L253>:
               	vmovdqa	xmmword ptr [rsp + 0x120], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x120]
               	cmp	ebx, 0x2a
               	jne	 <L255>
<L254>:
               	cmp	dword ptr [rsp + 0x148], 0x186a0
               	jne	 <L255>
               	vucomiss	xmm0, dword ptr  <memset+0xf34>
               	jne	 <L256>
<L255>:
               	xor	eax, eax
               	add	rsp, 0x588
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L256>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x120], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x120]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x7518>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 0ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf28>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 1ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf28>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 2ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 3ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 4ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf30>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 5ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 6ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 7ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf2c>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 12ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 8ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <memset+0xf38>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 9ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf28>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 10ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf24>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 11ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xf38>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x74f0>
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
