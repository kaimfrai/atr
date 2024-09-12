
build/Evaluation/bin/TagATR:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x95a8>
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
               	mov	rax, qword ptr  <memset+0x95b8>
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
               	mov	rax, qword ptr  <memset+0x95c0>
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
               	cmp	qword ptr , 0x0 <memset+0x95c8>
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

<initializer for module Evaluation.TagATR.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW6Circle__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.Ellipse>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW7Ellipse__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.BasicShape>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.BasicShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW10BasicShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW10BasicShape__in_chrg>
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.Literals>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW8Literals__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW8Literals__in_chrg>
               	call	 <initializer for module ATR.Member.ProtoComposer>
               	call	 <initializer for module Meta.ID>
               	pop	rax
               	jmp	 <initializer for module Meta.Token.Type>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.Member.ProtoComposer>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW13ProtoComposer__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW13ProtoComposer__in_chrg>
               	call	 <initializer for module ATR.Member.PrefixGuard>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.Token.Type>
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

<initializer for module ATR.Member.PrefixGuard>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW11PrefixGuard__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW11PrefixGuard__in_chrg>
               	call	 <initializer for module Meta.Generic.ValueGuard>
               	pop	rax
               	jmp	 <initializer for module Meta.String.Hash>
               	int3
               	int3
               	int3

<initializer for module Meta.Generic.ValueGuard>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW7GenericW10ValueGuard__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW7GenericW10ValueGuard__in_chrg>
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

<initializer for module Meta.String.Hash>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6StringW4Hash__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6StringW4Hash__in_chrg>
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

<initializer for module Meta.ID:ID>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW2IDWP2ID__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW2IDWP2ID__in_chrg>
               	jmp	 <initializer for module Meta.String.Hash>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.ID:Make>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW2IDWP4Make__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW2IDWP4Make__in_chrg>
               	call	 <initializer for module Meta.ID:ID>
               	call	 <initializer for module Meta.String.Literal>
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

<initializer for module Meta.String.Literal>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6StringW7Literal__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6StringW7Literal__in_chrg>
               	call	 <initializer for module Meta.String.Chain>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.String.Chain>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6StringW5Chain__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6StringW5Chain__in_chrg>
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

<initializer for module Meta.ID:Alias>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW2IDWP5Alias__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW2IDWP5Alias__in_chrg>
               	call	 <initializer for module Meta.ID:Make>
               	call	 <initializer for module Meta.String.Literal>
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

<initializer for module Meta.ID:Literals>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW2IDWP8Literals__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW2IDWP8Literals__in_chrg>
               	call	 <initializer for module Meta.ID:Make>
               	call	 <initializer for module Meta.String.Literal>
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

<initializer for module Meta.ID:Concept>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW2IDWP7Concept__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW2IDWP7Concept__in_chrg>
               	jmp	 <initializer for module Meta.ID:ID>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.ID>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW2ID__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW2ID__in_chrg>
               	call	 <initializer for module Meta.ID:Alias>
               	call	 <initializer for module Meta.ID:Concept>
               	pop	rax
               	jmp	 <initializer for module Meta.ID:Literals>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Token.Type>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW5TokenW4Type__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW5TokenW4Type__in_chrg>
               	call	 <initializer for module Meta.Token.TypeID>
               	pop	rax
               	jmp	 <initializer for module Meta.Memory.Constraint>
               	int3
               	int3
               	int3

<initializer for module Meta.Token.TypeID>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW5TokenW6TypeID__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW5TokenW6TypeID__in_chrg>
               	jmp	 <initializer for module Meta.Memory.Constraint>
               	int3
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

<initializer for module Evaluation.TagATR.Rectangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW9Rectangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW9Rectangle__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.BasicShape>
               	call	 <initializer for module Evaluation.Dependency.Fraction>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3
               	int3
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

<initializer for module Evaluation.TagATR.Square>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW6Square__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW6Square__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.Rectangle>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW8Triangle__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.BasicShape>
               	call	 <initializer for module Evaluation.Dependency.Fraction>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Cube>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW4Cube__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW4Cube__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.Cuboid>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Cuboid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW6Cuboid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW6Cuboid__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.BasicBody>
               	call	 <initializer for module Evaluation.Dependency.Fraction>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.BasicBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW9BasicBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW9BasicBody__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.BasicShape>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW7Pyramid__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.BasicBody>
               	call	 <initializer for module Evaluation.Dependency.Fraction>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW6Sphere__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.Ellipsoid>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW9Ellipsoid__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.BasicBody>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW8Cylinder__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.BasicBody>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW4Cone__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.BasicBody>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW4Head__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.Sphere>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Interface>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW9Interface__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW9Interface__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.TaggedArray>
               	call	 <initializer for module ATR.District.ExcludingHeap>
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module Meta.Token.TypeID>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.TaggedArray>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW11TaggedArray__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW11TaggedArray__in_chrg>
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module ATR.Instance>
               	call	 <initializer for module Meta.Generic.RandomAccessIteratorBase>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.Token.Type>
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

<initializer for module ATR.Erase>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW5Erase__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW5Erase__in_chrg>
               	call	 <initializer for module ATR.Layout.Offset>
               	call	 <initializer for module Meta.Memory.Size>
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

<initializer for module ATR.Layout.Offset>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6LayoutW6Offset__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6LayoutW6Offset__in_chrg>
               	call	 <initializer for module ATR.Layout.TypeIndex>
               	call	 <initializer for module Meta.Auto.Ref.DataRange>
               	call	 <initializer for module Meta.Auto.Ref.RArray>
               	call	 <initializer for module Meta.Bit.Array>
               	call	 <initializer for module Meta.Bit.Field>
               	call	 <initializer for module Meta.Bit.Index>
               	call	 <initializer for module Meta.Bit.Reference>
               	call	 <initializer for module Meta.Memory.Constraint>
               	call	 <initializer for module Meta.Memory.Size.Arithmetic>
               	call	 <initializer for module Meta.Memory.Size.Cast>
               	call	 <initializer for module Meta.Memory.Size.Compare>
               	call	 <initializer for module Meta.Memory.Size.PointerArithmetic>
               	call	 <initializer for module Meta.Memory.Size.Scale>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3

<initializer for module ATR.Layout.TypeIndex>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6LayoutW9TypeIndex__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6LayoutW9TypeIndex__in_chrg>
               	call	 <initializer for module ATR.Layout.ErasureView>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module ATR.Layout.ErasureView>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6LayoutW11ErasureView__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6LayoutW11ErasureView__in_chrg>
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

<initializer for module Meta.Auto.Ref.DataRange>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW3RefW9DataRange__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW3RefW9DataRange__in_chrg>
               	call	 <initializer for module Meta.Auto.Ref.StaticCount>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Ref.StaticCount>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW3RefW11StaticCount__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW3RefW11StaticCount__in_chrg>
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

<initializer for module Meta.Auto.Ref.RArray>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW3RefW6RArray__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW3RefW6RArray__in_chrg>
               	jmp	 <initializer for module Meta.Auto.Ref.StaticCountArray>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Ref.StaticCountArray>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW3RefW16StaticCountArray__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW3RefW16StaticCountArray__in_chrg>
               	call	 <initializer for module Meta.Auto.Ref.ArrayView>
               	call	 <initializer for module Meta.Auto.Ref.DataRange>
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

<initializer for module Meta.Auto.Ref.ArrayView>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW3RefW9ArrayView__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW3RefW9ArrayView__in_chrg>
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

<initializer for module Meta.Bit.Array>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW5Array__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW5Array__in_chrg>
               	call	 <initializer for module Meta.Bit.ElementReference>
               	call	 <initializer for module Meta.Bit.Reference>
               	call	 <initializer for module Meta.Bit.Iterator>
               	call	 <initializer for module Meta.Bit.Field>
               	call	 <initializer for module Meta.Bit.Field.Arithmetic>
               	call	 <initializer for module Meta.Bit.Field.Compare>
               	call	 <initializer for module Meta.Bit.Index>
               	call	 <initializer for module Meta.Bit.Index.Compare>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.Arithmetic>
               	call	 <initializer for module Meta.Memory.Size.Cast>
               	call	 <initializer for module Meta.Memory.Size.Compare>
               	call	 <initializer for module Meta.Memory.Size.Scale>
               	call	 <initializer for module Meta.Arithmetic.Integer>
               	call	 <initializer for module Meta.Byte.Buffer>
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

<initializer for module Meta.Bit.ElementReference>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW16ElementReference__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW16ElementReference__in_chrg>
               	call	 <initializer for module Meta.Bit.Access>
               	call	 <initializer for module Meta.Bit.Index>
               	call	 <initializer for module Meta.Bit.Field.Compare>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Bit.Access>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW6Access__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW6Access__in_chrg>
               	call	 <initializer for module Meta.Byte.OutSpan>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.Compare>
               	call	 <initializer for module Meta.Memory.Size.Arithmetic>
               	call	 <initializer for module Meta.Arithmetic.Integer>
               	call	 <initializer for module Meta.Bit.Field>
               	call	 <initializer for module Meta.Bit.Field.Arithmetic>
               	call	 <initializer for module Meta.Bit.Field.LowestOne>
               	call	 <initializer for module Meta.Bit.Field.Shift>
               	call	 <initializer for module Meta.Byte.InSpan>
               	call	 <initializer for module Meta.Byte.Buffer>
               	call	 <initializer for module Meta.Bit.Index>
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

<initializer for module Meta.Byte.OutSpan>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4ByteW7OutSpan__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4ByteW7OutSpan__in_chrg>
               	call	 <initializer for module Meta.Byte.InSpan>
               	call	 <initializer for module Meta.Memory.Count>
               	call	 <initializer for module Meta.Memory.Count.Compare>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.PointerArithmetic>
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

<initializer for module Meta.Byte.InSpan>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4ByteW6InSpan__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4ByteW6InSpan__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.PointerArithmetic>
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

<initializer for module Meta.Memory.Size.PointerArithmetic>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW17PointerArithmetic__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW17PointerArithmetic__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Memory.Count.Compare>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW5CountW7Compare__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW5CountW7Compare__in_chrg>
               	call	 <initializer for module Meta.Memory.Count>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Memory.Size.Arithmetic>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW10Arithmetic__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW10Arithmetic__in_chrg>
               	jmp	 <initializer for module Meta.Memory.Size>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Arithmetic.Integer>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW10ArithmeticW7Integer__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW10ArithmeticW7Integer__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.Round>
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

<initializer for module Meta.Memory.Size.Round>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW5Round__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW5Round__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Math.Sign>
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

<initializer for module Meta.Math.Sign>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4MathW4Sign__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW4Sign__in_chrg>
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

<initializer for module Meta.Bit.Field>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW5Field__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW5Field__in_chrg>
               	call	 <initializer for module Meta.Arithmetic.Integer>
               	call	 <initializer for module Meta.Arithmetic.Sanitize>
               	call	 <initializer for module Meta.Bit.Index.Test>
               	call	 <initializer for module Meta.Bit.Index>
               	call	 <initializer for module Meta.Bit.Mask>
               	call	 <initializer for module Meta.Byte.Buffer>
               	call	 <initializer for module Meta.Memory.Alignment>
               	call	 <initializer for module Meta.Memory.Constraint>
               	call	 <initializer for module Meta.Memory.Size.Compare>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Arithmetic.Sanitize>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW10ArithmeticW8Sanitize__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW10ArithmeticW8Sanitize__in_chrg>
               	call	 <initializer for module Meta.Arithmetic.Integer>
               	call	 <initializer for module Meta.Arithmetic.IntegerFor>
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

<initializer for module Meta.Arithmetic.IntegerFor>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW10ArithmeticW10IntegerFor__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW10ArithmeticW10IntegerFor__in_chrg>
               	call	 <initializer for module Meta.Arithmetic.Integer>
               	call	 <initializer for module Meta.Math.Sign>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.Arithmetic>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Bit.Index.Test>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW5IndexW4Test__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW5IndexW4Test__in_chrg>
               	call	 <initializer for module Meta.Bit.Index>
               	call	 <initializer for module Meta.Bit.Index.Shift>
               	pop	rax
               	jmp	 <initializer for module Meta.Arithmetic.Integer>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Bit.Index>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW5Index__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW5Index__in_chrg>
               	call	 <initializer for module Meta.Arithmetic.Sanitize>
               	call	 <initializer for module Meta.Arithmetic.Literals>
               	call	 <initializer for module Meta.Arithmetic.Integer>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.Compare>
               	pop	rax
               	jmp	 <initializer for module Meta.Memory.Size.Arithmetic>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Arithmetic.Literals>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW10ArithmeticW8Literals__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW10ArithmeticW8Literals__in_chrg>
               	call	 <initializer for module Meta.Math.Power>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Math.Power>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4MathW5Power__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW5Power__in_chrg>
               	call	 <initializer for module Meta.Math.Sign>
               	call	 <initializer for module Meta.Math.Abs>
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

<initializer for module Meta.Math.Abs>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4MathW3Abs__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW3Abs__in_chrg>
               	call	 <initializer for module Meta.Math.Sign>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Bit.Index.Shift>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW5IndexW5Shift__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW5IndexW5Shift__in_chrg>
               	call	 <initializer for module Meta.Bit.Index>
               	call	 <initializer for module Meta.Arithmetic.Integer>
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

<initializer for module Meta.Bit.Mask>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW4Mask__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW4Mask__in_chrg>
               	call	 <initializer for module Meta.Arithmetic.Integer>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Meta.Memory.Size.Arithmetic>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Byte.Buffer>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4ByteW6Buffer__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4ByteW6Buffer__in_chrg>
               	call	 <initializer for module Meta.Byte.OutSpan>
               	call	 <initializer for module Meta.Byte.InSpan>
               	call	 <initializer for module Meta.Memory.Size>
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

<initializer for module Meta.Bit.Field.Arithmetic>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW5FieldW10Arithmetic__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW5FieldW10Arithmetic__in_chrg>
               	jmp	 <initializer for module Meta.Bit.Field>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Bit.Field.LowestOne>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW5FieldW9LowestOne__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW5FieldW9LowestOne__in_chrg>
               	call	 <initializer for module Meta.Bit.Field>
               	call	 <initializer for module Meta.Bit.Index>
               	pop	rax
               	jmp	 <initializer for module Meta.Bit.LowestOne>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Bit.LowestOne>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW9LowestOne__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW9LowestOne__in_chrg>
               	call	 <initializer for module Meta.Bit.Index>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Bit.Field.Shift>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW5FieldW5Shift__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW5FieldW5Shift__in_chrg>
               	call	 <initializer for module Meta.Bit.Field>
               	call	 <initializer for module Meta.Bit.Index.Shift>
               	call	 <initializer for module Meta.Bit.Index>
               	pop	rax
               	jmp	 <initializer for module Meta.Memory.Size.Arithmetic>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Bit.Field.Compare>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW5FieldW7Compare__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW5FieldW7Compare__in_chrg>
               	call	 <initializer for module Meta.Arithmetic.Integer>
               	call	 <initializer for module Meta.Bit.Field>
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

<initializer for module Meta.Bit.Reference>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW9Reference__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW9Reference__in_chrg>
               	call	 <initializer for module Meta.Bit.Access>
               	call	 <initializer for module Meta.Bit.Index>
               	call	 <initializer for module Meta.Memory.Constraint>
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

<initializer for module Meta.Bit.Iterator>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW8Iterator__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW8Iterator__in_chrg>
               	call	 <initializer for module Meta.Bit.Access>
               	call	 <initializer for module Meta.Bit.ElementReference>
               	call	 <initializer for module Meta.Bit.Index>
               	call	 <initializer for module Meta.Bit.Field.Compare>
               	call	 <initializer for module Meta.Bit.Field.LowestOne>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.Arithmetic>
               	call	 <initializer for module Meta.Memory.Size.Cast>
               	call	 <initializer for module Meta.Memory.Size.PointerArithmetic>
               	call	 <initializer for module Meta.Memory.Size.Scale>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Memory.Size.Cast>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW4Cast__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW4Cast__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Meta.Memory.Size.Arithmetic>
               	int3
               	int3
               	int3

<initializer for module Meta.Bit.Index.Compare>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW3BitW5IndexW7Compare__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW3BitW5IndexW7Compare__in_chrg>
               	call	 <initializer for module Meta.Bit.Index>
               	call	 <initializer for module Meta.Arithmetic.Integer>
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

<initializer for module ATR.Instance>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW8Instance__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW8Instance__in_chrg>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.Layout.Create>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module ATR.Member.Storage>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.String.Hash>
               	pop	rax
               	jmp	 <initializer for module Meta.Token.Type>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.Address>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW7Address__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW7Address__in_chrg>
               	call	 <initializer for module ATR.Dependency>
               	call	 <initializer for module Meta.ID>
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

<initializer for module ATR.Dependency>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW10Dependency__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW10Dependency__in_chrg>
               	call	 <initializer for module Meta.String.Hash>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module ATR.Layout.Create>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6LayoutW6Create__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6LayoutW6Create__in_chrg>
               	call	 <initializer for module ATR.Layout.Fork>
               	call	 <initializer for module ATR.Layout.Offset>
               	call	 <initializer for module ATR.Member.Constants>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Token.Type>
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

<initializer for module ATR.Layout.Fork>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6LayoutW4Fork__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6LayoutW4Fork__in_chrg>
               	call	 <initializer for module ATR.Layout.Offset>
               	call	 <initializer for module Meta.Memory.Constraint>
               	call	 <initializer for module Meta.Memory.Size.Arithmetic>
               	call	 <initializer for module Meta.Memory.Size.Compare>
               	pop	rax
               	jmp	 <initializer for module Meta.Memory.Size>
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.Member.Constants>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW9Constants__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW9Constants__in_chrg>
               	jmp	 <initializer for module Meta.Memory.Constraint>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.Member.Composition>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW11Composition__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW11Composition__in_chrg>
               	call	 <initializer for module ATR.Member.BitMemberIndexBuffer>
               	call	 <initializer for module ATR.Member.ByteMemberIndexBuffer>
               	call	 <initializer for module ATR.Member.Constants>
               	call	 <initializer for module ATR.Member.FlatComposer>
               	call	 <initializer for module ATR.Member.FlatComposition>
               	call	 <initializer for module ATR.Member.LayoutList>
               	call	 <initializer for module ATR.Member.ProtoComposer>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.Memory.Size.Arithmetic>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.String.Hash>
               	call	 <initializer for module Meta.Token.Type>
               	call	 <initializer for module Meta.Token.TypeID>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.Member.BitMemberIndexBuffer>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW20BitMemberIndexBuffer__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW20BitMemberIndexBuffer__in_chrg>
               	call	 <initializer for module ATR.Member.BitMemberIndexIterator>
               	call	 <initializer for module ATR.Member.Constants>
               	call	 <initializer for module Meta.Memory.Alignment>
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

<initializer for module ATR.Member.BitMemberIndexIterator>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW22BitMemberIndexIterator__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW22BitMemberIndexIterator__in_chrg>
               	call	 <initializer for module ATR.Member.Constants>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module ATR.Member.ByteMemberIndexBuffer>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW21ByteMemberIndexBuffer__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW21ByteMemberIndexBuffer__in_chrg>
               	call	 <initializer for module ATR.Member.AlignBuffer>
               	call	 <initializer for module ATR.Member.ByteMemberIndexIterator>
               	call	 <initializer for module ATR.Member.Constants>
               	call	 <initializer for module Meta.Memory.Alignment>
               	call	 <initializer for module Meta.Token.TypeID>
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

<initializer for module ATR.Member.AlignBuffer>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW11AlignBuffer__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW11AlignBuffer__in_chrg>
               	call	 <initializer for module ATR.Member.AlignBufferIterator>
               	call	 <initializer for module ATR.Member.AlignBufferView>
               	call	 <initializer for module ATR.Member.Constants>
               	call	 <initializer for module ATR.Member.CountedType>
               	call	 <initializer for module Meta.Memory.Alignment>
               	call	 <initializer for module Meta.Memory.Size>
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

<initializer for module ATR.Member.AlignBufferIterator>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW19AlignBufferIterator__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW19AlignBufferIterator__in_chrg>
               	call	 <initializer for module ATR.Member.Constants>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module ATR.Member.AlignBufferView>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW15AlignBufferView__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW15AlignBufferView__in_chrg>
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

<initializer for module ATR.Member.CountedType>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW11CountedType__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW11CountedType__in_chrg>
               	call	 <initializer for module ATR.Member.Constants>
               	pop	rax
               	jmp	 <initializer for module Meta.Token.TypeID>
               	int3
               	int3
               	int3

<initializer for module ATR.Member.ByteMemberIndexIterator>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW23ByteMemberIndexIterator__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW23ByteMemberIndexIterator__in_chrg>
               	call	 <initializer for module ATR.Member.Constants>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module ATR.Member.FlatComposer>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW12FlatComposer__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW12FlatComposer__in_chrg>
               	call	 <initializer for module ATR.Member.Constants>
               	call	 <initializer for module ATR.Member.FlatComposition>
               	call	 <initializer for module ATR.Member.PrefixGuard>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.String.Hash>
               	call	 <initializer for module Meta.Token.Type>
               	call	 <initializer for module Meta.Token.TypeID>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.Member.FlatComposition>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW15FlatComposition__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW15FlatComposition__in_chrg>
               	call	 <initializer for module ATR.Member.AlignBuffer>
               	call	 <initializer for module ATR.Member.Constants>
               	call	 <initializer for module ATR.Member.Info>
               	call	 <initializer for module Meta.Auto.Bit.Field>
               	call	 <initializer for module Meta.Memory.Size.Arithmetic>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.String.Hash>
               	call	 <initializer for module Meta.Token.Type>
               	call	 <initializer for module Meta.Token.TypeID>
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

<initializer for module ATR.Member.Info>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW4Info__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW4Info__in_chrg>
               	call	 <initializer for module Meta.Memory.Size.Compare>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Meta.Token.TypeID>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.Member.LayoutList>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW10LayoutList__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW10LayoutList__in_chrg>
               	call	 <initializer for module ATR.Member.AlignBufferView>
               	call	 <initializer for module ATR.Member.CountedType>
               	pop	rax
               	jmp	 <initializer for module Meta.Token.TypeID>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.Member.Storage>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6MemberW7Storage__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6MemberW7Storage__in_chrg>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module Meta.ID>
               	pop	rax
               	jmp	 <initializer for module Meta.String.Hash>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Generic.RandomAccessIteratorBase>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW7GenericW24RandomAccessIteratorBase__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW7GenericW24RandomAccessIteratorBase__in_chrg>
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

<initializer for module ATR.District.ExcludingHeap>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW8DistrictW13ExcludingHeap__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW8DistrictW13ExcludingHeap__in_chrg>
               	call	 <initializer for module ATR.District.Info>
               	call	 <initializer for module ATR.District.MoveHeapGuard>
               	call	 <initializer for module Meta.String.Hash>
               	call	 <initializer for module Meta.Token.Type>
               	pop	rax
               	jmp	 <initializer for module Meta.Token.TypeID>
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.District.Info>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW8DistrictW4Info__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW8DistrictW4Info__in_chrg>
               	call	 <initializer for module Meta.String.Hash>
               	call	 <initializer for module Meta.Token.Type>
               	call	 <initializer for module Meta.Token.TypeID>
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

<initializer for module ATR.District.MoveHeapGuard>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW8DistrictW13MoveHeapGuard__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW8DistrictW13MoveHeapGuard__in_chrg>
               	call	 <initializer for module ATR.District.Info>
               	call	 <initializer for module ATR.Layout.Create>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module Meta.Auto.Ref.PledgeCount>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Ref.PledgeCount>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW3RefW11PledgeCount__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW3RefW11PledgeCount__in_chrg>
               	call	 <initializer for module Meta.Auto.Ref.ArrayView>
               	call	 <initializer for module Meta.Auto.Ref.DataRange>
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

<initializer for module Evaluation.TagATR.ComputeVolume>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW13ComputeVolume__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW13ComputeVolume__in_chrg>
               	call	 <initializer for module Evaluation.TagATR.Product>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.Dependency>
               	call	 <initializer for module ATR.DependencyIDMap>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagATR.Product>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6TagATRW7Product__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW7Product__in_chrg>
               	jmp	 <initializer for module ATR.Dependency>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.DependencyIDMap>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW15DependencyIDMap__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW15DependencyIDMap__in_chrg>
               	call	 <initializer for module ATR.Dependency>
               	call	 <initializer for module ATR.Erase>
               	pop	rax
               	jmp	 <initializer for module Meta.String.Hash>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module ATR.Virtual.Dispatch>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW7VirtualW8Dispatch__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW7VirtualW8Dispatch__in_chrg>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.String.Literal>
               	call	 <initializer for module Meta.Token.Type>
               	call	 <initializer for module Meta.Token.TypeID>
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

<_GLOBAL__sub_I_InterfaceImpl.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.TagATR.Interface>
               	call	 <initializer for module Evaluation.Dependency.TaggedArray>
               	call	 <initializer for module ATR.District.ExcludingHeap>
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module Meta.Memory.Constraint>
               	call	 <initializer for module Evaluation.TagATR.Circle>
               	call	 <initializer for module Evaluation.TagATR.Ellipse>
               	call	 <initializer for module ATR.Literals>
               	call	 <initializer for module Evaluation.TagATR.Cone>
               	call	 <initializer for module Evaluation.TagATR.BasicBody>
               	call	 <initializer for module Evaluation.TagATR.Cube>
               	call	 <initializer for module Evaluation.TagATR.Cuboid>
               	call	 <initializer for module Evaluation.TagATR.Cylinder>
               	call	 <initializer for module Evaluation.TagATR.Ellipsoid>
               	call	 <initializer for module Evaluation.TagATR.Head>
               	call	 <initializer for module Evaluation.TagATR.Sphere>
               	call	 <initializer for module Evaluation.TagATR.Pyramid>
               	call	 <initializer for module Evaluation.TagATR.Rectangle>
               	call	 <initializer for module Evaluation.TagATR.Square>
               	call	 <initializer for module Evaluation.TagATR.Triangle>
               	call	 <initializer for module Evaluation.TagATR.ComputeVolume>
               	call	 <initializer for module ATR.Dependency>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.DependencyIDMap>
               	call	 <initializer for module ATR.Instance>
               	call	 <initializer for module ATR.Layout.Create>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module ATR.Member.Storage>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.Token.Type>
               	call	 <initializer for module ATR.Virtual.Dispatch>
               	pop	rax
               	jmp	 <initializer for module Meta.String.Literal>
               	nop	word ptr cs:[rax + rax]

<_GLOBAL__sub_I_TagATR.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.TagATR.Circle>
               	call	 <initializer for module Evaluation.TagATR.Ellipse>
               	call	 <initializer for module ATR.Literals>
               	call	 <initializer for module Evaluation.TagATR.Rectangle>
               	call	 <initializer for module Evaluation.TagATR.Square>
               	call	 <initializer for module Evaluation.TagATR.Triangle>
               	call	 <initializer for module Evaluation.TagATR.Cube>
               	call	 <initializer for module Evaluation.TagATR.Cuboid>
               	call	 <initializer for module Evaluation.TagATR.Pyramid>
               	call	 <initializer for module Evaluation.TagATR.BasicBody>
               	call	 <initializer for module Evaluation.TagATR.Sphere>
               	call	 <initializer for module Evaluation.TagATR.Ellipsoid>
               	call	 <initializer for module Evaluation.TagATR.Cylinder>
               	call	 <initializer for module Evaluation.TagATR.Cone>
               	call	 <initializer for module Evaluation.TagATR.Head>
               	call	 <initializer for module Evaluation.TagATR.Interface>
               	call	 <initializer for module Evaluation.Dependency.TaggedArray>
               	call	 <initializer for module ATR.District.ExcludingHeap>
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module Meta.Memory.Constraint>
               	call	 <initializer for module ATR.Instance>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.Layout.Create>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module ATR.Member.Storage>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.Token.Type>
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x6d8
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
               	movsx	ebp, byte ptr [rax]
               	add	ebp, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	edx, [rbp + 4*rbp]
               	movsx	ecx, cl
               	lea	ebp, [rcx + 2*rdx]
               	add	ebp, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movabs	r13, 0x180ec6d33cfd0aba
               	mov	ecx, ebp
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x150], rcx
               	lea	rdi, [rcx + 8*rax]
               	mov	rsi, qword ptr  <memset+0x95d0>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x5a8], rbx
               	movsxd	rcx, ebx
               	vpbroadcastq	ymm0, rcx
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0x13c0>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rdx, -0x61c8864680b583eb
               	add	rdx, rcx
               	shr	rdx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rdx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x13e0>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x13e8>
               	mov	qword ptr [rsp + 0x140], rax
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x280], ymm0
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
               	bt	r13, rax
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
               	mov	qword ptr [rsp + 0x2a0], r11
               	mov	qword ptr [rsp + 0x2a8], r9
               	mov	qword ptr [rsp + 0x2b0], rdi
               	mov	qword ptr [rsp + 0x2b8], rsi
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
               	bt	r13, r15
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
               	mov	qword ptr [rsp + 0x2c0], r14
               	mov	qword ptr [rsp + 0x2c8], rbx
               	mov	qword ptr [rsp + 0x2d0], r10
               	mov	qword ptr [rsp + 0x2d8], r8
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
               	bt	r13, rdi
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
               	mov	qword ptr [rsp + 0x2e0], r15
               	mov	qword ptr [rsp + 0x2e8], r11
               	mov	qword ptr [rsp + 0x2f0], r9
               	mov	qword ptr [rsp + 0x2f8], rsi
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
               	bt	r13, r14
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
               	mov	qword ptr [rsp + 0x300], rbx
               	mov	qword ptr [rsp + 0x308], r10
               	mov	qword ptr [rsp + 0x310], r8
               	mov	qword ptr [rsp + 0x318], rdi
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
               	bt	r13, r15
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
               	mov	qword ptr [rsp + 0x320], r14
               	mov	qword ptr [rsp + 0x328], r11
               	mov	qword ptr [rsp + 0x330], r9
               	mov	qword ptr [rsp + 0x338], rsi
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
               	bt	r13, r15
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
               	mov	qword ptr [rsp + 0x158], rbp
               	mov	qword ptr [rsp + 0x340], rbx
               	mov	qword ptr [rsp + 0x348], r10
               	mov	qword ptr [rsp + 0x350], r8
               	mov	qword ptr [rsp + 0x358], rdi
               	xor	esi, esi
               	xor	r14d, r14d
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x8], 0x0
               	mov	qword ptr [rsp + 0x128], 0x0
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
               	bt	r13, rsi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x128], rbx
               	xor	qword ptr [rsp + 0x8], r10
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
               	xor	qword ptr [rsp + 0x128], rbx
               	xor	qword ptr [rsp + 0x8], r10
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
               	xor	qword ptr [rsp + 0x128], rbx
               	xor	qword ptr [rsp + 0x8], r10
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
               	xor	qword ptr [rsp + 0x128], rbx
               	xor	qword ptr [rsp + 0x8], r10
               	xor	r12, r8
               	xor	r14, rdi
               	jmp	 <L87>
<L86>:
               	mov	r9, qword ptr [rsp + 0x128]
               	mov	qword ptr [rsp + 0x360], r9
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	qword ptr [rsp + 0x368], r8
               	mov	qword ptr [rsp + 0x370], r12
               	mov	qword ptr [rsp + 0x378], r14
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, r14
               	mov	qword ptr [rsp + 0x10], 0x0
               	mov	rdi, r12
               	mov	qword ptr [rsp + 0x120], 0x0
               	mov	qword ptr [rsp + 0x118], 0x0
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
               	bt	r13, r10
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x120], r8
               	xor	qword ptr [rsp + 0x10], rdi
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x120], r8
               	xor	qword ptr [rsp + 0x10], rdi
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x120], r8
               	xor	qword ptr [rsp + 0x10], rdi
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x120], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	rbx, rsi
               	jmp	 <L99>
<L98>:
               	mov	r9, qword ptr [rsp + 0x118]
               	mov	qword ptr [rsp + 0x380], r9
               	mov	r8, qword ptr [rsp + 0x120]
               	mov	qword ptr [rsp + 0x388], r8
               	mov	rdi, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x390], rdi
               	mov	qword ptr [rsp + 0x398], rbx
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x110], 0x0
               	mov	rsi, rbx
               	mov	qword ptr [rsp + 0x108], 0x0
               	mov	qword ptr [rsp + 0x100], 0x0
               	mov	qword ptr [rsp + 0xf8], 0x0
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L101>
<L100>:
               	bt	r13, r10
               	jae	 <L102>
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L111>
<L110>:
               	mov	r9, qword ptr [rsp + 0xf8]
               	mov	qword ptr [rsp + 0x3a0], r9
               	mov	r8, qword ptr [rsp + 0x100]
               	mov	qword ptr [rsp + 0x3a8], r8
               	mov	rdi, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0x3b0], rdi
               	mov	rsi, qword ptr [rsp + 0x110]
               	mov	qword ptr [rsp + 0x3b8], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xf0], 0x0
               	mov	qword ptr [rsp + 0xe8], 0x0
               	mov	qword ptr [rsp + 0xe0], 0x0
               	mov	qword ptr [rsp + 0xd8], 0x0
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
               	bt	r13, r10
               	jae	 <L114>
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
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
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
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
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
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
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L123>
<L122>:
               	mov	r9, qword ptr [rsp + 0xd8]
               	mov	qword ptr [rsp + 0x3c0], r9
               	mov	r8, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0x3c8], r8
               	mov	rdi, qword ptr [rsp + 0xe8]
               	mov	qword ptr [rsp + 0x3d0], rdi
               	mov	rsi, qword ptr [rsp + 0xf0]
               	mov	qword ptr [rsp + 0x3d8], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xd0], 0x0
               	mov	qword ptr [rsp + 0xc8], 0x0
               	mov	qword ptr [rsp + 0xc0], 0x0
               	mov	qword ptr [rsp + 0xb8], 0x0
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
               	bt	r13, r10
               	jae	 <L126>
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
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
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
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
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
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
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
               	jmp	 <L135>
<L134>:
               	mov	r9, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x3e0], r9
               	mov	r8, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0x3e8], r8
               	mov	rdi, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0x3f0], rdi
               	mov	rsi, qword ptr [rsp + 0xd0]
               	mov	qword ptr [rsp + 0x3f8], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xb0], 0x0
               	mov	qword ptr [rsp + 0xa8], 0x0
               	mov	qword ptr [rsp + 0xa0], 0x0
               	mov	qword ptr [rsp + 0x98], 0x0
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
               	bt	r13, r10
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
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
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
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
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
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
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L147>
<L146>:
               	mov	r9, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x400], r9
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	qword ptr [rsp + 0x408], r8
               	mov	rdi, qword ptr [rsp + 0xa8]
               	mov	qword ptr [rsp + 0x410], rdi
               	mov	rsi, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0x418], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x90], 0x0
               	mov	qword ptr [rsp + 0x88], 0x0
               	mov	qword ptr [rsp + 0x80], 0x0
               	mov	qword ptr [rsp + 0x78], 0x0
               	jmp	 <L148>
               	nop
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
               	bt	r13, r10
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L150>
<L149>:
               	xor	r10d, r10d
               	jmp	 <L151>
               	nop
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
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L153>
<L152>:
               	xor	r10d, r10d
               	jmp	 <L154>
               	nop
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
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L156>
<L155>:
               	xor	r10d, r10d
               	jmp	 <L157>
               	nop
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
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L159>
<L158>:
               	mov	r9, qword ptr [rsp + 0x78]
               	mov	qword ptr [rsp + 0x420], r9
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	qword ptr [rsp + 0x428], r8
               	mov	rdi, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x430], rdi
               	mov	rsi, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x438], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x70], 0x0
               	mov	qword ptr [rsp + 0x68], 0x0
               	mov	qword ptr [rsp + 0x60], 0x0
               	mov	qword ptr [rsp + 0x58], 0x0
               	jmp	 <L160>
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
               	bt	r13, r10
               	jae	 <L162>
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x70], rsi
               	jmp	 <L162>
<L161>:
               	xor	r10d, r10d
               	jmp	 <L163>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x70], rsi
               	jmp	 <L165>
<L164>:
               	xor	r10d, r10d
               	jmp	 <L166>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x70], rsi
               	jmp	 <L168>
<L167>:
               	xor	r10d, r10d
               	jmp	 <L169>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x70], rsi
               	jmp	 <L171>
<L170>:
               	mov	r9, qword ptr [rsp + 0x58]
               	mov	qword ptr [rsp + 0x440], r9
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	qword ptr [rsp + 0x448], r8
               	mov	rdi, qword ptr [rsp + 0x68]
               	mov	qword ptr [rsp + 0x450], rdi
               	mov	rsi, qword ptr [rsp + 0x70]
               	mov	qword ptr [rsp + 0x458], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x50], 0x0
               	mov	qword ptr [rsp + 0x48], 0x0
               	mov	qword ptr [rsp + 0x40], 0x0
               	mov	qword ptr [rsp + 0x38], 0x0
               	jmp	 <L172>
               	nop
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
               	bt	r13, r10
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x50], rsi
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
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x50], rsi
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
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x50], rsi
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
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x50], rsi
               	jmp	 <L183>
<L182>:
               	mov	qword ptr [rsp + 0x268], rbx
               	mov	qword ptr [rsp + 0x278], r14
               	mov	rbx, qword ptr [rsp + 0x38]
               	mov	qword ptr [rsp + 0x460], rbx
               	mov	r11, qword ptr [rsp + 0x40]
               	mov	qword ptr [rsp + 0x468], r11
               	mov	r10, qword ptr [rsp + 0x48]
               	mov	qword ptr [rsp + 0x470], r10
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	qword ptr [rsp + 0x478], r9
               	xor	r14d, r14d
               	xor	esi, esi
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x30], 0x0
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
               	bt	r13, r14
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x30], rbx
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
               	xor	qword ptr [rsp + 0x30], rbx
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
               	xor	qword ptr [rsp + 0x30], rbx
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
               	xor	qword ptr [rsp + 0x30], rbx
               	xor	r8, r11
               	xor	rdi, r10
               	xor	rsi, r9
               	jmp	 <L195>
<L194>:
               	mov	r10, qword ptr [rsp + 0x30]
               	mov	qword ptr [rsp + 0x480], r10
               	mov	qword ptr [rsp + 0x488], r8
               	mov	qword ptr [rsp + 0x490], rdi
               	mov	qword ptr [rsp + 0x498], rsi
               	xor	r11d, r11d
               	xor	r15d, r15d
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x130], 0x0
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
               	bt	r13, r11
               	jae	 <L198>
               	xor	r9, r10
               	xor	qword ptr [rsp + 0x130], r8
               	xor	r14, rdi
               	xor	r15, rsi
               	jmp	 <L198>
<L197>:
               	xor	r11d, r11d
               	jmp	 <L199>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x130], r8
               	xor	r14, rdi
               	xor	r15, rsi
               	jmp	 <L201>
<L200>:
               	xor	r11d, r11d
               	jmp	 <L202>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x130], r8
               	xor	r14, rdi
               	xor	r15, rsi
               	jmp	 <L204>
<L203>:
               	xor	r11d, r11d
               	jmp	 <L205>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x130], r8
               	xor	r14, rdi
               	xor	r15, rsi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x4a0], r9
               	mov	r8, qword ptr [rsp + 0x130]
               	mov	qword ptr [rsp + 0x4a8], r8
               	mov	qword ptr [rsp + 0x4b0], r14
               	mov	qword ptr [rsp + 0x4b8], r15
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, r15
               	mov	qword ptr [rsp + 0x28], 0x0
               	mov	rdi, r14
               	mov	qword ptr [rsp + 0x18], 0x0
               	mov	qword ptr [rsp + 0x20], 0x0
               	jmp	 <L208>
               	nop
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
               	bt	r13, r10
               	jae	 <L210>
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x28], rdi
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
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x28], rdi
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
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x28], rdi
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
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x28], rdi
               	xor	rbx, rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x260], r14
               	mov	qword ptr [rsp + 0x270], r12
               	mov	rsi, rbx
               	mov	rbp, r13
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	qword ptr [rsp + 0x4c0], r9
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x4c8], r8
               	mov	rdi, qword ptr [rsp + 0x28]
               	mov	qword ptr [rsp + 0x4d0], rdi
               	mov	qword ptr [rsp + 0x4d8], rbx
               	xor	r10d, r10d
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x258], rbx
               	xor	r14d, r14d
               	xor	r12d, r12d
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
               	bt	rbp, r10
               	jae	 <L222>
               	xor	rbx, r9
               	xor	r12, r8
               	xor	r14, rdi
               	xor	r13, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	jmp	 <L223>
               	nop
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
               	xor	r12, r8
               	xor	r14, rdi
               	xor	r13, rsi
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
               	xor	r12, r8
               	xor	r14, rdi
               	xor	r13, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	mov	r10, qword ptr [rsp + 0x8]
               	mov	rbp, qword ptr [rsp + 0x158]
               	jmp	 <L229>
               	nop	word ptr [rax + rax]
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
               	xor	r12, r8
               	xor	r14, rdi
               	xor	r13, rsi
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x4e0], rbx
               	mov	qword ptr [rsp + 0x4e8], r12
               	mov	qword ptr [rsp + 0x4f0], r14
               	mov	qword ptr [rsp + 0x4f8], r13
               	mov	dword ptr [rsp + 0x500], 0x0
               	lea	rax, [rsp + 0x280]
               	kxnorw	k1, k0, k0
               	vpmovzxbd	ymm0, qword ptr  <memset+0x13f0>
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm2, xmm2, xmm2
               	kxnorw	k2, k0, k0
               	vpgatherdq	zmm2 {k2}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm2, 0x2
               	vpaddq	zmm0, zmm0, zmm2
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm2, zmm0, 0x3
               	vpaddq	zmm7, zmm2, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x508], zmm7
               	vpmovsxwd	ymm0, xmmword ptr  <memset+0x1490>
               	vpgatherdq	zmm1 {k1}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm1, 0x2
               	vpaddq	zmm0, zmm0, zmm1
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm2, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x548], zmm2
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x488]
               	vpinsrq	xmm0, xmm0, qword ptr [rsp + 0x130], 0x1
               	mov	rcx, qword ptr [rsp + 0x18]
               	vpbroadcastq	ymm1, rcx
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, r12
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm8, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x588], ymm8
               	test	ebp, ebp
               	je	 <L232>
               	mov	qword ptr [rsp + 0x248], rbx
               	mov	qword ptr [rsp + 0x250], r15
               	vpbroadcastq	zmm0, rax
               	vpaddq	zmm3, zmm0, zmmword ptr  <memset+0x1400>
               	vpaddq	zmm4, zmm0, zmmword ptr  <memset+0x1440>
               	vpextrq	rax, xmm2, 0x1
               	vextracti128	xmm0, ymm2, 0x1
               	vmovq	rcx, xmm0
               	vmovq	rbx, xmm7
               	mov	r8, qword ptr [rsp + 0x150]
               	lea	rdx, [8*r8]
               	lea	rdx, [rdx + 4*rdx]
               	mov	rbp, qword ptr [rsp + 0x140]
               	mov	qword ptr [rsp + 0x160], rdx
               	lea	r15, [rbp + rdx]
               	mov	rdx, qword ptr [rsp + 0x280]
               	mov	qword ptr [rsp + 0x240], rdx
               	mov	rdx, qword ptr [rsp + 0x288]
               	mov	qword ptr [rsp + 0x238], rdx
               	mov	rdx, qword ptr [rsp + 0x290]
               	mov	qword ptr [rsp + 0x230], rdx
               	mov	rdx, qword ptr [rsp + 0x298]
               	mov	qword ptr [rsp + 0x228], rdx
               	mov	rdx, qword ptr [rsp + 0x2a8]
               	mov	qword ptr [rsp + 0x220], rdx
               	mov	rdx, qword ptr [rsp + 0x2a0]
               	mov	qword ptr [rsp + 0x218], rdx
               	mov	rdx, qword ptr [rsp + 0x2b0]
               	mov	qword ptr [rsp + 0x210], rdx
               	mov	rdx, qword ptr [rsp + 0x2b8]
               	mov	qword ptr [rsp + 0x208], rdx
               	mov	rdx, qword ptr [rsp + 0x2c8]
               	mov	qword ptr [rsp + 0x200], rdx
               	mov	rdx, qword ptr [rsp + 0x2c0]
               	mov	qword ptr [rsp + 0x1f8], rdx
               	neg	r8
               	vpbroadcastd	ymm5, dword ptr  <memset+0x14a0>
               	vmovdqa	xmm6, xmmword ptr  <memset+0x1480>
               	mov	rdx, qword ptr [rsp + 0x2d0]
               	mov	qword ptr [rsp + 0x1f0], rdx
               	mov	rdx, qword ptr [rsp + 0x2d8]
               	mov	qword ptr [rsp + 0x1e8], rdx
               	mov	rdx, qword ptr [rsp + 0x2e8]
               	mov	qword ptr [rsp + 0x1e0], rdx
               	mov	rdx, qword ptr [rsp + 0x2e0]
               	mov	qword ptr [rsp + 0x1d8], rdx
               	mov	rdx, qword ptr [rsp + 0x2f0]
               	mov	qword ptr [rsp + 0x1d0], rdx
               	mov	rdx, qword ptr [rsp + 0x2f8]
               	mov	qword ptr [rsp + 0x1c8], rdx
               	mov	rdx, qword ptr [rsp + 0x308]
               	mov	qword ptr [rsp + 0x1c0], rdx
               	mov	rdx, qword ptr [rsp + 0x300]
               	mov	qword ptr [rsp + 0x1b8], rdx
               	mov	rdx, qword ptr [rsp + 0x310]
               	mov	qword ptr [rsp + 0x1b0], rdx
               	mov	rdx, qword ptr [rsp + 0x318]
               	mov	qword ptr [rsp + 0x1a8], rdx
               	mov	rdx, qword ptr [rsp + 0x328]
               	mov	qword ptr [rsp + 0x1a0], rdx
               	mov	rdx, qword ptr [rsp + 0x320]
               	mov	qword ptr [rsp + 0x198], rdx
               	mov	rdx, qword ptr [rsp + 0x330]
               	mov	qword ptr [rsp + 0x190], rdx
               	mov	rdx, qword ptr [rsp + 0x338]
               	mov	qword ptr [rsp + 0x188], rdx
               	mov	rdx, qword ptr [rsp + 0x348]
               	mov	qword ptr [rsp + 0x180], rdx
               	mov	rdx, qword ptr [rsp + 0x340]
               	mov	qword ptr [rsp + 0x178], rdx
               	mov	rdx, qword ptr [rsp + 0x350]
               	mov	qword ptr [rsp + 0x170], rdx
               	mov	rdx, qword ptr [rsp + 0x358]
               	mov	qword ptr [rsp + 0x168], rdx
               	mov	rsi, -0x1
               	mov	rdi, rbp
               	mov	rbp, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x150], r8
               	vmovdqu64	zmmword ptr [rsp + 0x610], zmm3
               	vmovdqu64	zmmword ptr [rsp + 0x5d0], zmm4
               	jmp	 <L233>
               	nop	dword ptr [rax + rax]
<L236>:
               	vpsrlq	zmm7, zmm7, 0x8
               	vmovdqu64	zmmword ptr [rsp + 0x508], zmm7
               	vpsrlq	zmm2, zmm2, 0x8
               	vpsrlq	ymm8, ymm8, 0x8
<L237>:
               	vmovq	rbx, xmm7
               	vpextrq	rax, xmm2, 0x1
               	vextracti128	xmm0, ymm2, 0x1
               	vmovq	rcx, xmm0
               	vmovdqu64	zmmword ptr [rsp + 0x548], zmm2
               	vmovdqu	ymmword ptr [rsp + 0x588], ymm8
               	add	rdi, 0x28
               	lea	rdx, [r8 + rsi]
               	inc	rdx
               	inc	rsi
               	cmp	rdx, -0x1
               	je	 <L234>
<L233>:
               	vmovq	xmm0, rax
               	vmovq	xmm1, rcx
               	vpunpcklqdq	xmm0, xmm0, xmm1 # xmm0 = xmm0[0],xmm1[0]
               	vpshufb	xmm0, xmm0, xmm6
               	vmovdqu64	zmm1, zmmword ptr [rsp + 0x510]
               	vpmovqd	ymm1, zmm1
               	vpand	ymm1, ymm1, ymm5
               	vcvtdq2ps	ymm1, ymm1
               	vcvtdq2ps	xmm0, xmm0
               	movzx	eax, bl
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	bl, al
               	movzx	eax, bl
               	lea	rcx,  <memset+0x14bc>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	vmovdqu	ymmword ptr [rdi], ymm1
               	jmp	 <L235>
               	nop
               	vmovdqu	ymmword ptr [rdi], ymm1
               	vmovd	dword ptr [rdi + 0x20], xmm0
               	jmp	 <L235>
               	nop
               	vmovdqu	ymmword ptr [rdi], ymm1
               	vmovq	qword ptr [rdi + 0x20], xmm0
               	jmp	 <L235>
               	vmovdqu	ymmword ptr [rdi], ymm1
               	vextractps	dword ptr [rdi + 0x20], xmm0, 0x1
               	jmp	 <L235>
               	vmovdqu	ymmword ptr [rdi + 0x8], ymm1
               	mov	rax, rbp
               	mov	rbp, rdi
               	mov	edi, 0x20
               	mov	qword ptr [rsp + 0x148], rsi
               	mov	rsi, qword ptr  <memset+0x95d0>
               	mov	qword ptr [rsp + 0x8], r10
               	mov	qword ptr [rsp + 0x10], rax
               	vmovdqu64	zmmword ptr [rsp + 0x690], zmm7
               	vmovdqu64	zmmword ptr [rsp + 0x650], zmm2
               	vmovdqu	ymmword ptr [rsp + 0x5b0], ymm8
               	vzeroupper
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vmovdqu	ymm8, ymmword ptr [rsp + 0x5b0]
               	vmovdqu64	zmm2, zmmword ptr [rsp + 0x650]
               	vmovdqu64	zmm7, zmmword ptr [rsp + 0x690]
               	mov	rdi, rbp
               	vmovdqa	xmm6, xmmword ptr  <memset+0x1480>
               	vpbroadcastd	ymm5, dword ptr  <memset+0x14a0>
               	vmovdqu64	zmm4, zmmword ptr [rsp + 0x5d0]
               	vmovdqu64	zmm3, zmmword ptr [rsp + 0x610]
               	mov	rsi, qword ptr [rsp + 0x148]
               	mov	rbp, qword ptr [rsp + 0x10]
               	mov	r10, qword ptr [rsp + 0x8]
               	mov	r8, qword ptr [rsp + 0x150]
               	vmovdqu64	zmm0, zmmword ptr [rsp + 0x560]
               	vpmovqd	ymm0, zmm0
               	vpand	ymm0, ymm0, ymm5
               	vcvtdq2ps	ymm0, ymm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	mov	qword ptr [rdi], rax
               	nop	word ptr cs:[rax + rax]
<L235>:
               	mov	byte ptr [r15 + rsi + 0x1], bl
               	lea	eax, [rsi + 0x2]
               	mov	dword ptr [rsp + 0x500], eax
               	test	al, 0x7
               	jne	 <L236>
               	mov	rdx, qword ptr [rsp + 0x238]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x240]
               	mov	qword ptr [rsp + 0x8], rdi
               	mov	rdi, qword ptr [rsp + 0x230]
               	xor	rdi, rcx
               	mov	r9, qword ptr [rsp + 0x228]
               	xor	r9, rdx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x238], rdx
               	mov	qword ptr [rsp + 0x288], rdx
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x240], rcx
               	mov	qword ptr [rsp + 0x280], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x230], rdi
               	mov	qword ptr [rsp + 0x290], rdi
               	rorx	r9, r9, 0x13
               	mov	qword ptr [rsp + 0x228], r9
               	mov	qword ptr [rsp + 0x298], r9
               	mov	rcx, qword ptr [rsp + 0x220]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x218]
               	mov	rdi, qword ptr [rsp + 0x210]
               	xor	rdi, rdx
               	mov	r9, qword ptr [rsp + 0x208]
               	xor	r9, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x220], rcx
               	mov	qword ptr [rsp + 0x2a8], rcx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x218], rdx
               	mov	qword ptr [rsp + 0x2a0], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x210], rdi
               	mov	qword ptr [rsp + 0x2b0], rdi
               	rorx	r9, r9, 0x13
               	mov	qword ptr [rsp + 0x208], r9
               	mov	qword ptr [rsp + 0x2b8], r9
               	mov	rcx, qword ptr [rsp + 0x200]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1f8]
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	xor	rdi, rdx
               	mov	r9, qword ptr [rsp + 0x1e8]
               	xor	r9, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x200], rcx
               	mov	qword ptr [rsp + 0x2c8], rcx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x1f8], rdx
               	mov	qword ptr [rsp + 0x2c0], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x1f0], rdi
               	mov	qword ptr [rsp + 0x2d0], rdi
               	rorx	r9, r9, 0x13
               	mov	qword ptr [rsp + 0x1e8], r9
               	mov	qword ptr [rsp + 0x2d8], r9
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1d8]
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	xor	rdi, rdx
               	mov	r9, qword ptr [rsp + 0x1c8]
               	xor	r9, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x1e0], rcx
               	mov	qword ptr [rsp + 0x2e8], rcx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x1d8], rdx
               	mov	qword ptr [rsp + 0x2e0], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x1d0], rdi
               	mov	qword ptr [rsp + 0x2f0], rdi
               	rorx	r9, r9, 0x13
               	mov	qword ptr [rsp + 0x1c8], r9
               	mov	qword ptr [rsp + 0x2f8], r9
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1b8]
               	mov	rdi, qword ptr [rsp + 0x1b0]
               	xor	rdi, rdx
               	mov	r9, qword ptr [rsp + 0x1a8]
               	xor	r9, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x1c0], rcx
               	mov	qword ptr [rsp + 0x308], rcx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x1b8], rdx
               	mov	qword ptr [rsp + 0x300], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x1b0], rdi
               	mov	qword ptr [rsp + 0x310], rdi
               	rorx	r9, r9, 0x13
               	mov	qword ptr [rsp + 0x1a8], r9
               	mov	qword ptr [rsp + 0x318], r9
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x198]
               	mov	rdi, qword ptr [rsp + 0x190]
               	xor	rdi, rdx
               	mov	r9, qword ptr [rsp + 0x188]
               	xor	r9, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x1a0], rcx
               	mov	qword ptr [rsp + 0x328], rcx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x198], rdx
               	mov	qword ptr [rsp + 0x320], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x190], rdi
               	mov	qword ptr [rsp + 0x330], rdi
               	rorx	r9, r9, 0x13
               	mov	qword ptr [rsp + 0x188], r9
               	mov	qword ptr [rsp + 0x338], r9
               	mov	rcx, qword ptr [rsp + 0x180]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x178]
               	mov	rdi, qword ptr [rsp + 0x170]
               	xor	rdi, rdx
               	mov	r9, qword ptr [rsp + 0x168]
               	xor	r9, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x180], rcx
               	mov	qword ptr [rsp + 0x348], rcx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x178], rdx
               	mov	qword ptr [rsp + 0x340], rdx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x170], rdi
               	mov	qword ptr [rsp + 0x350], rdi
               	rorx	r9, r9, 0x13
               	mov	qword ptr [rsp + 0x168], r9
               	mov	qword ptr [rsp + 0x358], r9
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x270]
               	mov	rdi, qword ptr [rsp + 0x128]
               	xor	rdx, rdi
               	mov	rcx, qword ptr [rsp + 0x278]
               	xor	rcx, r10
               	xor	r10, rdx
               	mov	qword ptr [rsp + 0x368], r10
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x148], rsi
               	mov	qword ptr [rsp + 0x128], rdi
               	mov	qword ptr [rsp + 0x360], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x270], rdx
               	mov	qword ptr [rsp + 0x370], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x278], rcx
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	rsi, qword ptr [rsp + 0x120]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x118]
               	xor	rbp, rdi
               	mov	rcx, qword ptr [rsp + 0x268]
               	xor	rcx, rsi
               	xor	rsi, rbp
               	mov	qword ptr [rsp + 0x120], rsi
               	mov	qword ptr [rsp + 0x388], rsi
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x118], rdi
               	mov	qword ptr [rsp + 0x380], rdi
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x390], rbp
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x268], rcx
               	mov	qword ptr [rsp + 0x398], rcx
               	mov	rdi, qword ptr [rsp + 0x100]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x108]
               	mov	r11, qword ptr [rsp + 0xf8]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x110]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x100], rdi
               	mov	qword ptr [rsp + 0x3a8], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0xf8], r11
               	mov	qword ptr [rsp + 0x3a0], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x108], rdx
               	mov	qword ptr [rsp + 0x3b0], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x110], rcx
               	mov	qword ptr [rsp + 0x3b8], rcx
               	mov	rdi, qword ptr [rsp + 0xe0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xe8]
               	mov	r11, qword ptr [rsp + 0xd8]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0xe0], rdi
               	mov	qword ptr [rsp + 0x3c8], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0xd8], r11
               	mov	qword ptr [rsp + 0x3c0], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xe8], rdx
               	mov	qword ptr [rsp + 0x3d0], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	qword ptr [rsp + 0x3d8], rcx
               	mov	rdi, qword ptr [rsp + 0xc0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc8]
               	mov	r11, qword ptr [rsp + 0xb8]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0xd0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0xc0], rdi
               	mov	qword ptr [rsp + 0x3e8], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0xb8], r11
               	mov	qword ptr [rsp + 0x3e0], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xc8], rdx
               	mov	qword ptr [rsp + 0x3f0], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0xd0], rcx
               	mov	qword ptr [rsp + 0x3f8], rcx
               	mov	rdi, qword ptr [rsp + 0xa0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xa8]
               	mov	r11, qword ptr [rsp + 0x98]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0xa0], rdi
               	mov	qword ptr [rsp + 0x408], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x98], r11
               	mov	qword ptr [rsp + 0x400], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xa8], rdx
               	mov	qword ptr [rsp + 0x410], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	qword ptr [rsp + 0x418], rcx
               	mov	rdi, qword ptr [rsp + 0x80]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x88]
               	mov	r11, qword ptr [rsp + 0x78]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x90]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x80], rdi
               	mov	qword ptr [rsp + 0x428], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x78], r11
               	mov	qword ptr [rsp + 0x420], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x88], rdx
               	mov	qword ptr [rsp + 0x430], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x90], rcx
               	mov	qword ptr [rsp + 0x438], rcx
               	mov	rdi, qword ptr [rsp + 0x60]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	r11, qword ptr [rsp + 0x58]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x70]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x60], rdi
               	mov	qword ptr [rsp + 0x448], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x58], r11
               	mov	qword ptr [rsp + 0x440], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x68], rdx
               	mov	qword ptr [rsp + 0x450], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x70], rcx
               	mov	qword ptr [rsp + 0x458], rcx
               	mov	rdi, qword ptr [rsp + 0x40]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	r11, qword ptr [rsp + 0x38]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x50]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x40], rdi
               	mov	qword ptr [rsp + 0x468], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x38], r11
               	mov	qword ptr [rsp + 0x460], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x48], rdx
               	mov	qword ptr [rsp + 0x470], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x50], rcx
               	mov	qword ptr [rsp + 0x478], rcx
               	mov	rcx, qword ptr [rsp + 0x488]
               	mov	rax, qword ptr [rsp + 0x4a0]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x490]
               	mov	r11, qword ptr [rsp + 0x30]
               	xor	rsi, r11
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x498]
               	mov	qword ptr [rsp + 0x488], rdi
               	shl	rdx, 0x11
               	xor	rsi, rdx
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x30], r11
               	mov	qword ptr [rsp + 0x480], r11
               	mov	qword ptr [rsp + 0x490], rsi
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x498], rcx
               	mov	rdi, qword ptr [rsp + 0x130]
               	mov	rcx, rdi
               	mov	rsi, qword ptr [rsp + 0x260]
               	xor	rsi, rax
               	mov	rdx, qword ptr [rsp + 0x250]
               	xor	rdx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x4a8], rdi
               	xor	rax, rdx
               	mov	qword ptr [rsp + 0x4a0], rax
               	shl	rcx, 0x11
               	xor	rsi, rcx
               	mov	rbx, qword ptr [rsp + 0x18]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x28]
               	mov	r8, qword ptr [rsp + 0x20]
               	xor	r11, r8
               	mov	rcx, qword ptr [rsp + 0x258]
               	xor	rcx, rbx
               	xor	rbx, r11
               	xor	r11, rax
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	r9, r10
               	mov	r10, r13
               	mov	r13, qword ptr [rsp + 0x248]
               	xor	r14, r13
               	xor	r10, r12
               	xor	r12, r14
               	xor	r14, rax
               	mov	qword ptr [rsp + 0x260], rsi
               	mov	qword ptr [rsp + 0x4b0], rsi
               	mov	rsi, qword ptr [rsp + 0x148]
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0x250], rdx
               	mov	qword ptr [rsp + 0x4b8], rdx
               	mov	qword ptr [rsp + 0x4c8], rbx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x20], r8
               	mov	qword ptr [rsp + 0x4c0], r8
               	mov	r8, qword ptr [rsp + 0x150]
               	mov	qword ptr [rsp + 0x28], r11
               	mov	qword ptr [rsp + 0x4d0], r11
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x258], rcx
               	mov	qword ptr [rsp + 0x4d8], rcx
               	mov	qword ptr [rsp + 0x4e8], r12
               	xor	r13, r10
               	mov	qword ptr [rsp + 0x248], r13
               	mov	qword ptr [rsp + 0x4e0], r13
               	mov	r13, r10
               	mov	r10, r9
               	mov	qword ptr [rsp + 0x4f0], r14
               	rorx	r13, r13, 0x13
               	mov	qword ptr [rsp + 0x4f8], r13
               	kxnorw	k1, k0, k0
               	vpxor	xmm0, xmm0, xmm0
               	vpgatherqq	zmm0 {k1}, zmmword ptr [1*zmm3]
               	vpsllq	zmm1, zmm0, 0x2
               	vpaddq	zmm0, zmm1, zmm0
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm7, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x508], zmm7
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x488]
               	kxnorw	k1, k0, k0
               	vpxor	xmm1, xmm1, xmm1
               	vpgatherqq	zmm1 {k1}, zmmword ptr [1*zmm4]
               	vpsllq	zmm2, zmm1, 0x2
               	vpaddq	zmm1, zmm2, zmm1
               	vprolq	zmm1, zmm1, 0x7
               	vpsllq	zmm2, zmm1, 0x3
               	vpaddq	zmm2, zmm2, zmm1
               	mov	qword ptr [rsp + 0x130], rdi
               	vpinsrq	xmm0, xmm0, rdi, 0x1
               	mov	rdi, qword ptr [rsp + 0x8]
               	mov	qword ptr [rsp + 0x18], rbx
               	vpbroadcastq	ymm1, rbx
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, r12
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm8, ymm1, ymm0
               	jmp	 <L237>
<L234>:
               	mov	rbp, qword ptr [rsp + 0x158]
               	test	ebp, ebp
               	je	 <L238>
               	mov	qword ptr [rsp + 0x148], rsi
               	movabs	rbx, 0x1ffffffc0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu64	zmmword ptr [rsp + 0x2c0], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x280], zmm0
               	lea	r13,  <memset+0x14f0>
               	vmovss	xmm4, dword ptr  <memset+0x14a8>
               	vpxor	xmm5, xmm5, xmm5
               	vmovss	xmm6, dword ptr  <memset+0x14b0>
               	vmovss	xmm7, dword ptr  <memset+0x14ac>
               	vmovss	xmm8, dword ptr  <memset+0x14b8>
               	vmovss	xmm9, dword ptr  <memset+0x14a4>
               	mov	rax, qword ptr [rsp + 0x140]
               	jmp	 <L239>
               	nop	word ptr cs:[rax + rax]
<L240>:
               	vmovss	xmm0, dword ptr [rsp + 0x284]
               	vmovss	dword ptr [rsp + 0x288], xmm0
               	mov	edx, 0x1
<L256>:
               	mov	eax, edx
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x280]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovss	xmm9, dword ptr  <memset+0x14a4>
               	vmovss	xmm8, dword ptr  <memset+0x14b8>
               	vmovss	xmm7, dword ptr  <memset+0x14ac>
               	vmovss	xmm6, dword ptr  <memset+0x14b0>
               	vpxor	xmm5, xmm5, xmm5
               	vmovss	xmm4, dword ptr  <memset+0x14a8>
               	mov	rax, r14
               	mov	r15, r12
<L239>:
               	blsi	ecx, ebp
               	lea	rdx, [rcx + 4*rcx]
               	lea	r14, [rax + 8*rdx]
               	lea	r12, [r15 + rcx]
               	test	ecx, ecx
               	je	 <L240>
               	mov	esi, 0x1
               	xor	r9d, r9d
               	mov	edi, 0x1
               	jmp	 <L241>
               	nop	dword ptr [rax]
<L247>:
               	mov	edi, edx
               	movsxd	r8, edx
               	vmovss	dword ptr [rsp + 4*r8 + 0x280], xmm0
               	add	rax, 0x28
               	inc	r15
               	mov	r9d, 0xfffffffe
               	sub	r9d, esi
               	inc	esi
               	lzcnt	r10d, esi
               	popcnt	r9d, r9d
               	sub	r9d, r10d
               	cmp	rax, r14
               	je	 <L242>
<L241>:
               	mov	edx, r9d
               	movzx	r8d, byte ptr [r15]
               	movsxd	r8, dword ptr [r13 + 4*r8]
               	add	r8, r13
               	jmp	r8
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, xmm4
               	jmp	 <L243>
               	vmulss	xmm0, xmm8, dword ptr [rax + 0x1c]
               	jmp	 <L244>
               	vmulss	xmm0, xmm6, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L243>
               	vmovss	xmm0, dword ptr [rax + 0x24]
               	jmp	 <L245>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, xmm4
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L243>
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	jmp	 <L243>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	jmp	 <L243>
               	vmulss	xmm0, xmm7, dword ptr [rax + 0x1c]
<L244>:
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
               	jmp	 <L243>
               	vmulss	xmm0, xmm4, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L243>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	jmp	 <L246>
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
               	jmp	 <L243>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm9, xmm0
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L243>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
<L245>:
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm8, xmm1
<L246>:
               	vmulss	xmm0, xmm1, xmm0
<L243>:
               	mov	r9d, edx
               	sub	r9d, edi
               	jl	 <L247>
               	movsxd	rdi, edi
               	cmp	r9d, 0x7
               	jb	 <L248>
               	lea	r8, [r9 + 0x1]
               	cmp	r9d, 0x3f
               	jae	 <L249>
               	xor	r9d, r9d
               	jmp	 <L250>
<L249>:
               	mov	r9, r8
               	and	r9, rbx
               	vpblendd	xmm0, xmm5, xmm0, 0x1   # xmm0 = xmm0[0],xmm5[1,2,3]
               	lea	r10, [rsp + 0x340]
               	lea	r10, [r10 + 4*rdi]
               	vpxor	xmm1, xmm1, xmm1
               	xor	r11d, r11d
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	word ptr cs:[rax + rax]
<L251>:
               	vaddps	zmm0, zmm0, zmmword ptr [r10 + 4*r11 - 0xc0]
               	vaddps	zmm1, zmm1, zmmword ptr [r10 + 4*r11 - 0x80]
               	vaddps	zmm2, zmm2, zmmword ptr [r10 + 4*r11 - 0x40]
               	vaddps	zmm3, zmm3, zmmword ptr [r10 + 4*r11]
               	add	r11, 0x40
               	cmp	r9, r11
               	jne	 <L251>
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
               	cmp	r8, r9
               	je	 <L247>
               	test	r8b, 0x38
               	je	 <L252>
<L250>:
               	lea	r10, [rbx + 0x38]
               	and	r10, r8
               	vpblendd	xmm0, xmm5, xmm0, 0x1   # xmm0 = xmm0[0],xmm5[1,2,3]
               	lea	r11, [rsp + 4*rdi]
               	add	r11, 0x280
               	nop	dword ptr [rax]
<L253>:
               	vaddps	ymm0, ymm0, ymmword ptr [r11 + 4*r9]
               	add	r9, 0x8
               	cmp	r10, r9
               	jne	 <L253>
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	r8, r10
               	je	 <L247>
               	add	rdi, r10
               	jmp	 <L248>
<L252>:
               	add	rdi, r9
               	nop	dword ptr [rax + rax]
<L248>:
               	mov	r8d, edx
               	sub	r8d, edi
               	inc	r8d
               	lea	rdi, [rsp + 4*rdi]
               	add	rdi, 0x280
               	xor	r9d, r9d
               	nop	word ptr [rax + rax]
<L254>:
               	vaddss	xmm0, xmm0, dword ptr [rdi + 4*r9]
               	inc	r9
               	cmp	r8d, r9d
               	jne	 <L254>
               	jmp	 <L247>
               	nop	word ptr cs:[rax + rax]
<L242>:
               	sub	ebp, ecx
               	je	 <L255>
               	vmovss	dword ptr [rsp + 4*r8 + 0x284], xmm0
               	mov	rax, r14
               	mov	r15, r12
               	test	edx, edx
               	jns	 <L256>
               	jmp	 <L239>
<L255>:
               	mov	rbp, qword ptr [rsp + 0x158]
               	mov	rax, qword ptr [rsp + 0x160]
               	mov	rsi, qword ptr [rsp + 0x148]
               	jmp	 <L257>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	cmp	qword ptr [rsp + 0x140], 0x0
               	je	 <L258>
<L262>:
               	vmovdqa	xmmword ptr [rsp + 0x130], xmm0
               	mov	rdi, qword ptr [rsp + 0x140]
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x130]
<L258>:
               	cmp	dword ptr [rsp + 0x5a8], 0x2a
               	jne	 <L259>
               	cmp	ebp, 0x186a0
               	jne	 <L259>
               	vucomiss	xmm0, dword ptr  <memset+0x14b4>
               	jne	 <L260>
<L259>:
               	xor	eax, eax
               	add	rsp, 0x6d8
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
               	mov	rax, qword ptr [rsp + 0x160]
<L257>:
               	mov	r15, qword ptr [rsp + 0x140]
               	mov	rbx, r15
               	add	rbx, rax
               	mov	r14, -0x1
               	vmovdqa	xmmword ptr [rsp + 0x130], xmm0
               	jmp	 <L261>
               	nop
<L263>:
               	inc	r14
               	add	r15, 0x28
               	cmp	rsi, r14
               	je	 <L262>
<L261>:
               	cmp	byte ptr [rbx + r14 + 0x1], 0xc
               	jne	 <L263>
               	mov	rdi, qword ptr [r15]
               	test	rdi, rdi
               	je	 <L263>
               	mov	r12, rsi
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x130]
               	mov	rsi, r12
               	mov	qword ptr [r15], 0x0
               	jmp	 <L263>
<L260>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x130], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x130]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x95d8>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x95b0>
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

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
               	push	0x5
               	jmp	 <.plt>
