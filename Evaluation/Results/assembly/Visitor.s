
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
               	call	qword ptr  <memset+0x87b0>
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
               	mov	rax, qword ptr  <memset+0x87c0>
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
               	mov	rax, qword ptr  <memset+0x87c8>
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
               	cmp	qword ptr , 0x0 <memset+0x87d0>
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

<_GLOBAL__sub_I_Visitor.cpp>:
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
               	call	 <initializer for module Evaluation.Dependency.Visitor.ObjectReference>
               	call	 <initializer for module Evaluation.Dependency.Visitor.ObjectValue>
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x688
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
               	movsx	r13d, byte ptr [rax]
               	add	r13d, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	word ptr [rax + rax]
<L3>:
               	lea	edx, [r13 + 4*r13]
               	movsx	ecx, cl
               	lea	r13d, [rcx + 2*rdx]
               	add	r13d, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movabs	rbp, 0x180ec6d33cfd0aba
               	movsxd	rax, r13d
               	shl	rax, 0x4
               	lea	rdi, [rax + 2*rax]
               	mov	rsi, qword ptr  <memset+0x87d8>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x158], rbx
               	movsxd	rcx, ebx
               	vpbroadcastq	ymm0, rcx
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0xfc0>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rdx, -0x61c8864680b583eb
               	add	rdx, rcx
               	shr	rdx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rdx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0xfe0>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0xfe8>
               	mov	qword ptr [rsp + 0x140], rax
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x270], ymm0
               	vmovq	r8, xmm0
               	vpextrq	r10, xmm0, 0x1
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	rbx, xmm0
               	vpextrq	r14, xmm0, 0x1
               	xor	eax, eax
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
               	xor	r14, r10
               	xor	r10, rbx
               	xor	r8, r14
               	xor	rbx, rcx
               	rorx	r14, r14, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L5>
<L4>:
               	bt	rbp, rax
               	jae	 <L6>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r14
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
               	xor	r14, r10
               	xor	r10, rbx
               	xor	r8, r14
               	xor	rbx, rdx
               	rorx	r14, r14, 0x13
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L8>
<L7>:
               	bt	rax, rcx
               	jae	 <L9>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r14
               	jmp	 <L9>
<L8>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	word ptr [rax + rax]
<L12>:
               	mov	r15, r10
               	shl	r15, 0x11
               	xor	rbx, r8
               	xor	r14, r10
               	xor	r10, rbx
               	xor	r8, r14
               	xor	rbx, r15
               	rorx	r14, r14, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L11>
<L10>:
               	bt	rcx, rdx
               	jae	 <L12>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r14
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
               	xor	r14, r10
               	xor	r10, rbx
               	xor	r8, r14
               	xor	rbx, r12
               	rorx	r14, r14, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L14>
<L13>:
               	bt	rdx, r15
               	jae	 <L15>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r14
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0x290], r11
               	mov	qword ptr [rsp + 0x298], r9
               	mov	qword ptr [rsp + 0x2a0], rdi
               	mov	qword ptr [rsp + 0x2a8], rsi
               	xor	r15d, r15d
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	xor	r14d, r14d
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
               	bt	rbp, r15
               	jae	 <L18>
               	xor	r14, r11
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
               	xor	r14, r11
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
               	xor	r14, r11
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
               	xor	r14, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0x2b0], r14
               	mov	qword ptr [rsp + 0x2b8], rbx
               	mov	qword ptr [rsp + 0x2c0], r10
               	mov	qword ptr [rsp + 0x2c8], r8
               	xor	edi, edi
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L28>
               	nop	dword ptr [rax + rax]
<L30>:
               	mov	r12, rbx
               	shl	r12, 0x11
               	xor	r10, r14
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r14, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L29>
<L28>:
               	bt	rbp, rdi
               	jae	 <L30>
               	xor	r15, r14
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L30>
<L29>:
               	xor	edi, edi
               	jmp	 <L31>
               	nop	dword ptr [rax]
<L33>:
               	mov	r12, rbx
               	shl	r12, 0x11
               	xor	r10, r14
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r14, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L32>
<L31>:
               	bt	rax, rdi
               	jae	 <L33>
               	xor	r15, r14
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L33>
<L32>:
               	xor	edi, edi
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
               	mov	r12, rbx
               	shl	r12, 0x11
               	xor	r10, r14
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r14, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L35>
<L34>:
               	bt	rcx, rdi
               	jae	 <L36>
               	xor	r15, r14
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L36>
<L35>:
               	xor	edi, edi
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
               	mov	r12, rbx
               	shl	r12, 0x11
               	xor	r10, r14
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r14, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L38>
<L37>:
               	bt	rdx, rdi
               	jae	 <L39>
               	xor	r15, r14
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L39>
<L38>:
               	mov	qword ptr [rsp + 0x2d0], r15
               	mov	qword ptr [rsp + 0x2d8], r11
               	mov	qword ptr [rsp + 0x2e0], r9
               	mov	qword ptr [rsp + 0x2e8], rsi
               	xor	r14d, r14d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L40>
               	nop	dword ptr [rax + rax]
<L42>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L41>
<L40>:
               	bt	rbp, r14
               	jae	 <L42>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L42>
<L41>:
               	xor	r14d, r14d
               	jmp	 <L43>
               	nop
<L45>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L44>
<L43>:
               	bt	rax, r14
               	jae	 <L45>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L45>
<L44>:
               	xor	r14d, r14d
               	jmp	 <L46>
               	nop
<L48>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L47>
<L46>:
               	bt	rcx, r14
               	jae	 <L48>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L48>
<L47>:
               	xor	r14d, r14d
               	jmp	 <L49>
               	nop
<L51>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L50>
<L49>:
               	bt	rdx, r14
               	jae	 <L51>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L51>
<L50>:
               	mov	qword ptr [rsp + 0x2f0], rbx
               	mov	qword ptr [rsp + 0x2f8], r10
               	mov	qword ptr [rsp + 0x300], r8
               	mov	qword ptr [rsp + 0x308], rdi
               	xor	r15d, r15d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r14d, r14d
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
               	bt	rbp, r15
               	jae	 <L54>
               	xor	r14, rbx
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
               	xor	r14, rbx
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
               	xor	r14, rbx
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
               	xor	r14, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L63>
<L62>:
               	mov	qword ptr [rsp + 0x310], r14
               	mov	qword ptr [rsp + 0x318], r11
               	mov	qword ptr [rsp + 0x320], r9
               	mov	qword ptr [rsp + 0x328], rsi
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
               	xor	r9, r14
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r14, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L65>
<L64>:
               	bt	rbp, r15
               	jae	 <L66>
               	xor	rbx, r14
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
               	xor	r9, r14
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r14, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L68>
<L67>:
               	bt	rax, r15
               	jae	 <L69>
               	xor	rbx, r14
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
               	xor	r9, r14
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r14, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L71>
<L70>:
               	bt	rcx, r15
               	jae	 <L72>
               	xor	rbx, r14
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
               	xor	r9, r14
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r14, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L74>
<L73>:
               	bt	rdx, r15
               	jae	 <L75>
               	xor	rbx, r14
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L75>
<L74>:
               	mov	qword ptr [rsp + 0x160], r13
               	mov	qword ptr [rsp + 0x330], rbx
               	mov	qword ptr [rsp + 0x338], r10
               	mov	qword ptr [rsp + 0x340], r8
               	mov	qword ptr [rsp + 0x348], rdi
               	xor	esi, esi
               	xor	r14d, r14d
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x138], 0x0
               	mov	qword ptr [rsp + 0x10], 0x0
               	jmp	 <L76>
<L78>:
               	mov	r9, r10
               	shl	r9, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r9
               	rorx	rdi, rdi, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L77>
<L76>:
               	bt	rbp, rsi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x10], rbx
               	xor	qword ptr [rsp + 0x138], r10
               	xor	r12, r8
               	xor	r14, rdi
               	jmp	 <L78>
<L77>:
               	xor	esi, esi
               	jmp	 <L79>
               	nop	word ptr cs:[rax + rax]
<L81>:
               	mov	r9, r10
               	shl	r9, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r9
               	rorx	rdi, rdi, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L80>
<L79>:
               	bt	rax, rsi
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x10], rbx
               	xor	qword ptr [rsp + 0x138], r10
               	xor	r12, r8
               	xor	r14, rdi
               	jmp	 <L81>
<L80>:
               	xor	esi, esi
               	jmp	 <L82>
               	nop	word ptr cs:[rax + rax]
<L84>:
               	mov	r9, r10
               	shl	r9, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r9
               	rorx	rdi, rdi, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L83>
<L82>:
               	bt	rcx, rsi
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x10], rbx
               	xor	qword ptr [rsp + 0x138], r10
               	xor	r12, r8
               	xor	r14, rdi
               	jmp	 <L84>
<L83>:
               	xor	esi, esi
               	jmp	 <L85>
               	nop	word ptr cs:[rax + rax]
<L87>:
               	mov	r9, r10
               	shl	r9, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r9
               	rorx	rdi, rdi, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L86>
<L85>:
               	bt	rdx, rsi
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x10], rbx
               	xor	qword ptr [rsp + 0x138], r10
               	xor	r12, r8
               	xor	r14, rdi
               	jmp	 <L87>
<L86>:
               	mov	r9, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x350], r9
               	mov	r8, qword ptr [rsp + 0x138]
               	mov	qword ptr [rsp + 0x358], r8
               	mov	qword ptr [rsp + 0x360], r12
               	mov	qword ptr [rsp + 0x368], r14
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, r14
               	mov	qword ptr [rsp + 0x8], 0x0
               	mov	rdi, r12
               	mov	qword ptr [rsp + 0x18], 0x0
               	mov	qword ptr [rsp + 0x130], 0x0
               	jmp	 <L88>
               	nop	dword ptr [rax + rax]
<L90>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L89>
<L88>:
               	bt	rbp, r10
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	rbx, rsi
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L92>
<L91>:
               	bt	rax, r10
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	rbx, rsi
               	jmp	 <L93>
<L92>:
               	xor	r10d, r10d
               	jmp	 <L94>
               	nop	word ptr [rax + rax]
<L96>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L95>
<L94>:
               	bt	rcx, r10
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	rbx, rsi
               	jmp	 <L96>
<L95>:
               	xor	r10d, r10d
               	jmp	 <L97>
               	nop	word ptr [rax + rax]
<L99>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L98>
<L97>:
               	bt	rdx, r10
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	rbx, rsi
               	jmp	 <L99>
<L98>:
               	mov	r9, qword ptr [rsp + 0x130]
               	mov	qword ptr [rsp + 0x370], r9
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x378], r8
               	mov	rdi, qword ptr [rsp + 0x8]
               	mov	qword ptr [rsp + 0x380], rdi
               	mov	qword ptr [rsp + 0x388], rbx
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x128], 0x0
               	mov	rsi, rbx
               	mov	qword ptr [rsp + 0x120], 0x0
               	mov	qword ptr [rsp + 0x118], 0x0
               	mov	qword ptr [rsp + 0x110], 0x0
               	jmp	 <L100>
               	nop	dword ptr [rax]
<L102>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L101>
<L100>:
               	bt	rbp, r10
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L102>
<L101>:
               	xor	r10d, r10d
               	jmp	 <L103>
               	nop	word ptr cs:[rax + rax]
<L105>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L104>
<L103>:
               	bt	rax, r10
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L105>
<L104>:
               	xor	r10d, r10d
               	jmp	 <L106>
               	nop	word ptr cs:[rax + rax]
<L108>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L107>
<L106>:
               	bt	rcx, r10
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L108>
<L107>:
               	xor	r10d, r10d
               	jmp	 <L109>
               	nop	word ptr cs:[rax + rax]
<L111>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L110>
<L109>:
               	bt	rdx, r10
               	jae	 <L111>
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L111>
<L110>:
               	mov	r9, qword ptr [rsp + 0x110]
               	mov	qword ptr [rsp + 0x390], r9
               	mov	r8, qword ptr [rsp + 0x118]
               	mov	qword ptr [rsp + 0x398], r8
               	mov	rdi, qword ptr [rsp + 0x120]
               	mov	qword ptr [rsp + 0x3a0], rdi
               	mov	rsi, qword ptr [rsp + 0x128]
               	mov	qword ptr [rsp + 0x3a8], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x108], 0x0
               	mov	qword ptr [rsp + 0x100], 0x0
               	mov	qword ptr [rsp + 0xf8], 0x0
               	mov	qword ptr [rsp + 0xf0], 0x0
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L113>
<L112>:
               	bt	rbp, r10
               	jae	 <L114>
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L114>
<L113>:
               	xor	r10d, r10d
               	jmp	 <L115>
               	nop	word ptr cs:[rax + rax]
<L117>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L116>
<L115>:
               	bt	rax, r10
               	jae	 <L117>
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L117>
<L116>:
               	xor	r10d, r10d
               	jmp	 <L118>
               	nop	word ptr cs:[rax + rax]
<L120>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L119>
<L118>:
               	bt	rcx, r10
               	jae	 <L120>
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L120>
<L119>:
               	xor	r10d, r10d
               	jmp	 <L121>
               	nop	word ptr cs:[rax + rax]
<L123>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L122>
<L121>:
               	bt	rdx, r10
               	jae	 <L123>
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L123>
<L122>:
               	mov	r9, qword ptr [rsp + 0xf0]
               	mov	qword ptr [rsp + 0x3b0], r9
               	mov	r8, qword ptr [rsp + 0xf8]
               	mov	qword ptr [rsp + 0x3b8], r8
               	mov	rdi, qword ptr [rsp + 0x100]
               	mov	qword ptr [rsp + 0x3c0], rdi
               	mov	rsi, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0x3c8], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xe8], 0x0
               	mov	qword ptr [rsp + 0xe0], 0x0
               	mov	qword ptr [rsp + 0xd8], 0x0
               	mov	qword ptr [rsp + 0xd0], 0x0
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L125>
<L124>:
               	bt	rbp, r10
               	jae	 <L126>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0xd8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L128>
<L127>:
               	bt	rax, r10
               	jae	 <L129>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0xd8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
               	jmp	 <L129>
<L128>:
               	xor	r10d, r10d
               	jmp	 <L130>
               	nop	word ptr cs:[rax + rax]
<L132>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L131>
<L130>:
               	bt	rcx, r10
               	jae	 <L132>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0xd8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
               	jmp	 <L132>
<L131>:
               	xor	r10d, r10d
               	jmp	 <L133>
               	nop	word ptr cs:[rax + rax]
<L135>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L134>
<L133>:
               	bt	rdx, r10
               	jae	 <L135>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0xd8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
               	jmp	 <L135>
<L134>:
               	mov	r9, qword ptr [rsp + 0xd0]
               	mov	qword ptr [rsp + 0x3d0], r9
               	mov	r8, qword ptr [rsp + 0xd8]
               	mov	qword ptr [rsp + 0x3d8], r8
               	mov	rdi, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0x3e0], rdi
               	mov	rsi, qword ptr [rsp + 0xe8]
               	mov	qword ptr [rsp + 0x3e8], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xc8], 0x0
               	mov	qword ptr [rsp + 0xc0], 0x0
               	mov	qword ptr [rsp + 0xb8], 0x0
               	mov	qword ptr [rsp + 0xb0], 0x0
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L137>
<L136>:
               	bt	rbp, r10
               	jae	 <L138>
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L138>
<L137>:
               	xor	r10d, r10d
               	jmp	 <L139>
               	nop	word ptr cs:[rax + rax]
<L141>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L140>
<L139>:
               	bt	rax, r10
               	jae	 <L141>
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L141>
<L140>:
               	xor	r10d, r10d
               	jmp	 <L142>
               	nop	word ptr cs:[rax + rax]
<L144>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L143>
<L142>:
               	bt	rcx, r10
               	jae	 <L144>
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L144>
<L143>:
               	xor	r10d, r10d
               	jmp	 <L145>
               	nop	word ptr cs:[rax + rax]
<L147>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L146>
<L145>:
               	bt	rdx, r10
               	jae	 <L147>
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L147>
<L146>:
               	mov	r9, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0x3f0], r9
               	mov	r8, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x3f8], r8
               	mov	rdi, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0x400], rdi
               	mov	rsi, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0x408], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xa8], 0x0
               	mov	qword ptr [rsp + 0xa0], 0x0
               	mov	qword ptr [rsp + 0x98], 0x0
               	mov	qword ptr [rsp + 0x90], 0x0
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L149>
<L148>:
               	bt	rbp, r10
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
               	jmp	 <L150>
<L149>:
               	xor	r10d, r10d
               	jmp	 <L151>
               	nop	word ptr cs:[rax + rax]
<L153>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L152>
<L151>:
               	bt	rax, r10
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
               	jmp	 <L153>
<L152>:
               	xor	r10d, r10d
               	jmp	 <L154>
               	nop	word ptr cs:[rax + rax]
<L156>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L155>
<L154>:
               	bt	rcx, r10
               	jae	 <L156>
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
               	jmp	 <L156>
<L155>:
               	xor	r10d, r10d
               	jmp	 <L157>
               	nop	word ptr cs:[rax + rax]
<L159>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L158>
<L157>:
               	bt	rdx, r10
               	jae	 <L159>
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
               	jmp	 <L159>
<L158>:
               	mov	r9, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x410], r9
               	mov	r8, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x418], r8
               	mov	rdi, qword ptr [rsp + 0xa0]
               	mov	qword ptr [rsp + 0x420], rdi
               	mov	rsi, qword ptr [rsp + 0xa8]
               	mov	qword ptr [rsp + 0x428], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x88], 0x0
               	mov	qword ptr [rsp + 0x80], 0x0
               	mov	qword ptr [rsp + 0x78], 0x0
               	mov	qword ptr [rsp + 0x70], 0x0
               	jmp	 <L160>
               	nop	dword ptr [rax]
<L162>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L161>
<L160>:
               	bt	rbp, r10
               	jae	 <L162>
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	xor	qword ptr [rsp + 0x88], rsi
               	jmp	 <L162>
<L161>:
               	xor	r10d, r10d
               	jmp	 <L163>
               	nop	dword ptr [rax]
<L165>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L164>
<L163>:
               	bt	rax, r10
               	jae	 <L165>
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	xor	qword ptr [rsp + 0x88], rsi
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L167>
<L166>:
               	bt	rcx, r10
               	jae	 <L168>
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	xor	qword ptr [rsp + 0x88], rsi
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L170>
<L169>:
               	bt	rdx, r10
               	jae	 <L171>
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	xor	qword ptr [rsp + 0x88], rsi
               	jmp	 <L171>
<L170>:
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	qword ptr [rsp + 0x430], r9
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	qword ptr [rsp + 0x438], r8
               	mov	rdi, qword ptr [rsp + 0x80]
               	mov	qword ptr [rsp + 0x440], rdi
               	mov	rsi, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x448], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x68], 0x0
               	mov	qword ptr [rsp + 0x60], 0x0
               	mov	qword ptr [rsp + 0x58], 0x0
               	mov	qword ptr [rsp + 0x50], 0x0
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L173>
<L172>:
               	bt	rbp, r10
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x60], rdi
               	xor	qword ptr [rsp + 0x68], rsi
               	jmp	 <L174>
<L173>:
               	xor	r10d, r10d
               	jmp	 <L175>
               	nop	word ptr cs:[rax + rax]
<L177>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L176>
<L175>:
               	bt	rax, r10
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x60], rdi
               	xor	qword ptr [rsp + 0x68], rsi
               	jmp	 <L177>
<L176>:
               	xor	r10d, r10d
               	jmp	 <L178>
               	nop	word ptr cs:[rax + rax]
<L180>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L179>
<L178>:
               	bt	rcx, r10
               	jae	 <L180>
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x60], rdi
               	xor	qword ptr [rsp + 0x68], rsi
               	jmp	 <L180>
<L179>:
               	xor	r10d, r10d
               	jmp	 <L181>
               	nop	word ptr cs:[rax + rax]
<L183>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L182>
<L181>:
               	bt	rdx, r10
               	jae	 <L183>
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x60], rdi
               	xor	qword ptr [rsp + 0x68], rsi
               	jmp	 <L183>
<L182>:
               	mov	qword ptr [rsp + 0x148], rbx
               	mov	qword ptr [rsp + 0x260], r14
               	mov	rbx, qword ptr [rsp + 0x50]
               	mov	qword ptr [rsp + 0x450], rbx
               	mov	r11, qword ptr [rsp + 0x58]
               	mov	qword ptr [rsp + 0x458], r11
               	mov	r10, qword ptr [rsp + 0x60]
               	mov	qword ptr [rsp + 0x460], r10
               	mov	r9, qword ptr [rsp + 0x68]
               	mov	qword ptr [rsp + 0x468], r9
               	xor	r14d, r14d
               	xor	esi, esi
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x48], 0x0
               	jmp	 <L184>
               	nop	word ptr [rax + rax]
<L186>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r10, rbx
               	xor	r9, r11
               	xor	r11, r10
               	xor	rbx, r9
               	xor	r10, r15
               	rorx	r9, r9, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L185>
<L184>:
               	bt	rbp, r14
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x48], rbx
               	xor	r8, r11
               	xor	rdi, r10
               	xor	rsi, r9
               	jmp	 <L186>
<L185>:
               	xor	r14d, r14d
               	jmp	 <L187>
<L189>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r10, rbx
               	xor	r9, r11
               	xor	r11, r10
               	xor	rbx, r9
               	xor	r10, r15
               	rorx	r9, r9, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L188>
<L187>:
               	bt	rax, r14
               	jae	 <L189>
               	xor	qword ptr [rsp + 0x48], rbx
               	xor	r8, r11
               	xor	rdi, r10
               	xor	rsi, r9
               	jmp	 <L189>
<L188>:
               	xor	r14d, r14d
               	jmp	 <L190>
<L192>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r10, rbx
               	xor	r9, r11
               	xor	r11, r10
               	xor	rbx, r9
               	xor	r10, r15
               	rorx	r9, r9, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L191>
<L190>:
               	bt	rcx, r14
               	jae	 <L192>
               	xor	qword ptr [rsp + 0x48], rbx
               	xor	r8, r11
               	xor	rdi, r10
               	xor	rsi, r9
               	jmp	 <L192>
<L191>:
               	xor	r14d, r14d
               	jmp	 <L193>
<L195>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r10, rbx
               	xor	r9, r11
               	xor	r11, r10
               	xor	rbx, r9
               	xor	r10, r15
               	rorx	r9, r9, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L194>
<L193>:
               	bt	rdx, r14
               	jae	 <L195>
               	xor	qword ptr [rsp + 0x48], rbx
               	xor	r8, r11
               	xor	rdi, r10
               	xor	rsi, r9
               	jmp	 <L195>
<L194>:
               	mov	r10, qword ptr [rsp + 0x48]
               	mov	qword ptr [rsp + 0x470], r10
               	mov	qword ptr [rsp + 0x478], r8
               	mov	qword ptr [rsp + 0x480], rdi
               	mov	qword ptr [rsp + 0x488], rsi
               	xor	r11d, r11d
               	xor	r14d, r14d
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x20], 0x0
               	xor	r9d, r9d
               	jmp	 <L196>
               	nop	word ptr [rax + rax]
<L198>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L197>
<L196>:
               	bt	rbp, r11
               	jae	 <L198>
               	xor	r9, r10
               	xor	qword ptr [rsp + 0x20], r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L198>
<L197>:
               	xor	r11d, r11d
               	jmp	 <L199>
<L201>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L200>
<L199>:
               	bt	rax, r11
               	jae	 <L201>
               	xor	r9, r10
               	xor	qword ptr [rsp + 0x20], r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L201>
<L200>:
               	xor	r11d, r11d
               	jmp	 <L202>
<L204>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L203>
<L202>:
               	bt	rcx, r11
               	jae	 <L204>
               	xor	r9, r10
               	xor	qword ptr [rsp + 0x20], r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L204>
<L203>:
               	xor	r11d, r11d
               	jmp	 <L205>
<L207>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L206>
<L205>:
               	bt	rdx, r11
               	jae	 <L207>
               	xor	r9, r10
               	xor	qword ptr [rsp + 0x20], r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x490], r9
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	qword ptr [rsp + 0x498], r8
               	mov	qword ptr [rsp + 0x4a0], r15
               	mov	qword ptr [rsp + 0x4a8], r14
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, r14
               	mov	qword ptr [rsp + 0x40], 0x0
               	mov	rdi, r15
               	mov	qword ptr [rsp], 0x0
               	mov	qword ptr [rsp + 0x38], 0x0
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L209>
<L208>:
               	bt	rbp, r10
               	jae	 <L210>
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x40], rdi
               	xor	rbx, rsi
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L212>
<L211>:
               	bt	rax, r10
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x40], rdi
               	xor	rbx, rsi
               	jmp	 <L213>
<L212>:
               	xor	r10d, r10d
               	jmp	 <L214>
               	nop	word ptr cs:[rax + rax]
<L216>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L215>
<L214>:
               	bt	rcx, r10
               	jae	 <L216>
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x40], rdi
               	xor	rbx, rsi
               	jmp	 <L216>
<L215>:
               	xor	r10d, r10d
               	jmp	 <L217>
               	nop	word ptr cs:[rax + rax]
<L219>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L218>
<L217>:
               	bt	rdx, r10
               	jae	 <L219>
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x40], rdi
               	xor	rbx, rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x250], r14
               	mov	qword ptr [rsp + 0x258], r12
               	mov	rsi, rbx
               	mov	r13, rbp
               	mov	r9, qword ptr [rsp + 0x38]
               	mov	qword ptr [rsp + 0x4b0], r9
               	mov	r8, qword ptr [rsp]
               	mov	qword ptr [rsp + 0x4b8], r8
               	mov	rdi, qword ptr [rsp + 0x40]
               	mov	qword ptr [rsp + 0x4c0], rdi
               	mov	qword ptr [rsp + 0x4c8], rbx
               	xor	r10d, r10d
               	xor	ebp, ebp
               	mov	qword ptr [rsp + 0x248], rbx
               	xor	r12d, r12d
               	xor	r14d, r14d
               	xor	ebx, ebx
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L221>
<L220>:
               	bt	r13, r10
               	jae	 <L222>
               	xor	rbx, r9
               	xor	r14, r8
               	xor	r12, rdi
               	xor	rbp, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	mov	r13, qword ptr [rsp + 0x160]
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L224>
<L223>:
               	bt	rax, r10
               	jae	 <L225>
               	xor	rbx, r9
               	xor	r14, r8
               	xor	r12, rdi
               	xor	rbp, rsi
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	jmp	 <L226>
               	nop	dword ptr [rax]
<L228>:
               	mov	r10, r8
               	shl	r10, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r10
               	rorx	rsi, rsi, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L227>
<L226>:
               	bt	rcx, rax
               	jae	 <L228>
               	xor	rbx, r9
               	xor	r14, r8
               	xor	r12, rdi
               	xor	rbp, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	mov	r10, qword ptr [rsp + 0x18]
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rcx, r8
               	shl	rcx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rcx
               	rorx	rsi, rsi, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L230>
<L229>:
               	bt	rdx, rax
               	jae	 <L231>
               	xor	rbx, r9
               	xor	r14, r8
               	xor	r12, rdi
               	xor	rbp, rsi
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x4d0], rbx
               	mov	qword ptr [rsp + 0x4d8], r14
               	mov	qword ptr [rsp + 0x4e0], r12
               	mov	qword ptr [rsp + 0x4e8], rbp
               	mov	dword ptr [rsp + 0x4f0], 0x0
               	lea	rax, [rsp + 0x270]
               	kxnorw	k1, k0, k0
               	vpmovzxbd	ymm0, qword ptr  <memset+0xff0>
               	vpxor	xmm2, xmm2, xmm2
               	kxnorw	k2, k0, k0
               	vpxor	xmm1, xmm1, xmm1
               	vpgatherdq	zmm1 {k2}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm1, 0x2
               	vpaddq	zmm0, zmm0, zmm1
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm1, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x4f8], zmm1
               	vpmovsxwd	ymm0, xmmword ptr  <memset+0x1090>
               	vpgatherdq	zmm2 {k1}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm2, 0x2
               	vpaddq	zmm0, zmm0, zmm2
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm2, zmm0, 0x3
               	vpaddq	zmm3, zmm2, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x538], zmm3
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x478]
               	vpinsrq	xmm0, xmm0, qword ptr [rsp + 0x20], 0x1
               	mov	rcx, qword ptr [rsp]
               	vpbroadcastq	ymm2, rcx
               	vpblendd	ymm0, ymm0, ymm2, 0x30  # ymm0 = ymm0[0,1,2,3],ymm2[4,5],ymm0[6,7]
               	vpbroadcastq	ymm2, r14
               	vpblendd	ymm0, ymm0, ymm2, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm2[6,7]
               	vpsllq	ymm2, ymm0, 0x2
               	vpaddq	ymm0, ymm2, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm2, ymm0, 0x3
               	vpaddq	ymm0, ymm2, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x578], ymm0
               	mov	rsi, r13
               	test	esi, esi
               	je	 <L232>
               	mov	qword ptr [rsp + 0x268], r15
               	vpbroadcastq	zmm2, rax
               	vpaddq	zmm5, zmm2, zmmword ptr  <memset+0x1000>
               	vpaddq	zmm6, zmm2, zmmword ptr  <memset+0x1040>
               	vextracti32x4	xmm2, zmm3, 0x2
               	vextracti128	xmm4, ymm3, 0x1
               	vpextrq	r15, xmm4, 0x1
               	vmovq	r13, xmm2
               	vpextrq	rcx, xmm3, 0x1
               	vmovq	rdx, xmm4
               	vmovq	rax, xmm1
               	mov	rdi, qword ptr [rsp + 0x270]
               	mov	qword ptr [rsp + 0x240], rdi
               	mov	rdi, qword ptr [rsp + 0x278]
               	mov	qword ptr [rsp + 0x238], rdi
               	mov	rdi, qword ptr [rsp + 0x280]
               	mov	qword ptr [rsp + 0x230], rdi
               	mov	rdi, qword ptr [rsp + 0x288]
               	mov	qword ptr [rsp + 0x228], rdi
               	mov	rdi, qword ptr [rsp + 0x298]
               	mov	qword ptr [rsp + 0x220], rdi
               	mov	rdi, qword ptr [rsp + 0x290]
               	mov	qword ptr [rsp + 0x218], rdi
               	mov	rdi, qword ptr [rsp + 0x2a0]
               	mov	qword ptr [rsp + 0x210], rdi
               	mov	rdi, qword ptr [rsp + 0x2a8]
               	mov	qword ptr [rsp + 0x208], rdi
               	mov	rdi, qword ptr [rsp + 0x2b8]
               	mov	qword ptr [rsp + 0x200], rdi
               	mov	rdi, qword ptr [rsp + 0x2b0]
               	mov	qword ptr [rsp + 0x1f8], rdi
               	vextracti128	xmm0, ymm0, 0x1
               	vpblendd	xmm2, xmm0, xmm2, 0xc   # xmm2 = xmm0[0,1],xmm2[2,3]
               	vpbroadcastd	ymm7, dword ptr  <memset+0x10a0>
               	vmovdqa	xmm8, xmmword ptr  <memset+0x1080>
               	mov	rdi, qword ptr [rsp + 0x2c0]
               	mov	qword ptr [rsp + 0x1f0], rdi
               	mov	rdi, qword ptr [rsp + 0x2c8]
               	mov	qword ptr [rsp + 0x1e8], rdi
               	mov	rdi, qword ptr [rsp + 0x2d8]
               	mov	qword ptr [rsp + 0x1e0], rdi
               	mov	rdi, qword ptr [rsp + 0x2d0]
               	mov	qword ptr [rsp + 0x1d8], rdi
               	mov	rdi, qword ptr [rsp + 0x2e0]
               	mov	qword ptr [rsp + 0x1d0], rdi
               	mov	rdi, qword ptr [rsp + 0x2e8]
               	mov	qword ptr [rsp + 0x1c8], rdi
               	mov	rdi, qword ptr [rsp + 0x2f8]
               	mov	qword ptr [rsp + 0x1c0], rdi
               	mov	rdi, qword ptr [rsp + 0x2f0]
               	mov	qword ptr [rsp + 0x1b8], rdi
               	mov	rdi, qword ptr [rsp + 0x300]
               	mov	qword ptr [rsp + 0x1b0], rdi
               	mov	rdi, qword ptr [rsp + 0x308]
               	mov	qword ptr [rsp + 0x1a8], rdi
               	mov	rdi, qword ptr [rsp + 0x318]
               	mov	qword ptr [rsp + 0x1a0], rdi
               	mov	rdi, qword ptr [rsp + 0x310]
               	mov	qword ptr [rsp + 0x198], rdi
               	mov	rdi, qword ptr [rsp + 0x320]
               	mov	qword ptr [rsp + 0x190], rdi
               	mov	rdi, qword ptr [rsp + 0x328]
               	mov	qword ptr [rsp + 0x188], rdi
               	mov	rdi, qword ptr [rsp + 0x338]
               	mov	qword ptr [rsp + 0x180], rdi
               	mov	rdi, qword ptr [rsp + 0x330]
               	mov	qword ptr [rsp + 0x178], rdi
               	mov	rdi, qword ptr [rsp + 0x340]
               	mov	qword ptr [rsp + 0x170], rdi
               	mov	rdi, qword ptr [rsp + 0x348]
               	mov	qword ptr [rsp + 0x168], rdi
               	mov	esi, esi
               	mov	qword ptr [rsp + 0x5a8], rsi
               	mov	esi, 0x24
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x140]
               	mov	r8, qword ptr [rsp + 0x148]
               	vmovdqu64	zmmword ptr [rsp + 0x640], zmm5
               	vmovdqu64	zmmword ptr [rsp + 0x600], zmm6
               	jmp	 <L233>
               	lea	rcx, [r11 + 2*r11]
               	shl	rcx, 0x4
               	add	rcx, rdi
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	vmovq	qword ptr [rdi + rsi - 0x4], xmm0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	nop	word ptr [rax + rax]
<L236>:
               	mov	qword ptr [rcx + 0x28], rax
               	inc	r11
               	mov	dword ptr [rsp + 0x4f0], r11d
               	test	r11b, 0x7
               	mov	r9, qword ptr [rsp + 0x268]
               	je	 <L234>
               	vpsrlq	zmm0, zmmword ptr [rsp + 0x4f8], 0x8
               	vmovdqu64	zmmword ptr [rsp + 0x4f8], zmm0
               	vpsrlq	zmm1, zmmword ptr [rsp + 0x538], 0x8
               	vpsrlq	ymm2, ymmword ptr [rsp + 0x578], 0x8
<L237>:
               	vmovq	rax, xmm0
               	vpextrq	rcx, xmm1, 0x1
               	vextracti128	xmm0, ymm1, 0x1
               	vmovq	rdx, xmm0
               	vextracti32x4	xmm3, zmm1, 0x2
               	vmovq	r13, xmm3
               	vpextrq	r15, xmm0, 0x1
               	vmovdqu64	zmmword ptr [rsp + 0x538], zmm1
               	vmovdqu	ymmword ptr [rsp + 0x578], ymm2
               	vextracti128	xmm0, ymm2, 0x1
               	vpblendd	xmm2, xmm0, xmm3, 0xc   # xmm2 = xmm0[0,1],xmm3[2,3]
               	add	rsi, 0x30
               	cmp	qword ptr [rsp + 0x5a8], r11
               	je	 <L235>
<L233>:
               	vmovq	xmm0, rcx
               	vmovq	xmm1, rdx
               	vpunpcklqdq	xmm0, xmm0, xmm1 # xmm0 = xmm0[0],xmm1[0]
               	vmovdqu64	zmm1, zmmword ptr [rsp + 0x500]
               	vpmovqd	ymm1, zmm1
               	vpand	ymm1, ymm1, ymm7
               	vcvtdq2ps	ymm1, ymm1
               	vpshufb	xmm0, xmm0, xmm8
               	vcvtdq2ps	xmm0, xmm0
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	lea	rcx,  <memset+0x10bc>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	lea	rcx, [rdi + rsi]
               	add	rcx, -0x24
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	mov	qword ptr [rdi + rsi - 0x4], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Circle@Evaluation.CRTP.Circle>(void*)>
               	jmp	 <L236>
               	nop
<L234>:
               	mov	rdx, qword ptr [rsp + 0x238]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x240]
               	mov	rdi, qword ptr [rsp + 0x230]
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x150], r11
               	mov	r11, qword ptr [rsp + 0x228]
               	xor	r11, rdx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x238], rdx
               	mov	qword ptr [rsp + 0x278], rdx
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x240], rcx
               	mov	qword ptr [rsp + 0x270], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x230], rdi
               	mov	qword ptr [rsp + 0x280], rdi
               	rorx	r11, r11, 0x13
               	mov	qword ptr [rsp + 0x228], r11
               	mov	qword ptr [rsp + 0x288], r11
               	mov	rcx, qword ptr [rsp + 0x220]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x218]
               	mov	rdi, qword ptr [rsp + 0x210]
               	xor	rdi, rdx
               	mov	r11, qword ptr [rsp + 0x208]
               	xor	r11, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x220], rcx
               	mov	qword ptr [rsp + 0x298], rcx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x218], rdx
               	mov	qword ptr [rsp + 0x290], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x210], rdi
               	mov	qword ptr [rsp + 0x2a0], rdi
               	rorx	r11, r11, 0x13
               	mov	qword ptr [rsp + 0x208], r11
               	mov	qword ptr [rsp + 0x2a8], r11
               	mov	rcx, qword ptr [rsp + 0x200]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1f8]
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	xor	rdi, rdx
               	mov	r11, qword ptr [rsp + 0x1e8]
               	xor	r11, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x200], rcx
               	mov	qword ptr [rsp + 0x2b8], rcx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x1f8], rdx
               	mov	qword ptr [rsp + 0x2b0], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x1f0], rdi
               	mov	qword ptr [rsp + 0x2c0], rdi
               	rorx	r11, r11, 0x13
               	mov	qword ptr [rsp + 0x1e8], r11
               	mov	qword ptr [rsp + 0x2c8], r11
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1d8]
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	xor	rdi, rdx
               	mov	r11, qword ptr [rsp + 0x1c8]
               	xor	r11, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x1e0], rcx
               	mov	qword ptr [rsp + 0x2d8], rcx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x1d8], rdx
               	mov	qword ptr [rsp + 0x2d0], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x1d0], rdi
               	mov	qword ptr [rsp + 0x2e0], rdi
               	rorx	r11, r11, 0x13
               	mov	qword ptr [rsp + 0x1c8], r11
               	mov	qword ptr [rsp + 0x2e8], r11
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1b8]
               	mov	rdi, qword ptr [rsp + 0x1b0]
               	xor	rdi, rdx
               	mov	r11, qword ptr [rsp + 0x1a8]
               	xor	r11, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x1c0], rcx
               	mov	qword ptr [rsp + 0x2f8], rcx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x1b8], rdx
               	mov	qword ptr [rsp + 0x2f0], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x1b0], rdi
               	mov	qword ptr [rsp + 0x300], rdi
               	rorx	r11, r11, 0x13
               	mov	qword ptr [rsp + 0x1a8], r11
               	mov	qword ptr [rsp + 0x308], r11
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x198]
               	mov	rdi, qword ptr [rsp + 0x190]
               	xor	rdi, rdx
               	mov	r11, qword ptr [rsp + 0x188]
               	xor	r11, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x1a0], rcx
               	mov	qword ptr [rsp + 0x318], rcx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x198], rdx
               	mov	qword ptr [rsp + 0x310], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x190], rdi
               	mov	qword ptr [rsp + 0x320], rdi
               	rorx	r11, r11, 0x13
               	mov	qword ptr [rsp + 0x188], r11
               	mov	qword ptr [rsp + 0x328], r11
               	mov	rcx, qword ptr [rsp + 0x180]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x178]
               	mov	rdi, qword ptr [rsp + 0x170]
               	xor	rdi, rdx
               	mov	r11, qword ptr [rsp + 0x168]
               	xor	r11, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x180], rcx
               	mov	qword ptr [rsp + 0x338], rcx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x178], rdx
               	mov	qword ptr [rsp + 0x330], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x170], rdi
               	mov	qword ptr [rsp + 0x340], rdi
               	rorx	r11, r11, 0x13
               	mov	qword ptr [rsp + 0x168], r11
               	mov	qword ptr [rsp + 0x348], r11
               	mov	rdi, qword ptr [rsp + 0x138]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x258]
               	mov	r11, qword ptr [rsp + 0x10]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x260]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x138], rdi
               	mov	qword ptr [rsp + 0x358], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x10], r11
               	mov	qword ptr [rsp + 0x350], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x258], rdx
               	mov	qword ptr [rsp + 0x360], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x260], rcx
               	mov	qword ptr [rsp + 0x368], rcx
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x130]
               	mov	rdi, qword ptr [rsp + 0x8]
               	xor	rdi, rdx
               	xor	r8, r10
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0x378], r10
               	xor	rdx, r8
               	mov	qword ptr [rsp + 0x130], rdx
               	mov	qword ptr [rsp + 0x370], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x8], rdi
               	mov	qword ptr [rsp + 0x380], rdi
               	rorx	r8, r8, 0x13
               	mov	qword ptr [rsp + 0x148], r8
               	mov	qword ptr [rsp + 0x388], r8
               	mov	rdi, qword ptr [rsp + 0x118]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x120]
               	mov	r11, qword ptr [rsp + 0x110]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x128]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	r8, rsi
               	mov	qword ptr [rsp + 0x118], rdi
               	mov	qword ptr [rsp + 0x398], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x110], r11
               	mov	qword ptr [rsp + 0x390], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x120], rdx
               	mov	qword ptr [rsp + 0x3a0], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x128], rcx
               	mov	qword ptr [rsp + 0x3a8], rcx
               	mov	rdi, qword ptr [rsp + 0xf8]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x100]
               	mov	r11, qword ptr [rsp + 0xf0]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x108]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0xf8], rdi
               	mov	qword ptr [rsp + 0x3b8], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0xf0], r11
               	mov	qword ptr [rsp + 0x3b0], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x100], rdx
               	mov	qword ptr [rsp + 0x3c0], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x108], rcx
               	mov	qword ptr [rsp + 0x3c8], rcx
               	mov	rdi, qword ptr [rsp + 0xd8]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xe0]
               	mov	r11, qword ptr [rsp + 0xd0]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0xe8]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0xd8], rdi
               	mov	qword ptr [rsp + 0x3d8], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0xd0], r11
               	mov	qword ptr [rsp + 0x3d0], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xe0], rdx
               	mov	qword ptr [rsp + 0x3e0], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0xe8], rcx
               	mov	qword ptr [rsp + 0x3e8], rcx
               	mov	rdi, qword ptr [rsp + 0xb8]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc0]
               	mov	r11, qword ptr [rsp + 0xb0]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0xc8]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0xb8], rdi
               	mov	qword ptr [rsp + 0x3f8], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0xb0], r11
               	mov	qword ptr [rsp + 0x3f0], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xc0], rdx
               	mov	qword ptr [rsp + 0x400], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0xc8], rcx
               	mov	qword ptr [rsp + 0x408], rcx
               	mov	rdi, qword ptr [rsp + 0x98]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xa0]
               	mov	r11, qword ptr [rsp + 0x90]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0xa8]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x98], rdi
               	mov	qword ptr [rsp + 0x418], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x90], r11
               	mov	qword ptr [rsp + 0x410], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xa0], rdx
               	mov	qword ptr [rsp + 0x420], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0xa8], rcx
               	mov	qword ptr [rsp + 0x428], rcx
               	mov	rdi, qword ptr [rsp + 0x78]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x80]
               	mov	r11, qword ptr [rsp + 0x70]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x88]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x78], rdi
               	mov	qword ptr [rsp + 0x438], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x70], r11
               	mov	qword ptr [rsp + 0x430], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x80], rdx
               	mov	qword ptr [rsp + 0x440], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x88], rcx
               	mov	qword ptr [rsp + 0x448], rcx
               	mov	rdi, qword ptr [rsp + 0x58]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	r11, qword ptr [rsp + 0x50]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x68]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x58], rdi
               	mov	qword ptr [rsp + 0x458], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x50], r11
               	mov	qword ptr [rsp + 0x450], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x60], rdx
               	mov	qword ptr [rsp + 0x460], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x68], rcx
               	mov	qword ptr [rsp + 0x468], rcx
               	mov	rcx, qword ptr [rsp + 0x478]
               	mov	rax, qword ptr [rsp + 0x490]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x480]
               	mov	r11, qword ptr [rsp + 0x48]
               	xor	rsi, r11
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x488]
               	mov	qword ptr [rsp + 0x478], rdi
               	shl	rdx, 0x11
               	xor	rsi, rdx
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x48], r11
               	mov	qword ptr [rsp + 0x470], r11
               	mov	qword ptr [rsp + 0x480], rsi
               	mov	rdi, qword ptr [rsp + 0x140]
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x488], rcx
               	mov	rsi, qword ptr [rsp + 0x20]
               	mov	rcx, rsi
               	xor	r9, rax
               	mov	rdx, qword ptr [rsp + 0x250]
               	xor	rdx, rsi
               	xor	rsi, r9
               	mov	qword ptr [rsp + 0x498], rsi
               	xor	rax, rdx
               	mov	qword ptr [rsp + 0x490], rax
               	shl	rcx, 0x11
               	xor	r9, rcx
               	mov	r13, qword ptr [rsp]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x40]
               	mov	r15, r10
               	mov	r10, qword ptr [rsp + 0x38]
               	xor	r11, r10
               	mov	rcx, qword ptr [rsp + 0x248]
               	xor	rcx, r13
               	xor	r13, r11
               	xor	r11, rax
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r12, rbx
               	xor	rbp, r14
               	xor	r14, r12
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x268], r9
               	mov	qword ptr [rsp + 0x4a0], r9
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0x250], rdx
               	mov	qword ptr [rsp + 0x4a8], rdx
               	mov	qword ptr [rsp + 0x4b8], r13
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x38], r10
               	mov	qword ptr [rsp + 0x4b0], r10
               	mov	r10, r15
               	mov	qword ptr [rsp + 0x40], r11
               	mov	qword ptr [rsp + 0x4c0], r11
               	mov	r11, qword ptr [rsp + 0x150]
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x248], rcx
               	mov	qword ptr [rsp + 0x4c8], rcx
               	mov	qword ptr [rsp + 0x4d8], r14
               	xor	rbx, rbp
               	mov	qword ptr [rsp + 0x4d0], rbx
               	mov	qword ptr [rsp + 0x4e0], r12
               	rorx	rbp, rbp, 0x13
               	mov	qword ptr [rsp + 0x4e8], rbp
               	kxnorw	k1, k0, k0
               	vpxor	xmm0, xmm0, xmm0
               	vpgatherqq	zmm0 {k1}, zmmword ptr [1*zmm5]
               	vpsllq	zmm1, zmm0, 0x2
               	vpaddq	zmm0, zmm1, zmm0
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm0, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x4f8], zmm0
               	vmovdqu	xmm2, xmmword ptr [rsp + 0x478]
               	kxnorw	k1, k0, k0
               	vpxor	xmm1, xmm1, xmm1
               	vpgatherqq	zmm1 {k1}, zmmword ptr [1*zmm6]
               	vpsllq	zmm3, zmm1, 0x2
               	vpaddq	zmm1, zmm3, zmm1
               	vprolq	zmm1, zmm1, 0x7
               	vpsllq	zmm3, zmm1, 0x3
               	vpaddq	zmm1, zmm3, zmm1
               	mov	qword ptr [rsp + 0x20], rsi
               	vpinsrq	xmm2, xmm2, rsi, 0x1
               	mov	rsi, r8
               	mov	r8, qword ptr [rsp + 0x148]
               	mov	qword ptr [rsp], r13
               	vpbroadcastq	ymm3, r13
               	vpblendd	ymm2, ymm2, ymm3, 0x30  # ymm2 = ymm2[0,1,2,3],ymm3[4,5],ymm2[6,7]
               	vpbroadcastq	ymm3, r14
               	vpblendd	ymm2, ymm2, ymm3, 0xc0  # ymm2 = ymm2[0,1,2,3,4,5],ymm3[6,7]
               	vpsllq	ymm3, ymm2, 0x2
               	vpaddq	ymm2, ymm3, ymm2
               	vprolq	ymm2, ymm2, 0x7
               	vpsllq	ymm3, ymm2, 0x3
               	vpaddq	ymm2, ymm3, ymm2
               	jmp	 <L237>
               	lea	rcx, [r11 + 2*r11]
               	shl	rcx, 0x4
               	add	rcx, rdi
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	vmovd	dword ptr [rdi + rsi - 0x4], xmm0
               	mov	dword ptr [rdi + rsi], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Triangle@Evaluation.CRTP.Triangle>(void*)>
               	jmp	 <L236>
               	vmovups	ymmword ptr [rsp + 0x5e0], ymm1
               	vmovdqa	xmmword ptr [rsp + 0x5b0], xmm2
               	mov	qword ptr [rsp + 0x150], r11
               	mov	qword ptr [rsp + 0x5a0], rbp
               	mov	rbp, rbx
               	mov	rbx, rsi
               	mov	qword ptr [rsp + 0x18], r10
               	mov	qword ptr [rsp + 0x148], r8
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x568]
               	vmovdqu	ymmword ptr [rsp + 0x5c0], ymm0
               	mov	edi, 0x60
               	mov	rsi, qword ptr  <memset+0x87d8>
               	vzeroupper
               	call	 <_ZnwmRKSt9nothrow_t@plt>
               	vmovdqa	xmm8, xmmword ptr  <memset+0x1080>
               	vpbroadcastd	ymm7, dword ptr  <memset+0x10a0>
               	test	rax, rax
               	je	 <L238>
               	vmovq	xmm0, r15
               	vmovq	xmm1, r13
               	vpunpcklqdq	xmm0, xmm0, xmm1 # xmm0 = xmm0[0],xmm1[0]
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x5b0]
               	vpextrb	ecx, xmm1, 0x8
               	vpextrb	edx, xmm1, 0x0
               	vpshufb	xmm0, xmm0, xmm8
               	vcvtdq2ps	xmm0, xmm0
               	vcvtsi2ss	xmm1, xmm9, ecx
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x5c0]
               	vpmovqd	xmm2, ymm2
               	vpand	xmm2, xmm2, xmm7
               	vcvtsi2ss	xmm3, xmm9, edx
               	vcvtdq2ps	xmm2, xmm2
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x5e0]
               	vpshufd	xmm4, xmm5, 0xff        # xmm4 = xmm5[3,3,3,3]
               	vmovdqu	ymmword ptr [rax], ymm5
               	vmovlps	qword ptr [rax + 0x20], xmm0
               	vmovss	dword ptr [rax + 0x28], xmm1
               	vmovd	dword ptr [rax + 0x2c], xmm4
               	vmovdqu	xmmword ptr [rax + 0x30], xmm2
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	vmovss	dword ptr [rax + 0x48], xmm1
               	vmovd	dword ptr [rax + 0x4c], xmm4
               	vmovss	dword ptr [rax + 0x50], xmm3
               	vpshufd	xmm0, xmm2, 0xe9        # xmm0 = xmm2[1,2,2,3]
               	vmovq	qword ptr [rax + 0x54], xmm0
               	vextractps	dword ptr [rax + 0x5c], xmm2, 0x3
<L238>:
               	mov	r11, qword ptr [rsp + 0x150]
               	lea	rcx, [r11 + 2*r11]
               	shl	rcx, 0x4
               	mov	rdi, qword ptr [rsp + 0x140]
               	add	rcx, rdi
               	mov	rsi, rbx
               	mov	qword ptr [rdi + rbx - 0x24], rax
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rdi + rbx - 0x1c], ymm0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Head@Evaluation.CRTP.Head>(void*)>
               	mov	r8, qword ptr [rsp + 0x148]
               	mov	r10, qword ptr [rsp + 0x18]
               	mov	rbx, rbp
               	mov	rbp, qword ptr [rsp + 0x5a0]
               	vmovdqu64	zmm5, zmmword ptr [rsp + 0x640]
               	vmovdqu64	zmm6, zmmword ptr [rsp + 0x600]
               	jmp	 <L236>
               	lea	rcx, [r11 + 2*r11]
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	vextractps	dword ptr [rdi + rsi - 0x4], xmm0, 0x1
               	shl	rcx, 0x4
               	add	rcx, rdi
               	mov	dword ptr [rdi + rsi], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(void*)>
               	jmp	 <L236>
               	lea	rcx, [r11 + 2*r11]
               	shl	rcx, 0x4
               	add	rcx, rdi
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	vmovd	dword ptr [rdi + rsi - 0x4], xmm0
               	mov	dword ptr [rdi + rsi], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>(void*)>
               	jmp	 <L236>
               	lea	rcx, [r11 + 2*r11]
               	shl	rcx, 0x4
               	add	rcx, rdi
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	mov	qword ptr [rdi + rsi - 0x4], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Square@Evaluation.CRTP.Square>(void*)>
               	jmp	 <L236>
               	lea	rcx, [r11 + 2*r11]
               	shl	rcx, 0x4
               	add	rcx, rdi
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	vmovq	qword ptr [rdi + rsi - 0x4], xmm0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(void*)>
               	jmp	 <L236>
               	lea	rcx, [r11 + 2*r11]
               	shl	rcx, 0x4
               	add	rcx, rdi
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	vmovd	dword ptr [rdi + rsi - 0x4], xmm0
               	mov	dword ptr [rdi + rsi], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>(void*)>
               	jmp	 <L236>
               	lea	rcx, [r11 + 2*r11]
               	shl	rcx, 0x4
               	add	rcx, rdi
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	mov	qword ptr [rdi + rsi - 0x4], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cube@Evaluation.CRTP.Cube>(void*)>
               	jmp	 <L236>
               	lea	rcx, [r11 + 2*r11]
               	shl	rcx, 0x4
               	add	rcx, rdi
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	vmovq	qword ptr [rdi + rsi - 0x4], xmm0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>(void*)>
               	jmp	 <L236>
               	lea	rcx, [r11 + 2*r11]
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	vextractps	dword ptr [rdi + rsi - 0x4], xmm0, 0x1
               	shl	rcx, 0x4
               	add	rcx, rdi
               	mov	dword ptr [rdi + rsi], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cone@Evaluation.CRTP.Cone>(void*)>
               	jmp	 <L236>
               	lea	rcx, [r11 + 2*r11]
               	shl	rcx, 0x4
               	add	rcx, rdi
               	vmovups	ymmword ptr [rdi + rsi - 0x24], ymm1
               	mov	qword ptr [rdi + rsi - 0x4], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Sphere@Evaluation.CRTP.Sphere>(void*)>
               	jmp	 <L236>
<L235>:
               	shl	r11, 0x4
               	lea	rcx, [r11 + 2*r11]
               	mov	rax, rcx
               	shr	rax, 0x4
               	imul	ebp, eax, 0xaaaaaaab
               	test	ebp, ebp
               	je	 <L239>
               	mov	qword ptr [rsp + 0x8], rcx
               	mov	qword ptr [rsp + 0x10], rsi
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu64	zmmword ptr [rsp + 0x2b0], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x270], zmm0
               	lea	r14,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Circle@Evaluation.CRTP.Circle>(void*)>
               	mov	r15, rdi
               	jmp	 <L240>
               	nop	dword ptr [rax + rax]
<L241>:
               	vmovss	xmm0, dword ptr [rsp + 0x274]
               	vmovss	dword ptr [rsp + 0x278], xmm0
               	mov	r13d, 0x1
<L269>:
               	mov	eax, r13d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x270]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r15, rbx
<L240>:
               	blsi	eax, ebp
               	lea	rbx, [rax + 2*rax]
               	shl	rbx, 0x4
               	add	rbx, r15
               	test	eax, eax
               	je	 <L241>
               	mov	qword ptr [rsp], rax
               	mov	dword ptr [rsp + 0x20], ebp
               	xor	ecx, ecx
               	mov	r12d, 0x1
               	mov	ebp, 0x1
               	jmp	 <L242>
               	nop	word ptr cs:[rax + rax]
<L257>:
               	mov	r12d, r13d
               	movsxd	rax, r13d
               	vmovss	dword ptr [rsp + 4*rax + 0x270], xmm1
               	add	r15, 0x30
               	mov	ecx, 0xfffffffe
               	sub	ecx, ebp
               	lea	edx, [rbp + 0x1]
               	lzcnt	esi, edx
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	ebp, edx
               	cmp	r15, rbx
               	je	 <L243>
<L242>:
               	mov	r13d, ecx
               	mov	rdi, r15
               	vzeroupper
               	call	qword ptr [r15 + 0x28]
               	cmp	rdx, r14
               	je	 <L244>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>(void*)>
               	cmp	rdx, rcx
               	je	 <L245>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>(void*)>
               	cmp	rdx, rcx
               	je	 <L246>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Square@Evaluation.CRTP.Square>(void*)>
               	cmp	rdx, rcx
               	je	 <L247>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Triangle@Evaluation.CRTP.Triangle>(void*)>
               	cmp	rdx, rcx
               	je	 <L248>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cube@Evaluation.CRTP.Cube>(void*)>
               	cmp	rdx, rcx
               	je	 <L249>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>(void*)>
               	cmp	rdx, rcx
               	je	 <L250>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(void*)>
               	cmp	rdx, rcx
               	je	 <L251>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Sphere@Evaluation.CRTP.Sphere>(void*)>
               	cmp	rdx, rcx
               	je	 <L252>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(void*)>
               	cmp	rdx, rcx
               	je	 <L253>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cone@Evaluation.CRTP.Cone>(void*)>
               	cmp	rdx, rcx
               	je	 <L254>
               	lea	rcx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rdx, rcx
               	je	 <L255>
<L252>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <memset+0x10b8>
               	jmp	 <L256>
               	nop	word ptr [rax + rax]
<L244>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm1, xmm0, dword ptr  <memset+0x10a8>
               	mov	edx, r13d
               	sub	edx, r12d
               	jl	 <L257>
               	jmp	 <L258>
               	nop	word ptr cs:[rax + rax]
<L245>:
               	vmovss	xmm0, dword ptr  <memset+0x10a8>
<L259>:
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm1, xmm0, dword ptr [rax + 0x20]
               	mov	edx, r13d
               	sub	edx, r12d
               	jl	 <L257>
               	jmp	 <L258>
<L246>:
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm1, xmm0, dword ptr [rax + 0x1c]
               	mov	edx, r13d
               	sub	edx, r12d
               	jl	 <L257>
               	jmp	 <L258>
<L247>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	mov	edx, r13d
               	sub	edx, r12d
               	jl	 <L257>
               	jmp	 <L258>
<L248>:
               	vmovss	xmm0, dword ptr  <memset+0x10b0>
               	jmp	 <L259>
<L249>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
<L256>:
               	vmulss	xmm1, xmm1, xmm0
               	mov	edx, r13d
               	sub	edx, r12d
               	jl	 <L257>
               	jmp	 <L258>
<L250>:
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm1, xmm0, dword ptr [rax + 0x24]
               	mov	edx, r13d
               	sub	edx, r12d
               	jl	 <L257>
               	jmp	 <L258>
<L251>:
               	vmovss	xmm0, dword ptr  <memset+0x10ac>
<L267>:
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm1, xmm0, dword ptr [rax + 0x24]
               	mov	edx, r13d
               	sub	edx, r12d
               	jl	 <L257>
               	jmp	 <L258>
<L253>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x10a8>
               	vmulss	xmm1, xmm0, dword ptr [rax + 0x20]
               	mov	edx, r13d
               	sub	edx, r12d
               	jl	 <L257>
               	jmp	 <L258>
<L254>:
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x10a4>
               	vmulss	xmm1, xmm0, dword ptr [rax + 0x20]
               	mov	edx, r13d
               	sub	edx, r12d
               	jl	 <L257>
               	nop	dword ptr [rax + rax]
<L258>:
               	movsxd	rax, r12d
               	cmp	edx, 0x7
               	jb	 <L260>
               	lea	rcx, [rdx + 0x1]
               	cmp	edx, 0x3f
               	jae	 <L261>
               	xor	edx, edx
               	jmp	 <L262>
<L261>:
               	mov	rdx, rcx
               	movabs	rsi, 0x1ffffffc0
               	and	rdx, rsi
               	vxorps	xmm0, xmm0, xmm0
               	vblendps	xmm0, xmm0, xmm1, 0x1   # xmm0 = xmm1[0],xmm0[1,2,3]
               	lea	rsi, [rsp + 0x330]
               	lea	rsi, [rsi + 4*rax]
               	vxorps	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
<L263>:
               	vaddps	zmm0, zmm0, zmmword ptr [rsi + 4*rdi - 0xc0]
               	vaddps	zmm1, zmm1, zmmword ptr [rsi + 4*rdi - 0x80]
               	vaddps	zmm2, zmm2, zmmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	zmm3, zmm3, zmmword ptr [rsi + 4*rdi]
               	add	rdi, 0x40
               	cmp	rdx, rdi
               	jne	 <L263>
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
               	vaddss	xmm1, xmm0, xmm1
               	cmp	rcx, rdx
               	je	 <L257>
               	test	cl, 0x38
               	je	 <L264>
<L262>:
               	movabs	rsi, 0x1ffffffc0
               	add	rsi, 0x38
               	and	rsi, rcx
               	vxorps	xmm0, xmm0, xmm0
               	vblendps	xmm0, xmm0, xmm1, 0x1   # xmm0 = xmm1[0],xmm0[1,2,3]
               	lea	rdi, [rsp + 4*rax]
               	add	rdi, 0x270
               	nop	word ptr cs:[rax + rax]
<L265>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
               	add	rdx, 0x8
               	cmp	rsi, rdx
               	jne	 <L265>
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm1, xmm0, xmm1
               	cmp	rcx, rsi
               	je	 <L257>
               	add	rax, rsi
               	jmp	 <L260>
<L264>:
               	add	rax, rdx
               	nop	word ptr [rax + rax]
<L260>:
               	mov	ecx, r13d
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x270
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L266>:
               	vaddss	xmm1, xmm1, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L266>
               	jmp	 <L257>
<L255>:
               	vmovss	xmm0, dword ptr  <memset+0x10b8>
               	jmp	 <L267>
               	nop
<L243>:
               	mov	ebp, dword ptr [rsp + 0x20]
               	sub	ebp, dword ptr [rsp]
               	je	 <L268>
               	vmovss	dword ptr [rsp + 4*rax + 0x274], xmm1
               	mov	r15, rbx
               	test	r13d, r13d
               	jns	 <L269>
               	jmp	 <L240>
<L268>:
               	mov	rdi, qword ptr [rsp + 0x140]
               	mov	rsi, qword ptr [rsp + 0x10]
               	mov	rcx, qword ptr [rsp + 0x8]
               	test	rcx, rcx
               	mov	r13, qword ptr [rsp + 0x160]
               	je	 <L270>
<L276>:
               	vmovdqa	xmmword ptr [rsp + 0x20], xmm1
               	add	rsi, -0x24
               	mov	r14, rdi
               	nop	word ptr cs:[rax + rax]
<L271>:
               	mov	rdi, r14
               	mov	rbx, rsi
               	vzeroupper
               	call	qword ptr [r14 + 0x28]
               	mov	rdi, rax
               	call	rdx
               	mov	rsi, rbx
               	add	r14, 0x30
               	add	rsi, -0x30
               	jne	 <L271>
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x20]
               	mov	rdi, qword ptr [rsp + 0x140]
               	test	rdi, rdi
               	mov	rbx, qword ptr [rsp + 0x158]
               	jne	 <L272>
<L275>:
               	cmp	ebx, 0x2a
               	je	 <L273>
               	jmp	 <L274>
<L232>:
               	vpxor	xmm1, xmm1, xmm1
               	mov	rdi, qword ptr [rsp + 0x140]
               	test	rdi, rdi
               	mov	rbx, qword ptr [rsp + 0x158]
               	jne	 <L272>
               	jmp	 <L275>
<L239>:
               	vpxor	xmm1, xmm1, xmm1
               	test	rcx, rcx
               	mov	r13, qword ptr [rsp + 0x160]
               	jne	 <L276>
<L270>:
               	mov	rbx, qword ptr [rsp + 0x158]
<L272>:
               	vmovdqa	xmmword ptr [rsp + 0x20], xmm1
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x20]
               	cmp	ebx, 0x2a
               	jne	 <L274>
<L273>:
               	cmp	r13d, 0x186a0
               	jne	 <L274>
               	vucomiss	xmm1, dword ptr  <memset+0x10b4>
               	jne	 <L277>
<L274>:
               	xor	eax, eax
               	add	rsp, 0x688
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L277>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x20], xmm1
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x20]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x87e0>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	int3
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

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
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

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(void*)>
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

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(void*)>
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

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cube@Evaluation.CRTP.Cube>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cube@Evaluation.CRTP.Cube>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Triangle@Evaluation.CRTP.Triangle>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Triangle@Evaluation.CRTP.Triangle>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Square@Evaluation.CRTP.Square>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Square@Evaluation.CRTP.Square>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Circle@Evaluation.CRTP.Circle>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Circle@Evaluation.CRTP.Circle>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Circle@Evaluation.CRTP.Circle>(void*)>:
               	lea	rax,  <memset+0x8478>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>(void*)>:
               	lea	rax,  <memset+0x8490>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>(void*)>:
               	lea	rax,  <memset+0x84a8>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Square@Evaluation.CRTP.Square>(void*)>:
               	lea	rax,  <memset+0x84c0>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Triangle@Evaluation.CRTP.Triangle>(void*)>:
               	lea	rax,  <memset+0x84d8>
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
               	lea	rax,  <memset+0x84f0>
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
               	lea	rax,  <memset+0x8508>
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
               	lea	rax,  <memset+0x8520>
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
               	lea	rax,  <memset+0x8538>
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
               	lea	rax,  <memset+0x8550>
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
               	lea	rax,  <memset+0x8568>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>:
               	lea	rax,  <memset+0x8580>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::source_location Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Head@Evaluation.CRTP.Head>(void*)>:
               	test	rdi, rdi
               	je	 <L0>
               	push	rax
               	mov	esi, 0x60
               	call	 <_ZdlPvm@plt>
               	add	rsp, 0x8
<L0>:
               	lea	rax,  <memset+0x8598>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x87b8>
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

<_ZdlPvm@plt>:
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
