
build/Evaluation/bin/Any:	file format elf64-x86-64

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
               	call	qword ptr  <strcmp+0x9eb0>
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
               	mov	rax, qword ptr  <strcmp+0x9ec0>
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
               	mov	rax, qword ptr  <strcmp+0x9ec8>
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
               	cmp	qword ptr , 0x0 <strcmp+0x9ed0>
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
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
               	pop	rax
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
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	call	 <initializer for module Meta.Auto.Simd.Int32>
               	pop	rax
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

<initializer for module Meta.Auto.Simd.Int32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	pop	rax
               	jmp	 <Bodies3D::IBody::~IBody()>
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
               	jmp	 <Bodies3D::IBody::~IBody()>
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
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	call	 <initializer for module Meta.Auto.Array.Bounded>
               	pop	rax
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
               	jmp	 <Bodies3D::IBody::~IBody()>
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
               	jmp	 <Bodies3D::IBody::~IBody()>
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
               	jmp	 <Bodies3D::IBody::~IBody()>
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

<initializer for module Meta.Memory.Size.Compare>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW7Compare__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW7Compare__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <Bodies3D::IBody::~IBody()>
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

<initializer for module Meta.Memory.Alignment>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW9Alignment__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW9Alignment__in_chrg>
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

<initializer for module Meta.Random.Xoroshiro>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6RandomW9Xoroshiro__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6RandomW9Xoroshiro__in_chrg>
               	call	 <initializer for module Meta.Random.Splitmix>
               	pop	rax
               	jmp	 <Bodies3D::IBody::~IBody()>
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

<_GLOBAL__sub_I_Any.cpp>:
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
               	jmp	 <Bodies3D::IBody::~IBody()>
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
               	sub	rsp, 0x4c8
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
               	movsx	rbp, byte ptr [rax]
               	add	rbp, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop
<L3>:
               	lea	rdx, [4*rbp]
               	add	rdx, rbp
               	movsx	rcx, cl
               	lea	rbp, [rcx + 2*rdx]
               	add	rbp, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movabs	r14, 0x180ec6d33cfd0aba
               	mov	rax, rbp
               	shl	rax, 0x6
               	lea	rdi, [rax + 2*rax]
               	mov	rsi, qword ptr  <strcmp+0x9ee0>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vpbroadcastq	ymm0, rbx
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <strcmp+0x1940>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rcx, -0x61c8864680b583eb
               	mov	qword ptr [rsp + 0x40], rbx
               	add	rcx, rbx
               	shr	rcx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rcx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <strcmp+0x1960>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <strcmp+0x1968>
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0xb0], ymm0
               	vmovq	r8, xmm0
               	vpextrq	r10, xmm0, 0x1
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	rbx, xmm0
               	vpextrq	r15, xmm0, 0x1
               	xor	edx, edx
               	xor	esi, esi
               	xor	edi, edi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
<L6>:
               	mov	rcx, r10
               	shl	rcx, 0x11
               	xor	rbx, r8
               	xor	r15, r10
               	xor	r10, rbx
               	xor	r8, r15
               	xor	rbx, rcx
               	rorx	r15, r15, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L5>
<L4>:
               	bt	r14, rdx
               	jae	 <L6>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r15
               	jmp	 <L6>
<L5>:
               	movabs	r12, -0x2a59ed990f36c6d4
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
               	bt	r12, rcx
               	jae	 <L9>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r15
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp], rax
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	mov	rax, r12
               	jmp	 <L10>
               	nop
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
               	mov	qword ptr [rsp + 0x48], rbp
               	mov	qword ptr [rsp + 0xd0], r11
               	mov	qword ptr [rsp + 0xd8], r9
               	mov	qword ptr [rsp + 0xe0], rdi
               	mov	qword ptr [rsp + 0xe8], rsi
               	xor	ebx, ebx
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	xor	ebp, ebp
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
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L17>
<L16>:
               	bt	r14, rbx
               	jae	 <L18>
               	xor	rbp, r11
               	xor	r15, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L18>
<L17>:
               	xor	ebx, ebx
               	jmp	 <L19>
               	nop	dword ptr [rax]
<L21>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L20>
<L19>:
               	bt	rax, rbx
               	jae	 <L21>
               	xor	rbp, r11
               	xor	r15, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L21>
<L20>:
               	xor	ebx, ebx
               	jmp	 <L22>
               	nop	dword ptr [rax]
<L24>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L23>
<L22>:
               	bt	rcx, rbx
               	jae	 <L24>
               	xor	rbp, r11
               	xor	r15, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L24>
<L23>:
               	xor	ebx, ebx
               	jmp	 <L25>
               	nop	dword ptr [rax]
<L27>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L26>
<L25>:
               	bt	rdx, rbx
               	jae	 <L27>
               	xor	rbp, r11
               	xor	r15, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0xf0], rbp
               	mov	qword ptr [rsp + 0xf8], r15
               	mov	qword ptr [rsp + 0x100], r10
               	mov	qword ptr [rsp + 0x108], r8
               	xor	edi, edi
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	ebx, ebx
               	jmp	 <L28>
               	nop	word ptr [rax + rax]
<L30>:
               	mov	r12, r15
               	shl	r12, 0x11
               	xor	r10, rbp
               	xor	r8, r15
               	xor	r15, r10
               	xor	rbp, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L29>
<L28>:
               	bt	r14, rdi
               	jae	 <L30>
               	xor	rbx, rbp
               	xor	r11, r15
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L30>
<L29>:
               	xor	edi, edi
               	jmp	 <L31>
               	nop	dword ptr [rax]
<L33>:
               	mov	r12, r15
               	shl	r12, 0x11
               	xor	r10, rbp
               	xor	r8, r15
               	xor	r15, r10
               	xor	rbp, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L32>
<L31>:
               	bt	rax, rdi
               	jae	 <L33>
               	xor	rbx, rbp
               	xor	r11, r15
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L33>
<L32>:
               	xor	edi, edi
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
               	mov	r12, r15
               	shl	r12, 0x11
               	xor	r10, rbp
               	xor	r8, r15
               	xor	r15, r10
               	xor	rbp, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L35>
<L34>:
               	bt	rcx, rdi
               	jae	 <L36>
               	xor	rbx, rbp
               	xor	r11, r15
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L36>
<L35>:
               	xor	edi, edi
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
               	mov	r12, r15
               	shl	r12, 0x11
               	xor	r10, rbp
               	xor	r8, r15
               	xor	r15, r10
               	xor	rbp, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L38>
<L37>:
               	bt	rdx, rdi
               	jae	 <L39>
               	xor	rbx, rbp
               	xor	r11, r15
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L39>
<L38>:
               	mov	qword ptr [rsp + 0x110], rbx
               	mov	qword ptr [rsp + 0x118], r11
               	mov	qword ptr [rsp + 0x120], r9
               	mov	qword ptr [rsp + 0x128], rsi
               	xor	r12d, r12d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	jmp	 <L40>
               	nop	dword ptr [rax]
<L42>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L41>
<L40>:
               	bt	r14, r12
               	jae	 <L42>
               	xor	r15, rbx
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L42>
<L41>:
               	xor	r12d, r12d
               	jmp	 <L43>
               	nop
<L45>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L44>
<L43>:
               	bt	rax, r12
               	jae	 <L45>
               	xor	r15, rbx
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L45>
<L44>:
               	xor	r12d, r12d
               	jmp	 <L46>
               	nop
<L48>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L47>
<L46>:
               	bt	rcx, r12
               	jae	 <L48>
               	xor	r15, rbx
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L48>
<L47>:
               	xor	r12d, r12d
               	jmp	 <L49>
               	nop
<L51>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L50>
<L49>:
               	bt	rdx, r12
               	jae	 <L51>
               	xor	r15, rbx
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L51>
<L50>:
               	mov	qword ptr [rsp + 0x130], r15
               	mov	qword ptr [rsp + 0x138], r10
               	mov	qword ptr [rsp + 0x140], r8
               	mov	qword ptr [rsp + 0x148], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	ebx, ebx
               	jmp	 <L52>
               	nop	dword ptr [rax + rax]
<L54>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L53>
<L52>:
               	bt	r14, r12
               	jae	 <L54>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L56>
<L55>:
               	bt	rax, r12
               	jae	 <L57>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L59>
<L58>:
               	bt	rcx, r12
               	jae	 <L60>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L62>
<L61>:
               	bt	rdx, r12
               	jae	 <L63>
               	xor	rbx, r15
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L63>
<L62>:
               	mov	qword ptr [rsp + 0x150], rbx
               	mov	qword ptr [rsp + 0x158], r11
               	mov	qword ptr [rsp + 0x160], r9
               	mov	qword ptr [rsp + 0x168], rsi
               	xor	r12d, r12d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	jmp	 <L64>
               	nop	dword ptr [rax]
<L66>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L65>
<L64>:
               	bt	r14, r12
               	jae	 <L66>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L68>
<L67>:
               	bt	rax, r12
               	jae	 <L69>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L71>
<L70>:
               	bt	rcx, r12
               	jae	 <L72>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L74>
<L73>:
               	bt	rdx, r12
               	jae	 <L75>
               	xor	r15, rbx
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L75>
<L74>:
               	mov	qword ptr [rsp + 0x170], r15
               	mov	qword ptr [rsp + 0x178], r10
               	mov	qword ptr [rsp + 0x180], r8
               	mov	qword ptr [rsp + 0x188], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	ebx, ebx
               	jmp	 <L76>
               	nop	dword ptr [rax + rax]
<L78>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L77>
<L76>:
               	bt	r14, r12
               	jae	 <L78>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L80>
<L79>:
               	bt	rax, r12
               	jae	 <L81>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L83>
<L82>:
               	bt	rcx, r12
               	jae	 <L84>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L86>
<L85>:
               	bt	rdx, r12
               	jae	 <L87>
               	xor	rbx, r15
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L87>
<L86>:
               	mov	qword ptr [rsp + 0x190], rbx
               	mov	qword ptr [rsp + 0x198], r11
               	mov	qword ptr [rsp + 0x1a0], r9
               	mov	qword ptr [rsp + 0x1a8], rsi
               	xor	r12d, r12d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	jmp	 <L88>
               	nop	dword ptr [rax]
<L90>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L89>
<L88>:
               	bt	r14, r12
               	jae	 <L90>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L92>
<L91>:
               	bt	rax, r12
               	jae	 <L93>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L95>
<L94>:
               	bt	rcx, r12
               	jae	 <L96>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L98>
<L97>:
               	bt	rdx, r12
               	jae	 <L99>
               	xor	r15, rbx
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L99>
<L98>:
               	mov	qword ptr [rsp + 0x1b0], r15
               	mov	qword ptr [rsp + 0x1b8], r10
               	mov	qword ptr [rsp + 0x1c0], r8
               	mov	qword ptr [rsp + 0x1c8], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	ebx, ebx
               	jmp	 <L100>
               	nop	dword ptr [rax + rax]
<L102>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L101>
<L100>:
               	bt	r14, r12
               	jae	 <L102>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L104>
<L103>:
               	bt	rax, r12
               	jae	 <L105>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L107>
<L106>:
               	bt	rcx, r12
               	jae	 <L108>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L110>
<L109>:
               	bt	rdx, r12
               	jae	 <L111>
               	xor	rbx, r15
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L111>
<L110>:
               	mov	qword ptr [rsp + 0x1d0], rbx
               	mov	qword ptr [rsp + 0x1d8], r11
               	mov	qword ptr [rsp + 0x1e0], r9
               	mov	qword ptr [rsp + 0x1e8], rsi
               	xor	r12d, r12d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	jmp	 <L112>
               	nop	dword ptr [rax]
<L114>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L113>
<L112>:
               	bt	r14, r12
               	jae	 <L114>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L116>
<L115>:
               	bt	rax, r12
               	jae	 <L117>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L119>
<L118>:
               	bt	rcx, r12
               	jae	 <L120>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L122>
<L121>:
               	bt	rdx, r12
               	jae	 <L123>
               	xor	r15, rbx
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L123>
<L122>:
               	mov	qword ptr [rsp + 0x1f0], r15
               	mov	qword ptr [rsp + 0x1f8], r10
               	mov	qword ptr [rsp + 0x200], r8
               	mov	qword ptr [rsp + 0x208], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	ebx, ebx
               	jmp	 <L124>
               	nop	dword ptr [rax + rax]
<L126>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L125>
<L124>:
               	bt	r14, r12
               	jae	 <L126>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L128>
<L127>:
               	bt	rax, r12
               	jae	 <L129>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L131>
<L130>:
               	bt	rcx, r12
               	jae	 <L132>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L134>
<L133>:
               	bt	rdx, r12
               	jae	 <L135>
               	xor	rbx, r15
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L135>
<L134>:
               	mov	qword ptr [rsp + 0x210], rbx
               	mov	qword ptr [rsp + 0x218], r11
               	mov	qword ptr [rsp + 0x220], r9
               	mov	qword ptr [rsp + 0x228], rsi
               	xor	r12d, r12d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	jmp	 <L136>
               	nop	dword ptr [rax]
<L138>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L137>
<L136>:
               	bt	r14, r12
               	jae	 <L138>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L140>
<L139>:
               	bt	rax, r12
               	jae	 <L141>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L143>
<L142>:
               	bt	rcx, r12
               	jae	 <L144>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L146>
<L145>:
               	bt	rdx, r12
               	jae	 <L147>
               	xor	r15, rbx
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L147>
<L146>:
               	mov	qword ptr [rsp + 0x230], r15
               	mov	qword ptr [rsp + 0x238], r10
               	mov	qword ptr [rsp + 0x240], r8
               	mov	qword ptr [rsp + 0x248], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	ebx, ebx
               	jmp	 <L148>
               	nop	dword ptr [rax + rax]
<L150>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L149>
<L148>:
               	bt	r14, r12
               	jae	 <L150>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L152>
<L151>:
               	bt	rax, r12
               	jae	 <L153>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L155>
<L154>:
               	bt	rcx, r12
               	jae	 <L156>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L158>
<L157>:
               	bt	rdx, r12
               	jae	 <L159>
               	xor	rbx, r15
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L159>
<L158>:
               	mov	qword ptr [rsp + 0x250], rbx
               	mov	qword ptr [rsp + 0x258], r11
               	mov	qword ptr [rsp + 0x260], r9
               	mov	qword ptr [rsp + 0x268], rsi
               	xor	r12d, r12d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	jmp	 <L160>
               	nop	dword ptr [rax]
<L162>:
               	mov	r13, r11
               	shl	r13, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L161>
<L160>:
               	bt	r14, r12
               	jae	 <L162>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L164>
<L163>:
               	bt	rax, r12
               	jae	 <L165>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L167>
<L166>:
               	bt	rcx, r12
               	jae	 <L168>
               	xor	r15, rbx
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
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r13
               	rorx	rsi, rsi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L170>
<L169>:
               	bt	rdx, r12
               	jae	 <L171>
               	xor	r15, rbx
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L171>
<L170>:
               	mov	qword ptr [rsp + 0x270], r15
               	mov	qword ptr [rsp + 0x278], r10
               	mov	qword ptr [rsp + 0x280], r8
               	mov	qword ptr [rsp + 0x288], rdi
               	xor	r12d, r12d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	ebx, ebx
               	jmp	 <L172>
               	nop	dword ptr [rax + rax]
<L174>:
               	mov	r13, r10
               	shl	r13, 0x11
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L173>
<L172>:
               	bt	r14, r12
               	jae	 <L174>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L176>
<L175>:
               	bt	rax, r12
               	jae	 <L177>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L179>
<L178>:
               	bt	rcx, r12
               	jae	 <L180>
               	xor	rbx, r15
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
               	xor	r8, r15
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r15, rdi
               	xor	r8, r13
               	rorx	rdi, rdi, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L182>
<L181>:
               	bt	rdx, r12
               	jae	 <L183>
               	xor	rbx, r15
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L183>
<L182>:
               	mov	qword ptr [rsp + 0x290], rbx
               	mov	qword ptr [rsp + 0x298], r11
               	mov	qword ptr [rsp + 0x2a0], r9
               	mov	qword ptr [rsp + 0x2a8], rsi
               	xor	r8d, r8d
               	xor	edi, edi
               	xor	r10d, r10d
               	xor	r15d, r15d
               	xor	ebp, ebp
               	jmp	 <L184>
               	nop	dword ptr [rax + rax]
<L186>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L185>
<L184>:
               	bt	r14, r8
               	jae	 <L186>
               	xor	rbp, rbx
               	xor	r15, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L186>
<L185>:
               	xor	r8d, r8d
               	jmp	 <L187>
               	nop
<L189>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L188>
<L187>:
               	bt	rax, r8
               	jae	 <L189>
               	xor	rbp, rbx
               	xor	r15, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L189>
<L188>:
               	xor	r8d, r8d
               	jmp	 <L190>
               	nop
<L192>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L191>
<L190>:
               	bt	rcx, r8
               	jae	 <L192>
               	xor	rbp, rbx
               	xor	r15, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L192>
<L191>:
               	xor	r8d, r8d
               	jmp	 <L193>
               	nop
<L195>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, rbx
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbx, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L194>
<L193>:
               	bt	rdx, r8
               	jae	 <L195>
               	xor	rbp, rbx
               	xor	r15, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L195>
<L194>:
               	mov	qword ptr [rsp + 0x2b0], rbp
               	mov	qword ptr [rsp + 0x2b8], r15
               	mov	qword ptr [rsp + 0x2c0], r10
               	mov	qword ptr [rsp + 0x2c8], rdi
               	xor	r9d, r9d
               	xor	r8d, r8d
               	xor	r11d, r11d
               	xor	esi, esi
               	xor	ebx, ebx
               	jmp	 <L196>
               	nop	dword ptr [rax + rax]
<L198>:
               	mov	r12, r15
               	shl	r12, 0x11
               	xor	r10, rbp
               	xor	rdi, r15
               	xor	r15, r10
               	xor	rbp, rdi
               	xor	r10, r12
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L197>
<L196>:
               	bt	r14, r9
               	jae	 <L198>
               	xor	rbx, rbp
               	xor	rsi, r15
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L198>
<L197>:
               	xor	r9d, r9d
               	jmp	 <L199>
               	nop
<L201>:
               	mov	r12, r15
               	shl	r12, 0x11
               	xor	r10, rbp
               	xor	rdi, r15
               	xor	r15, r10
               	xor	rbp, rdi
               	xor	r10, r12
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L200>
<L199>:
               	bt	rax, r9
               	jae	 <L201>
               	xor	rbx, rbp
               	xor	rsi, r15
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L201>
<L200>:
               	xor	r9d, r9d
               	jmp	 <L202>
               	nop
<L204>:
               	mov	r12, r15
               	shl	r12, 0x11
               	xor	r10, rbp
               	xor	rdi, r15
               	xor	r15, r10
               	xor	rbp, rdi
               	xor	r10, r12
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L203>
<L202>:
               	bt	rcx, r9
               	jae	 <L204>
               	xor	rbx, rbp
               	xor	rsi, r15
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L204>
<L203>:
               	xor	r9d, r9d
               	jmp	 <L205>
               	nop
<L207>:
               	mov	r12, r15
               	shl	r12, 0x11
               	xor	r10, rbp
               	xor	rdi, r15
               	xor	r15, r10
               	xor	rbp, rdi
               	xor	r10, r12
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L206>
<L205>:
               	bt	rdx, r9
               	jae	 <L207>
               	xor	rbx, rbp
               	xor	rsi, r15
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x2d0], rbx
               	mov	qword ptr [rsp + 0x2d8], rsi
               	mov	qword ptr [rsp + 0x2e0], r11
               	mov	qword ptr [rsp + 0x2e8], r8
               	xor	edi, edi
               	xor	r9d, r9d
               	xor	r10d, r10d
               	xor	edx, edx
               	mov	rbp, rsi
               	xor	r15d, r15d
               	jmp	 <L208>
               	nop	dword ptr [rax + rax]
<L210>:
               	mov	r13, rbp
               	shl	r13, 0x11
               	xor	r11, rbx
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	rbx, r8
               	xor	r11, r13
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L209>
<L208>:
               	bt	r14, rdi
               	jae	 <L210>
               	xor	r15, rbx
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L210>
<L209>:
               	xor	edi, edi
               	jmp	 <L211>
               	nop	dword ptr [rax]
<L213>:
               	mov	r13, rbp
               	shl	r13, 0x11
               	xor	r11, rbx
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	rbx, r8
               	xor	r11, r13
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L212>
<L211>:
               	bt	rax, rdi
               	jae	 <L213>
               	xor	r15, rbx
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L213>
<L212>:
               	xor	edi, edi
               	jmp	 <L214>
               	nop	dword ptr [rax]
<L216>:
               	mov	r13, rbp
               	shl	r13, 0x11
               	xor	r11, rbx
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	rbx, r8
               	xor	r11, r13
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L215>
<L214>:
               	bt	rcx, rdi
               	jae	 <L216>
               	xor	r15, rbx
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L216>
<L215>:
               	xor	edi, edi
               	movabs	r12, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop	word ptr [rax + rax]
<L219>:
               	mov	r13, rbp
               	shl	r13, 0x11
               	xor	r11, rbx
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	rbx, r8
               	xor	r11, r13
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L218>
<L217>:
               	bt	r12, rdi
               	jae	 <L219>
               	xor	r15, rbx
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x2f0], r15
               	mov	qword ptr [rsp + 0x2f8], rdx
               	mov	qword ptr [rsp + 0x300], r10
               	mov	qword ptr [rsp + 0x308], r9
               	xor	r13d, r13d
               	xor	r11d, r11d
               	xor	ebx, ebx
               	xor	r8d, r8d
               	mov	r12, rdx
               	xor	ebp, ebp
               	jmp	 <L220>
               	nop	dword ptr [rax + rax]
<L222>:
               	mov	rdi, r12
               	shl	rdi, 0x11
               	xor	r10, r15
               	xor	r9, r12
               	xor	r12, r10
               	xor	r15, r9
               	xor	r10, rdi
               	rorx	r9, r9, 0x13
               	inc	r13
               	cmp	r13, 0x40
               	je	 <L221>
<L220>:
               	bt	r14, r13
               	jae	 <L222>
               	xor	rbp, r15
               	xor	r8, r12
               	xor	rbx, r10
               	xor	r11, r9
               	jmp	 <L222>
<L221>:
               	xor	r14d, r14d
               	jmp	 <L223>
               	nop
<L225>:
               	mov	r13, r12
               	shl	r13, 0x11
               	xor	r10, r15
               	xor	r9, r12
               	xor	r12, r10
               	xor	r15, r9
               	xor	r10, r13
               	rorx	r9, r9, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L224>
<L223>:
               	bt	rax, r14
               	jae	 <L225>
               	xor	rbp, r15
               	xor	r8, r12
               	xor	rbx, r10
               	xor	r11, r9
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	jmp	 <L226>
               	nop	dword ptr [rax]
<L228>:
               	mov	r14, r12
               	shl	r14, 0x11
               	xor	r10, r15
               	xor	r9, r12
               	xor	r12, r10
               	xor	r15, r9
               	xor	r10, r14
               	rorx	r9, r9, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L227>
<L226>:
               	bt	rcx, rax
               	jae	 <L228>
               	xor	rbp, r15
               	xor	r8, r12
               	xor	rbx, r10
               	xor	r11, r9
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	jmp	 <L229>
               	nop	dword ptr [rax]
<L231>:
               	mov	rcx, r12
               	shl	rcx, 0x11
               	xor	r10, r15
               	xor	r9, r12
               	xor	r12, r10
               	xor	r15, r9
               	xor	r10, rcx
               	rorx	r9, r9, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L230>
<L229>:
               	movabs	rcx, 0x39abdc4529b1661c
               	bt	rcx, rax
               	jae	 <L231>
               	xor	rbp, r15
               	xor	r8, r12
               	xor	rbx, r10
               	xor	r11, r9
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x310], rbp
               	mov	qword ptr [rsp + 0x318], r8
               	mov	qword ptr [rsp + 0x320], rbx
               	mov	qword ptr [rsp + 0x328], r11
               	mov	qword ptr [rsp + 0x330], 0x0
               	lea	rax, [rsp + 0xb0]
               	kxnorw	k1, k0, k0
               	vpmovzxbd	ymm0, qword ptr  <strcmp+0x1970>
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm2, xmm2, xmm2
               	kxnorw	k2, k0, k0
               	vpgatherdq	zmm2 {k2}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm2, 0x2
               	vpaddq	zmm0, zmm0, zmm2
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm2, zmm0, 0x3
               	vpaddq	zmm3, zmm2, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x338], zmm3
               	vpmovsxwd	ymm0, xmmword ptr  <strcmp+0x1a10>
               	vpgatherdq	zmm1 {k1}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm1, 0x2
               	vpaddq	zmm0, zmm0, zmm1
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm2, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x378], zmm2
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x2b8]
               	vpinsrq	xmm0, xmm0, rsi, 0x1
               	mov	rbp, qword ptr [rsp + 0x48]
               	shl	rbp, 0x3
               	vpbroadcastq	ymm1, rdx
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, r8
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm4, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x3b8], ymm4
               	test	rbp, rbp
               	je	 <L232>
               	vpbroadcastq	zmm0, rax
               	vpaddq	zmm1, zmm0, zmmword ptr  <strcmp+0x1980>
               	vmovdqu64	zmmword ptr [rsp + 0x480], zmm1
               	vpaddq	zmm0, zmm0, zmmword ptr  <strcmp+0x19c0>
               	vmovdqu64	zmmword ptr [rsp + 0x440], zmm0
               	vextracti32x4	xmm0, zmm2, 0x2
               	vextracti128	xmm1, ymm2, 0x1
               	vpextrq	r12, xmm1, 0x1
               	vmovq	r13, xmm0
               	vpextrq	rcx, xmm2, 0x1
               	vmovq	rdx, xmm1
               	vmovq	rax, xmm3
               	vextracti128	xmm1, ymm4, 0x1
               	vpblendd	xmm5, xmm1, xmm0, 0xc   # xmm5 = xmm1[0,1],xmm0[2,3]
               	mov	qword ptr [rsp + 0x8], 0x0
               	lea	r14,  <strcmp+0x1a40>
               	xor	ebx, ebx
               	xor	r15d, r15d
               	jmp	 <L233>
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x50]
               	vmovdqu	ymmword ptr [rax + 0x8], ymm0
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Cube@Evaluation.CRTP.Cube, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&>(std::in_place_type_t<Bodies3D::Cube@Evaluation.CRTP.Cube>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	nop	dword ptr [rax + rax]
<L236>:
               	vmovdqu64	zmm3, zmmword ptr [rsp + 0x70]
               	vmovdqu64	zmm2, zmmword ptr [rsp + 0x3e0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x20]
               	mov	qword ptr [r12 + r13 + 0x8], rax
               	mov	qword ptr [r12 + r13 + 0x10], rcx
               	inc	rbx
               	mov	qword ptr [rsp + 0x330], rbx
               	test	bl, 0x7
               	je	 <L234>
               	vpsrlq	zmm3, zmm3, 0x8
               	vmovdqu64	zmmword ptr [rsp + 0x338], zmm3
               	vpsrlq	zmm2, zmm2, 0x8
               	vpsrlq	ymm4, ymm4, 0x8
               	vmovq	rax, xmm3
               	vpextrq	rcx, xmm2, 0x1
               	vextracti128	xmm0, ymm2, 0x1
               	vmovq	rdx, xmm0
               	vextracti32x4	xmm1, zmm2, 0x2
               	vmovq	r13, xmm1
               	vpextrq	r12, xmm0, 0x1
<L237>:
               	vextracti128	xmm0, ymm4, 0x1
               	vpblendd	xmm5, xmm0, xmm1, 0xc   # xmm5 = xmm0[0,1],xmm1[2,3]
               	vmovdqu64	zmmword ptr [rsp + 0x378], zmm2
               	vmovdqu	ymmword ptr [rsp + 0x3b8], ymm4
               	add	qword ptr [rsp + 0x8], 0x18
               	inc	r15
               	cmp	rbx, rbp
               	je	 <L235>
<L233>:
               	vmovdqu	ymmword ptr [rsp + 0x20], ymm4
               	vmovdqu64	zmmword ptr [rsp + 0x3e0], zmm2
               	vmovdqu64	zmmword ptr [rsp + 0x70], zmm3
               	vmovq	xmm0, rcx
               	vmovq	xmm1, rdx
               	vpunpcklqdq	xmm0, xmm0, xmm1 # xmm0 = xmm0[0],xmm1[0]
               	vmovdqu64	zmm1, zmmword ptr [rsp + 0x340]
               	vpmovqd	ymm1, zmm1
               	vpandd	ymm1, ymm1, dword ptr {1to8} <strcmp+0x1a20>
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [rsp + 0x50], ymm1
               	vpshufb	xmm0, xmm0, xmmword ptr  <strcmp+0x1a00>
               	vcvtdq2ps	xmm0, xmm0
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	movsxd	rax, dword ptr [r14 + 4*rax]
               	add	rax, r14
               	jmp	rax
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x50]
               	vmovdqu	ymmword ptr [rax + 0x8], ymm0
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Circle@Evaluation.CRTP.Circle, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&>(std::in_place_type_t<Bodies3D::Circle@Evaluation.CRTP.Circle>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L236>
               	nop	word ptr cs:[rax + rax]
<L234>:
               	mov	rax, qword ptr [rsp + 0xb0]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0xc8]
               	shl	rdx, 0x11
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0xc0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0xc8], rax
               	mov	rax, qword ptr [rsp + 0xd8]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0xd0]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	rsi, rdx
               	mov	rdi, rsi
               	xor	rdi, rax
               	xor	rax, qword ptr [rsp + 0xe8]
               	mov	qword ptr [rsp + 0xd8], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xd0], rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xe0], rsi
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0xe8], rax
               	mov	rax, qword ptr [rsp + 0xf8]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0xf0]
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	rsi, rdx
               	mov	rdi, rsi
               	xor	rdi, rax
               	xor	rax, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0xf8], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xf0], rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x100], rsi
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0x108], rax
               	mov	rax, qword ptr [rsp + 0x110]
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x120]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x128]
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
               	mov	rsi, qword ptr [rsp + 0x140]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x148]
               	shl	rdx, 0x11
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
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x1a0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x1a8]
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
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x1c8]
               	shl	rdx, 0x11
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
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x220]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x228]
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
               	mov	rsi, qword ptr [rsp + 0x240]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x248]
               	shl	rdx, 0x11
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
               	mov	rax, qword ptr [rsp + 0x290]
               	mov	rcx, qword ptr [rsp + 0x298]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x2a0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x2a8]
               	mov	qword ptr [rsp + 0x298], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x290], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x2a0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x2a8], rax
               	mov	rax, qword ptr [rsp + 0x2b0]
               	mov	rcx, qword ptr [rsp + 0x2b8]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x2c0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x2c8]
               	shl	rdx, 0x11
               	mov	qword ptr [rsp + 0x2b8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x2b0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x2c0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x2c8], rax
               	mov	rcx, qword ptr [rsp + 0x2d0]
               	mov	rdx, qword ptr [rsp + 0x2d8]
               	mov	rsi, rdx
               	shl	rsi, 0x11
               	mov	rdi, qword ptr [rsp + 0x2e0]
               	xor	rdi, rcx
               	mov	rax, rdi
               	xor	rax, rdx
               	xor	rdx, qword ptr [rsp + 0x2e8]
               	mov	qword ptr [rsp + 0x2d8], rax
               	xor	rcx, rdx
               	mov	qword ptr [rsp + 0x2d0], rcx
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x2e0], rdi
               	rorx	rcx, rdx, 0x13
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	rdx, qword ptr [rsp + 0x2f0]
               	mov	rsi, qword ptr [rsp + 0x2f8]
               	mov	rdi, rsi
               	shl	rdi, 0x11
               	mov	r8, qword ptr [rsp + 0x300]
               	xor	r8, rdx
               	mov	rcx, r8
               	xor	rcx, rsi
               	xor	rsi, qword ptr [rsp + 0x308]
               	mov	qword ptr [rsp + 0x2f8], rcx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x2f0], rdx
               	xor	r8, rdi
               	mov	qword ptr [rsp + 0x300], r8
               	rorx	rdx, rsi, 0x13
               	mov	qword ptr [rsp + 0x308], rdx
               	mov	rsi, qword ptr [rsp + 0x310]
               	mov	rdi, qword ptr [rsp + 0x318]
               	mov	r8, rdi
               	shl	r8, 0x11
               	mov	r9, qword ptr [rsp + 0x320]
               	xor	r9, rsi
               	mov	rdx, r9
               	xor	rdx, rdi
               	xor	rdi, qword ptr [rsp + 0x328]
               	mov	qword ptr [rsp + 0x318], rdx
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0x310], rsi
               	xor	r9, r8
               	mov	qword ptr [rsp + 0x320], r9
               	rorx	rsi, rdi, 0x13
               	mov	qword ptr [rsp + 0x328], rsi
               	vpxor	xmm0, xmm0, xmm0
               	kxnorw	k1, k0, k0
               	vmovdqu64	zmm1, zmmword ptr [rsp + 0x480]
               	vpgatherqq	zmm0 {k1}, zmmword ptr [1*zmm1]
               	vpsllq	zmm1, zmm0, 0x2
               	vpaddq	zmm0, zmm1, zmm0
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm3, zmm1, zmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x2b8]
               	vmovdqu64	zmmword ptr [rsp + 0x338], zmm3
               	vpxor	xmm1, xmm1, xmm1
               	kxnorw	k1, k0, k0
               	vmovdqu64	zmm2, zmmword ptr [rsp + 0x440]
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
               	vpaddq	ymm4, ymm1, ymm0
               	vmovq	rax, xmm3
               	vpextrq	rcx, xmm2, 0x1
               	vextracti128	xmm0, ymm2, 0x1
               	vmovq	rdx, xmm0
               	vextracti32x4	xmm1, zmm2, 0x2
               	vpextrq	r12, xmm0, 0x1
               	vmovq	r13, xmm1
               	mov	rbx, qword ptr [rsp + 0x330]
               	jmp	 <L237>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovq	qword ptr [rax + 0x28], xmm0
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovd	dword ptr [rax + 0x28], xmm0
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Triangle@Evaluation.CRTP.Triangle, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Triangle@Evaluation.CRTP.Triangle>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L236>
               	vmovdqa	xmmword ptr [rsp + 0x10], xmm5
               	vmovups	ymm0, ymmword ptr [rsp + 0x3a8]
               	vmovups	ymmword ptr [rsp + 0x420], ymm0
               	mov	rax, qword ptr [rsp]
               	mov	rcx, qword ptr [rsp + 0x8]
               	lea	rdx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [rax + rcx], rdx
               	mov	qword ptr [rax + rcx + 0x8], 0x0
               	mov	edi, 0x68
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovq	xmm0, r12
               	vmovq	xmm1, r13
               	vpunpcklqdq	xmm0, xmm0, xmm1 # xmm0 = xmm0[0],xmm1[0]
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x10]
               	vpextrb	ecx, xmm1, 0x8
               	vpextrb	edx, xmm1, 0x0
               	vpshufb	xmm0, xmm0, xmmword ptr  <strcmp+0x1a00>
               	vcvtsi2ss	xmm1, xmm6, ecx
               	vcvtdq2ps	xmm0, xmm0
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x420]
               	vpmovqd	xmm2, ymm2
               	vpbroadcastd	ymm3, dword ptr  <strcmp+0x1a20>
               	vpand	xmm2, xmm2, xmm3
               	vcvtdq2ps	xmm2, xmm2
               	vcvtsi2ss	xmm3, xmm6, edx
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x50]
               	vpshufd	xmm4, xmm5, 0xff        # xmm4 = xmm5[3,3,3,3]
               	vmovdqu	ymmword ptr [rax + 0x8], ymm5
               	vmovlps	qword ptr [rax + 0x28], xmm0
               	vmovss	dword ptr [rax + 0x30], xmm1
               	vmovd	dword ptr [rax + 0x34], xmm4
               	vmovdqu	xmmword ptr [rax + 0x38], xmm2
               	vmovlps	qword ptr [rax + 0x48], xmm0
               	vmovss	dword ptr [rax + 0x50], xmm1
               	vmovd	dword ptr [rax + 0x54], xmm4
               	vmovss	dword ptr [rax + 0x58], xmm3
               	vpshufd	xmm0, xmm2, 0xe9        # xmm0 = xmm2[1,2,2,3]
               	vmovq	qword ptr [rax + 0x5c], xmm0
               	vextractps	dword ptr [rax + 0x64], xmm2, 0x3
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Head@Evaluation.CRTP.Head, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Sphere@Evaluation.CRTP.Sphere>(std::in_place_type_t<Bodies3D::Head@Evaluation.CRTP.Head>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vextractps	dword ptr [rax + 0x28], xmm0, 0x1
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovd	dword ptr [rax + 0x28], xmm0
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L236>
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x50]
               	vmovdqu	ymmword ptr [rax + 0x8], ymm0
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Square@Evaluation.CRTP.Square, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&>(std::in_place_type_t<Bodies3D::Square@Evaluation.CRTP.Square>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovq	qword ptr [rax + 0x28], xmm0
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovd	dword ptr [rax + 0x28], xmm0
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovq	qword ptr [rax + 0x28], xmm0
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x8], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vextractps	dword ptr [rax + 0x28], xmm0, 0x1
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Cone@Evaluation.CRTP.Cone, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cone@Evaluation.CRTP.Cone>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L236>
               	mov	r12, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x8]
               	lea	rax,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
               	mov	qword ptr [r12 + r13], rax
               	mov	qword ptr [r12 + r13 + 0x8], 0x0
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>+0x10>
               	mov	qword ptr [rax], rcx
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x50]
               	vmovdqu	ymmword ptr [rax + 0x8], ymm0
               	lea	rcx,  <Bodies3D::AnyBody::AnyBody<Bodies3D::Sphere@Evaluation.CRTP.Sphere, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&>(std::in_place_type_t<Bodies3D::Sphere@Evaluation.CRTP.Sphere>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
               	jmp	 <L236>
<L235>:
               	shl	r15, 0x3
               	lea	rcx, [r15 + 2*r15]
               	mov	rax, rcx
               	shr	rax, 0x3
               	imul	r12d, eax, 0xaaaaaaab
               	test	r12d, r12d
               	je	 <L238>
               	mov	qword ptr [rsp + 0x20], rcx
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu64	zmmword ptr [rsp + 0xf0], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0xb0], zmm0
               	mov	r15, qword ptr [rsp]
               	mov	qword ptr [rsp + 0x48], rbp
               	jmp	 <L239>
               	nop	word ptr [rax + rax]
<L240>:
               	vmovd	xmm0, dword ptr [rsp + 0xb4]
               	vmovd	dword ptr [rsp + 0xb8], xmm0
               	mov	r13d, 0x1
<L252>:
               	mov	eax, r13d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0xb0]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r15, r14
<L239>:
               	blsi	ecx, r12d
               	lea	rax, [rcx + 2*rcx]
               	lea	r14, [r15 + 8*rax]
               	je	 <L240>
               	mov	qword ptr [rsp + 0x3e0], rcx
               	mov	ebx, 0x1
               	xor	ecx, ecx
               	mov	ebp, 0x1
               	jmp	 <L241>
               	nop	dword ptr [rax]
<L243>:
               	mov	ebp, r13d
               	movsxd	rax, r13d
               	vmovss	dword ptr [rsp + 4*rax + 0xb0], xmm0
               	add	r15, 0x18
               	mov	ecx, 0xfffffffe
               	sub	ecx, ebx
               	lea	edx, [rbx + 0x1]
               	lzcnt	esi, edx
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	ebx, edx
               	cmp	r15, r14
               	je	 <L242>
<L241>:
               	mov	r13d, ecx
               	mov	rdi, r15
               	vzeroupper
               	call	qword ptr [r15 + 0x10]
               	mov	rcx, qword ptr [rax]
               	mov	rdi, rax
               	call	qword ptr [rcx]
               	mov	edx, r13d
               	sub	edx, ebp
               	jl	 <L243>
               	movsxd	rax, ebp
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
               	lea	rsi, [rsp + 0x170]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop
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
               	add	rdi, 0xb0
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
               	add	rax, 0xb0
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
               	vmovaps	xmmword ptr [rsp + 0x70], xmm0
               	sub	r12d, dword ptr [rsp + 0x3e0]
               	mov	rbp, qword ptr [rsp + 0x48]
               	je	 <L251>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x70]
               	vmovd	dword ptr [rsp + 4*rax + 0xb4], xmm0
               	mov	r15, r14
               	test	r13d, r13d
               	jns	 <L252>
               	jmp	 <L239>
<L251>:
               	mov	rbx, qword ptr [rsp + 0x40]
               	mov	rcx, qword ptr [rsp + 0x20]
               	test	rcx, rcx
               	mov	r15, qword ptr [rsp]
               	mov	r12, qword ptr [rsp + 0x8]
               	jne	 <L253>
               	jmp	 <L254>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x70], xmm0
               	mov	rbx, qword ptr [rsp + 0x40]
               	mov	r15, qword ptr [rsp]
<L254>:
               	test	r15, r15
               	je	 <L255>
               	mov	rdi, r15
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L255>:
               	cmp	rbx, 0x2a
               	jne	 <L256>
               	cmp	rbp, 0x30d40
               	je	 <L257>
               	cmp	rbp, 0x186a0
               	jne	 <L256>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x70]
               	vucomiss	xmm0, dword ptr  <strcmp+0x1a38>
               	jne	 <L258>
<L256>:
               	xor	eax, eax
               	add	rsp, 0x4c8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L238>:
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x70], xmm0
               	mov	rbx, qword ptr [rsp + 0x40]
               	test	rcx, rcx
               	mov	r15, qword ptr [rsp]
               	mov	r12, qword ptr [rsp + 0x8]
               	je	 <L254>
<L253>:
               	mov	r14, r15
               	jmp	 <L259>
               	nop	dword ptr [rax + rax]
<L260>:
               	add	r14, 0x18
               	add	r12, -0x18
               	je	 <L254>
<L259>:
               	mov	rax, qword ptr [r14]
               	test	rax, rax
               	je	 <L260>
               	mov	edi, 0x3
               	mov	rsi, r14
               	xor	edx, edx
               	vzeroupper
               	call	rax
               	mov	qword ptr [r14], 0x0
               	jmp	 <L260>
<L257>:
               	vmovaps	xmm0, xmmword ptr [rsp + 0x70]
               	vucomiss	xmm0, dword ptr  <strcmp+0x1a28>
               	je	 <L256>
<L258>:
               	mov	edi, 0x4
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x70]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <strcmp+0x9ee8>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
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

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x1a74>
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
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>+0x10>
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
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>>
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

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x1a88>
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
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>+0x10>
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
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	int3
               	int3
               	int3
               	int3

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x1a9c>
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
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>+0x10>
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
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>>
               	mov	qword ptr [rdx], rax
               	pop	rbx
               	pop	r14
               	pop	r15
               	ret
               	int3
               	int3
               	int3
               	int3

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x1ab0>
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
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>+0x10>
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
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>>
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

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
               	push	r15
               	push	r14
               	push	rbx
               	cmp	edi, 0x4
               	ja	 <L0>
               	mov	rbx, qword ptr [rsi + 0x8]
               	mov	eax, edi
               	lea	rcx,  <strcmp+0x1ac4>
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
               	lea	rcx,  <vtable for Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>+0x10>
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
               	lea	rax,  <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>>
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
               	lea	rcx,  <strcmp+0x1ad8>
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
               	lea	rcx,  <strcmp+0x1aec>
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
               	lea	rcx,  <strcmp+0x1b00>
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
               	lea	rcx,  <strcmp+0x1b14>
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
               	lea	rcx,  <strcmp+0x1b28>
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
               	lea	rcx,  <strcmp+0x1b3c>
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
               	lea	rcx,  <strcmp+0x1b50>
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
               	lea	rcx,  <strcmp+0x1b64>
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
               	vmovups	zmm0, zmmword ptr [rbx + 0x8]
               	vmovups	zmm1, zmmword ptr [rbx + 0x28]
               	vmovups	zmmword ptr [rax + 0x8], zmm0
               	vmovups	zmmword ptr [rax + 0x28], zmm1
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
               	int3
               	int3

<Bodies3D::AnyBody::AnyBody<Bodies3D::Head@Evaluation.CRTP.Head, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Sphere@Evaluation.CRTP.Sphere>(std::in_place_type_t<Bodies3D::Head@Evaluation.CRTP.Head>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
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
               	mov	rax, qword ptr  <strcmp+0x9ef0>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
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
               	mov	rax, qword ptr  <strcmp+0x9ef0>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cone@Evaluation.CRTP.Cone, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cone@Evaluation.CRTP.Cone>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
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
               	mov	rax, qword ptr  <strcmp+0x9ef0>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
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
               	mov	rax, qword ptr  <strcmp+0x9ef0>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Sphere@Evaluation.CRTP.Sphere, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&>(std::in_place_type_t<Bodies3D::Sphere@Evaluation.CRTP.Sphere>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
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
               	mov	rax, qword ptr  <strcmp+0x9ef0>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
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
               	mov	rax, qword ptr  <strcmp+0x9ef0>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
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
               	mov	rax, qword ptr  <strcmp+0x9ef0>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cube@Evaluation.CRTP.Cube, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&>(std::in_place_type_t<Bodies3D::Cube@Evaluation.CRTP.Cube>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
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
               	mov	rax, qword ptr  <strcmp+0x9ef0>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Triangle@Evaluation.CRTP.Triangle, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Triangle@Evaluation.CRTP.Triangle>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
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
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x9ef0>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Square@Evaluation.CRTP.Square, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&>(std::in_place_type_t<Bodies3D::Square@Evaluation.CRTP.Square>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
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
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x9ef0>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
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
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x9ef0>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
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
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x9ef0>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>>
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

<Bodies3D::AnyBody::AnyBody<Bodies3D::Circle@Evaluation.CRTP.Circle, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&>(std::in_place_type_t<Bodies3D::Circle@Evaluation.CRTP.Circle>, RGBAColor@Evaluation.Dependency.CommonData const&, Point@Evaluation.Dependency.CommonData const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	lea	rcx,  <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
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
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>>
               	cmp	rdi, rax
               	jne	 <L2>
               	jmp	 <L0>
<L1>:
               	mov	rax, qword ptr  <strcmp+0x9ef0>
               	mov	rdi, qword ptr [rax + 0x8]
               	lea	rax,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>>
               	cmp	rdi, rax
               	je	 <L0>
<L2>:
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L3>
               	lea	rsi,  <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>>
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
               	mov	rdx, qword ptr  <strcmp+0x9ed8>
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
               	mov	esi, 0x8
               	mov	rdi, rbx
               	pop	rbx
               	jmp	 <_ZdlPvm@plt>
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
               	vmulss	xmm1, xmm1, dword ptr  <strcmp+0x1a3c>
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

<Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>::~BodyAdapter()>:
               	mov	esi, 0x68
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x1a3c>
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

<Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>::~BodyAdapter()>:
               	mov	esi, 0x30
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x1a24>
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
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x1a2c>
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

<Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::~BodyAdapter()>:
<Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>::~BodyAdapter()>:
               	mov	esi, 0x28
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x1a30>
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

<Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x1a34>
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

<Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x28]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x1a2c>
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

<Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>::ComputeVolume() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x1a2c>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <strcmp+0x9eb8>
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

<_ZNSt8bad_castD2Ev@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x50>
               	push	0x7
               	jmp	 <.plt>

<_ZdlPvm@plt>:
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
