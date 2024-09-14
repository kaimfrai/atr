
build/Evaluation/bin/SOAATR:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x8368>
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
               	mov	rax, qword ptr  <memset+0x8378>
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
               	mov	rax, qword ptr  <memset+0x8380>
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
               	cmp	qword ptr , 0x0 <memset+0x8388>
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

<initializer for module Evaluation.SOAATR.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW6Circle__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.Ellipse>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAATR.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW7Ellipse__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.BasicShape>
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

<initializer for module Evaluation.SOAATR.BasicShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW10BasicShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW10BasicShape__in_chrg>
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

<initializer for module Evaluation.SOAATR.ComputeVolume>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW13ComputeVolume__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW13ComputeVolume__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.Product>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.Dependency>
               	call	 <initializer for module ATR.DependencyIDMap>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAATR.Product>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW7Product__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW7Product__in_chrg>
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

<initializer for module Evaluation.SOAATR.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW4Cone__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.BasicBody>
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

<initializer for module Evaluation.SOAATR.BasicBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW9BasicBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW9BasicBody__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.BasicShape>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAATR.Cube>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW4Cube__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW4Cube__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.Cuboid>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAATR.Cuboid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW6Cuboid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW6Cuboid__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.BasicBody>
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

<initializer for module Evaluation.SOAATR.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW8Cylinder__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.BasicBody>
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

<initializer for module Evaluation.SOAATR.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW9Ellipsoid__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.BasicBody>
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

<initializer for module Evaluation.SOAATR.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW4Head__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.Sphere>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAATR.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW6Sphere__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.Ellipsoid>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAATR.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW7Pyramid__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.BasicBody>
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

<initializer for module Evaluation.SOAATR.Rectangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW9Rectangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW9Rectangle__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.BasicShape>
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

<initializer for module Evaluation.SOAATR.Square>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW6Square__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW6Square__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.Rectangle>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAATR.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW8Triangle__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.BasicShape>
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

<initializer for module Evaluation.SOAATR.Interface>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW6SOAATRW9Interface__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6SOAATRW9Interface__in_chrg>
               	call	 <initializer for module Evaluation.SOAATR.Circle>
               	call	 <initializer for module Evaluation.SOAATR.Cone>
               	call	 <initializer for module Evaluation.SOAATR.Cube>
               	call	 <initializer for module Evaluation.SOAATR.Cuboid>
               	call	 <initializer for module Evaluation.SOAATR.Cylinder>
               	call	 <initializer for module Evaluation.SOAATR.Ellipse>
               	call	 <initializer for module Evaluation.SOAATR.Ellipsoid>
               	call	 <initializer for module Evaluation.SOAATR.Head>
               	call	 <initializer for module Evaluation.SOAATR.Pyramid>
               	call	 <initializer for module Evaluation.SOAATR.Rectangle>
               	call	 <initializer for module Evaluation.SOAATR.Sphere>
               	call	 <initializer for module Evaluation.SOAATR.Square>
               	call	 <initializer for module Evaluation.SOAATR.Triangle>
               	call	 <initializer for module ATR.District.ExcludingArray>
               	call	 <initializer for module ATR.Instance>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module Meta.ID>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module ATR.District.ExcludingArray>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW8DistrictW14ExcludingArray__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW8DistrictW14ExcludingArray__in_chrg>
               	call	 <initializer for module ATR.District.Info>
               	call	 <initializer for module ATR.District.MoveArrayGuard>
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

<initializer for module ATR.District.MoveArrayGuard>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW8DistrictW14MoveArrayGuard__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW8DistrictW14MoveArrayGuard__in_chrg>
               	call	 <initializer for module ATR.District.Info>
               	call	 <initializer for module ATR.Layout.Create>
               	call	 <initializer for module ATR.Layout.Fork>
               	call	 <initializer for module ATR.Layout.Offset>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module ATR.Virtual.InstructionBuffer>
               	call	 <initializer for module ATR.Virtual.UnionCall>
               	call	 <initializer for module Meta.Auto.Simd.Array>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Generic.RandomAccessIteratorBase>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.Memory.Size.Scale>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Token.Type>
               	pop	rax
               	jmp	 <initializer for module Std>
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

<initializer for module ATR.Virtual.InstructionBuffer>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW7VirtualW17InstructionBuffer__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW7VirtualW17InstructionBuffer__in_chrg>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module ATR.Layout.Create>
               	call	 <initializer for module ATR.Layout.Offset>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module Meta.ID>
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

<initializer for module ATR.Virtual.UnionCall>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW7VirtualW9UnionCall__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW7VirtualW9UnionCall__in_chrg>
               	call	 <initializer for module ATR.Virtual.InstructionBuffer>
               	call	 <initializer for module Meta.Auto.Simd.ArrayCeil>
               	call	 <initializer for module Meta.Auto.Simd.Fill>
               	call	 <initializer for module Meta.Auto.Simd.Tag>
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

<initializer for module Meta.Auto.Simd.ArrayCeil>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW9ArrayCeil__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW9ArrayCeil__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Fill>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW4Fill__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW4Fill__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt32>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
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

<initializer for module Meta.Auto.Simd.Array>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Array__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Array__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	pop	rax
               	jmp	 <initializer for module Std>
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

<_GLOBAL__sub_I_InterfaceImpl.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.SOAATR.Interface>
               	call	 <initializer for module Evaluation.SOAATR.Circle>
               	call	 <initializer for module Evaluation.SOAATR.Cone>
               	call	 <initializer for module Evaluation.SOAATR.Cube>
               	call	 <initializer for module Evaluation.SOAATR.Cuboid>
               	call	 <initializer for module Evaluation.SOAATR.Cylinder>
               	call	 <initializer for module Evaluation.SOAATR.Ellipse>
               	call	 <initializer for module Evaluation.SOAATR.Ellipsoid>
               	call	 <initializer for module Evaluation.SOAATR.Head>
               	call	 <initializer for module Evaluation.SOAATR.Pyramid>
               	call	 <initializer for module Evaluation.SOAATR.Rectangle>
               	call	 <initializer for module Evaluation.SOAATR.Sphere>
               	call	 <initializer for module Evaluation.SOAATR.Square>
               	call	 <initializer for module Evaluation.SOAATR.Triangle>
               	call	 <initializer for module ATR.District.ExcludingArray>
               	call	 <initializer for module ATR.Instance>
               	call	 <initializer for module ATR.Member.Composition>
               	pop	rax
               	jmp	 <initializer for module Meta.ID>
               	nop	dword ptr [rax]

<_GLOBAL__sub_I_SOAATR.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.SOAATR.Circle>
               	call	 <initializer for module Evaluation.SOAATR.Ellipse>
               	call	 <initializer for module ATR.Literals>
               	call	 <initializer for module Evaluation.SOAATR.ComputeVolume>
               	call	 <initializer for module ATR.Dependency>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.DependencyIDMap>
               	call	 <initializer for module Evaluation.SOAATR.Cone>
               	call	 <initializer for module Evaluation.SOAATR.BasicBody>
               	call	 <initializer for module Evaluation.SOAATR.Cube>
               	call	 <initializer for module Evaluation.SOAATR.Cuboid>
               	call	 <initializer for module Evaluation.SOAATR.Cylinder>
               	call	 <initializer for module Evaluation.SOAATR.Ellipsoid>
               	call	 <initializer for module Evaluation.SOAATR.Head>
               	call	 <initializer for module Evaluation.SOAATR.Sphere>
               	call	 <initializer for module Evaluation.SOAATR.Pyramid>
               	call	 <initializer for module Evaluation.SOAATR.Rectangle>
               	call	 <initializer for module Evaluation.SOAATR.Square>
               	call	 <initializer for module Evaluation.SOAATR.Triangle>
               	call	 <initializer for module Evaluation.SOAATR.Interface>
               	call	 <initializer for module ATR.District.ExcludingArray>
               	call	 <initializer for module ATR.Instance>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module ATR.District.MoveArrayGuard>
               	call	 <initializer for module ATR.District.Info>
               	call	 <initializer for module ATR.Layout.Create>
               	call	 <initializer for module ATR.Layout.Fork>
               	call	 <initializer for module ATR.Layout.Offset>
               	call	 <initializer for module ATR.Virtual.InstructionBuffer>
               	call	 <initializer for module ATR.Virtual.UnionCall>
               	call	 <initializer for module Meta.Auto.Simd.Array>
               	call	 <initializer for module Meta.Memory.Size.Scale>
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

<main>:
               	push	rbp
               	mov	rbp, rsp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	and	rsp, -0x40
               	sub	rsp, 0x640
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r15, byte ptr [rcx]
               	add	r15, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
<L1>:
               	lea	rsi, [r15 + 4*r15]
               	movsx	rdx, dl
               	lea	r15, [rdx + 2*rsi]
               	add	r15, -0x30
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	rdx, byte ptr [rax]
               	add	rdx, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop
<L3>:
               	lea	rdx, [rdx + 4*rdx]
               	movsx	rcx, cl
               	lea	rdx, [rcx + 2*rdx]
               	add	rdx, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	shl	rdx, 0x3
               	mov	qword ptr [rsp + 0xe8], rdx
               	mov	r14d, edx
               	lea	rax, [r14 + 4*r14]
               	mov	qword ptr [rsp + 0x28], rax
               	lea	rsi, [r14 + 8*rax]
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	qword ptr [rsp + 0xc0], rax
               	mov	esi, 0xaaaaaaab
               	mov	qword ptr [rsp + 0xd0], r14
               	imul	rsi, r14
               	shr	rsi, 0x1e
               	and	rsi, -0x20
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	qword ptr [rsp + 0x180], rax
               	vpbroadcastq	ymm0, r15
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0x13a0>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rax, -0x61c8864680b583eb
               	add	rax, r15
               	shr	rax, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rax, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x1400>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x1410>
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovq	rax, xmm0
               	vpextrq	rcx, xmm0, 0x1
               	vextracti128	xmm1, ymm0, 0x1
               	vmovq	rdx, xmm1
               	vpextrq	rsi, xmm1, 0x1
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x48], 0x0
               	mov	qword ptr [rsp + 0x70], 0x0
               	xor	r9d, r9d
               	xor	r12d, r12d
               	jmp	 <L4>
<L6>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rorx	rsi, rsi, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L5>
<L4>:
               	bt	rbx, rdi
               	jae	 <L6>
               	xor	r12, rax
               	xor	r9, rcx
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x48], rsi
               	jmp	 <L6>
<L5>:
               	xor	edi, edi
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
<L9>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rorx	rsi, rsi, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L8>
<L7>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L9>
               	xor	r12, rax
               	xor	r9, rcx
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x48], rsi
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	dword ptr [rax + rax]
<L12>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rorx	rsi, rsi, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L11>
<L10>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L12>
               	xor	r12, rax
               	xor	r9, rcx
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x48], rsi
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop	dword ptr [rax + rax]
<L15>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rorx	rsi, rsi, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	r12, rax
               	xor	r9, rcx
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x48], rsi
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0x188], r15
               	xor	edi, edi
               	xor	r10d, r10d
               	mov	rax, qword ptr [rsp + 0x48]
               	xor	r15d, r15d
               	mov	rcx, qword ptr [rsp + 0x70]
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x108], r9
               	mov	rdx, r9
               	mov	rsi, r12
               	xor	r8d, r8d
               	movabs	r9, 0x180ec6d33cfd0aba
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
<L18>:
               	xor	r8, rsi
               	mov	rbx, r8
               	xor	r13, rdx
               	xor	r15, rcx
               	xor	r10, rax
<L19>:
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
               	mov	r8, rbx
               	je	 <L17>
<L16>:
               	bt	r9, rdi
               	jb	 <L18>
               	mov	rbx, r8
               	jmp	 <L19>
<L17>:
               	xor	edi, edi
               	movabs	r9, -0x2a59ed990f36c6d4
               	jmp	 <L20>
<L22>:
               	xor	r8, rsi
               	mov	rbx, r8
               	xor	r13, rdx
               	xor	r15, rcx
               	xor	r10, rax
<L23>:
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
               	mov	r8, rbx
               	je	 <L21>
<L20>:
               	bt	r9, rdi
               	jb	 <L22>
               	mov	rbx, r8
               	jmp	 <L23>
<L21>:
               	xor	edi, edi
               	movabs	r9, -0x56a7d9e71fc03656
               	jmp	 <L24>
<L26>:
               	xor	r8, rsi
               	mov	rbx, r8
               	xor	r13, rdx
               	xor	r15, rcx
               	xor	r10, rax
<L27>:
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
               	mov	r8, rbx
               	je	 <L25>
<L24>:
               	bt	r9, rdi
               	jb	 <L26>
               	mov	rbx, r8
               	jmp	 <L27>
<L25>:
               	xor	edi, edi
               	movabs	r9, 0x180ec6d33cfd0aba
               	jmp	 <L28>
<L30>:
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0xe0], r8
               	xor	r13, rdx
               	xor	r15, rcx
               	mov	r10, rbx
               	xor	r10, rax
<L31>:
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
               	mov	r8, qword ptr [rsp + 0xe0]
               	je	 <L29>
<L28>:
               	mov	rbx, r10
               	movabs	r10, 0x39abdc4529b1661c
               	bt	r10, rdi
               	jb	 <L30>
               	mov	qword ptr [rsp + 0xe0], r8
               	mov	r10, rbx
               	jmp	 <L31>
<L29>:
               	xor	edi, edi
               	xor	ebx, ebx
               	mov	rax, r10
               	mov	rdx, r13
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x168], r15
               	mov	rcx, r15
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x110], rdx
               	mov	rsi, r8
               	mov	qword ptr [rsp + 0xb8], 0x0
               	jmp	 <L32>
               	nop	dword ptr [rax + rax]
<L34>:
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
               	je	 <L33>
<L32>:
               	bt	r9, rdi
               	jae	 <L34>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	r15, rdx
               	xor	r13, rcx
               	xor	rbx, rax
               	jmp	 <L34>
<L33>:
               	xor	edi, edi
               	jmp	 <L35>
               	nop	word ptr cs:[rax + rax]
<L37>:
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
               	je	 <L36>
<L35>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L37>
               	mov	r8, r13
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	r15, rdx
               	xor	r8, rcx
               	mov	r13, r8
               	xor	rbx, rax
               	jmp	 <L37>
<L36>:
               	xor	edi, edi
               	jmp	 <L38>
               	nop	word ptr cs:[rax + rax]
<L40>:
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
               	je	 <L39>
<L38>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L40>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	r15, rdx
               	xor	r13, rcx
               	xor	rbx, rax
               	jmp	 <L40>
<L39>:
               	xor	edi, edi
               	jmp	 <L41>
               	nop	dword ptr [rax]
<L43>:
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	r15, rdx
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0xd8], r13
               	xor	rbx, rax
<L44>:
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
               	mov	r13, qword ptr [rsp + 0xd8]
               	je	 <L42>
<L41>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jb	 <L43>
               	mov	qword ptr [rsp + 0xd8], r13
               	jmp	 <L44>
<L42>:
               	mov	qword ptr [rsp + 0x118], r10
               	mov	qword ptr [rsp + 0x178], r12
               	xor	edi, edi
               	mov	rax, rbx
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x170], rax
               	xor	r9d, r9d
               	mov	rcx, r13
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x100], r15
               	mov	rdx, r15
               	mov	rsi, qword ptr [rsp + 0xb8]
               	xor	r10d, r10d
               	jmp	 <L45>
<L47>:
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
               	je	 <L46>
<L45>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L47>
               	xor	r10, rsi
               	xor	r12, rdx
               	xor	r9, rcx
               	xor	rbx, rax
               	jmp	 <L47>
<L46>:
               	xor	edi, edi
               	mov	r13, rbx
               	mov	r15, r9
               	movabs	r11, 0x180ec6d33cfd0aba
               	jmp	 <L48>
               	nop	word ptr [rax + rax]
<L50>:
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
               	je	 <L49>
<L48>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L50>
               	xor	r10, rsi
               	xor	r12, rdx
               	xor	r15, rcx
               	xor	r13, rax
               	jmp	 <L50>
<L49>:
               	xor	edi, edi
               	jmp	 <L51>
               	nop	word ptr [rax + rax]
<L53>:
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
               	je	 <L52>
<L51>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L53>
               	xor	r10, rsi
               	xor	r12, rdx
               	xor	r15, rcx
               	xor	r13, rax
               	jmp	 <L53>
<L52>:
               	xor	edi, edi
               	jmp	 <L54>
               	nop	word ptr [rax + rax]
<L56>:
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
               	je	 <L55>
<L54>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L56>
               	xor	r10, rsi
               	xor	r12, rdx
               	xor	r15, rcx
               	xor	r13, rax
               	jmp	 <L56>
<L55>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x60], 0x0
               	mov	rax, r13
               	mov	qword ptr [rsp + 0xb0], 0x0
               	mov	rcx, r15
               	mov	qword ptr [rsp + 0x38], 0x0
               	mov	rdx, r12
               	mov	rsi, r10
               	mov	qword ptr [rsp + 0xa8], 0x0
               	jmp	 <L57>
               	nop	dword ptr [rax]
<L59>:
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
               	je	 <L58>
<L57>:
               	bt	r11, rdi
               	mov	r8, qword ptr [rsp + 0x60]
               	jae	 <L59>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x60], r8
               	jmp	 <L59>
<L58>:
               	xor	edi, edi
               	jmp	 <L60>
               	nop	word ptr cs:[rax + rax]
<L62>:
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
               	je	 <L61>
<L60>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L62>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x60], rax
               	jmp	 <L62>
<L61>:
               	xor	edi, edi
               	jmp	 <L63>
               	nop	word ptr cs:[rax + rax]
<L65>:
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
               	je	 <L64>
<L63>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L65>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x60], rax
               	jmp	 <L65>
<L64>:
               	xor	edi, edi
               	jmp	 <L66>
               	nop	word ptr cs:[rax + rax]
<L68>:
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
               	je	 <L67>
<L66>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L68>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x60], rax
               	jmp	 <L68>
<L67>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x58], 0x0
               	mov	rax, qword ptr [rsp + 0x60]
               	mov	qword ptr [rsp + 0x30], 0x0
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0x40], 0x0
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0xa8]
               	mov	qword ptr [rsp + 0xa0], 0x0
               	jmp	 <L69>
               	nop	word ptr cs:[rax + rax]
<L71>:
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
               	je	 <L70>
<L69>:
               	bt	r11, rdi
               	mov	r8, qword ptr [rsp + 0x58]
               	jae	 <L71>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x58], r8
               	jmp	 <L71>
<L70>:
               	xor	edi, edi
               	jmp	 <L72>
<L74>:
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
               	je	 <L73>
<L72>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L74>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	qword ptr [rsp + 0x58], rax
               	jmp	 <L74>
<L73>:
               	xor	edi, edi
               	jmp	 <L75>
               	nop	word ptr cs:[rax + rax]
<L77>:
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
               	je	 <L76>
<L75>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L77>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	qword ptr [rsp + 0x58], rax
               	jmp	 <L77>
<L76>:
               	xor	edi, edi
               	jmp	 <L78>
               	nop	word ptr cs:[rax + rax]
<L80>:
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
               	je	 <L79>
<L78>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L80>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	qword ptr [rsp + 0x58], rax
               	jmp	 <L80>
<L79>:
               	mov	qword ptr [rsp + 0xf8], r12
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x50], 0x0
               	mov	rax, qword ptr [rsp + 0x58]
               	mov	qword ptr [rsp + 0x98], 0x0
               	mov	rcx, qword ptr [rsp + 0x30]
               	mov	qword ptr [rsp + 0x90], 0x0
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	qword ptr [rsp + 0x88], 0x0
               	jmp	 <L81>
               	nop
<L83>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L82>
<L81>:
               	bt	r11, rsi
               	mov	rdi, qword ptr [rsp + 0x50]
               	jae	 <L83>
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x50], rdi
               	jmp	 <L83>
<L82>:
               	xor	esi, esi
               	jmp	 <L84>
               	nop	word ptr cs:[rax + rax]
<L86>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L85>
<L84>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	bt	rdi, rsi
               	jae	 <L86>
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x50], rax
               	jmp	 <L86>
<L85>:
               	xor	esi, esi
               	jmp	 <L87>
               	nop	dword ptr [rax + rax]
<L89>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L88>
<L87>:
               	movabs	rdi, -0x56a7d9e71fc03656
               	bt	rdi, rsi
               	jae	 <L89>
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x50], rax
               	jmp	 <L89>
<L88>:
               	xor	esi, esi
               	jmp	 <L90>
               	nop	dword ptr [rax + rax]
<L92>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L91>
<L90>:
               	movabs	rdi, 0x39abdc4529b1661c
               	bt	rdi, rsi
               	jae	 <L92>
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x50], rax
               	jmp	 <L92>
<L91>:
               	xor	esi, esi
               	xor	ebx, ebx
               	mov	rax, qword ptr [rsp + 0x50]
               	xor	r12d, r12d
               	mov	rcx, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x80], 0x0
               	mov	rdx, qword ptr [rsp + 0x90]
               	mov	r8, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x78], 0x0
               	jmp	 <L93>
               	nop
<L95>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L94>
<L93>:
               	bt	r11, rsi
               	jae	 <L95>
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	r12, rcx
               	xor	rbx, rax
               	jmp	 <L95>
<L94>:
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xc8], r12
               	jmp	 <L96>
               	nop	dword ptr [rax]
<L98>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L97>
<L96>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	bt	rdi, rsi
               	jae	 <L98>
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	rbx, rax
               	jmp	 <L98>
<L97>:
               	xor	esi, esi
               	jmp	 <L99>
               	nop	word ptr cs:[rax + rax]
<L101>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L100>
<L99>:
               	movabs	rdi, -0x56a7d9e71fc03656
               	bt	rdi, rsi
               	jae	 <L101>
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	rbx, rax
               	jmp	 <L101>
<L100>:
               	xor	esi, esi
               	jmp	 <L102>
               	nop	word ptr cs:[rax + rax]
<L104>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L103>
<L102>:
               	movabs	rdi, 0x39abdc4529b1661c
               	bt	rdi, rsi
               	jae	 <L104>
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	rbx, rax
               	jmp	 <L104>
<L103>:
               	mov	qword ptr [rsp + 0x160], r13
               	mov	qword ptr [rsp + 0x150], r10
               	xor	edx, edx
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rbx
               	mov	rax, rbx
               	xor	ecx, ecx
               	mov	r8, qword ptr [rsp + 0xc8]
               	xor	r13d, r13d
               	mov	rbx, qword ptr [rsp + 0x80]
               	mov	r10, qword ptr [rsp + 0x78]
               	mov	qword ptr [rsp + 0x68], 0x0
               	jmp	 <L105>
               	nop	word ptr cs:[rax + rax]
<L107>:
               	xor	qword ptr [rsp + 0x68], r10
               	xor	r13, rbx
               	mov	rcx, rsi
               	xor	rcx, r8
               	xor	rdi, rax
<L108>:
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rsi
               	rorx	rax, rax, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L106>
<L105>:
               	mov	rsi, rcx
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rdx
               	jb	 <L107>
               	mov	rcx, rsi
               	jmp	 <L108>
<L106>:
               	xor	edx, edx
               	jmp	 <L109>
               	nop	word ptr cs:[rax + rax]
<L111>:
               	xor	qword ptr [rsp + 0x68], r10
               	xor	r13, rbx
               	mov	rcx, rsi
               	xor	rcx, r8
               	xor	rdi, rax
<L112>:
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rsi
               	rorx	rax, rax, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L110>
<L109>:
               	mov	rsi, rcx
               	movabs	rcx, -0x2a59ed990f36c6d4
               	bt	rcx, rdx
               	jb	 <L111>
               	mov	rcx, rsi
               	jmp	 <L112>
<L110>:
               	xor	edx, edx
               	jmp	 <L113>
               	nop	word ptr cs:[rax + rax]
<L115>:
               	xor	qword ptr [rsp + 0x68], r10
               	xor	r13, rbx
               	mov	rcx, rsi
               	xor	rcx, r8
               	xor	rdi, rax
<L116>:
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rsi
               	rorx	rax, rax, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L114>
<L113>:
               	mov	rsi, rcx
               	movabs	rcx, -0x56a7d9e71fc03656
               	bt	rcx, rdx
               	jb	 <L115>
               	mov	rcx, rsi
               	jmp	 <L116>
<L114>:
               	xor	edx, edx
               	jmp	 <L117>
               	nop	word ptr cs:[rax + rax]
<L119>:
               	xor	qword ptr [rsp + 0x68], r10
               	xor	r13, rbx
               	mov	rcx, rsi
               	xor	rcx, r8
               	xor	rdi, rax
<L120>:
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rsi
               	rorx	rax, rax, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L118>
<L117>:
               	mov	rsi, rcx
               	movabs	rcx, 0x39abdc4529b1661c
               	bt	rcx, rdx
               	jb	 <L119>
               	mov	rcx, rsi
               	jmp	 <L120>
<L118>:
               	mov	qword ptr [rsp + 0x158], r15
               	xor	edx, edx
               	xor	r14d, r14d
               	mov	r8, rdi
               	mov	rbx, rdi
               	xor	r12d, r12d
               	mov	r15, rcx
               	mov	qword ptr [rsp + 0x20], 0x0
               	mov	r10, r13
               	mov	rsi, qword ptr [rsp + 0x68]
               	xor	r9d, r9d
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L121>
               	nop	word ptr [rax + rax]
<L123>:
               	mov	rdi, r10
               	shl	rdi, 0x11
               	xor	r15, rsi
               	xor	rbx, r10
               	xor	r10, r15
               	xor	rsi, rbx
               	xor	r15, rdi
               	rorx	rbx, rbx, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L122>
<L121>:
               	bt	rax, rdx
               	jae	 <L123>
               	xor	r9, rsi
               	xor	qword ptr [rsp + 0x20], r10
               	xor	r12, r15
               	xor	r14, rbx
               	jmp	 <L123>
<L122>:
               	xor	edx, edx
               	jmp	 <L124>
               	nop
<L126>:
               	mov	rdi, r10
               	shl	rdi, 0x11
               	xor	r15, rsi
               	xor	rbx, r10
               	xor	r10, r15
               	xor	rsi, rbx
               	xor	r15, rdi
               	rorx	rbx, rbx, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L125>
<L124>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, rdx
               	jae	 <L126>
               	mov	rax, r14
               	xor	r9, rsi
               	xor	qword ptr [rsp + 0x20], r10
               	xor	r12, r15
               	xor	rax, rbx
               	mov	r14, rax
               	jmp	 <L126>
<L125>:
               	xor	edx, edx
               	jmp	 <L127>
               	nop
<L129>:
               	mov	rdi, r10
               	shl	rdi, 0x11
               	xor	r15, rsi
               	xor	rbx, r10
               	xor	r10, r15
               	xor	rsi, rbx
               	xor	r15, rdi
               	rorx	rbx, rbx, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L128>
<L127>:
               	movabs	rax, -0x56a7d9e71fc03656
               	bt	rax, rdx
               	jae	 <L129>
               	mov	rax, r14
               	xor	r9, rsi
               	xor	qword ptr [rsp + 0x20], r10
               	xor	r12, r15
               	xor	rax, rbx
               	mov	r14, rax
               	jmp	 <L129>
<L128>:
               	xor	edx, edx
               	mov	qword ptr [rsp + 0xf0], r13
               	movabs	rax, 0x39abdc4529b1661c
               	jmp	 <L130>
               	nop	word ptr cs:[rax + rax]
<L132>:
               	mov	rdi, r10
               	shl	rdi, 0x11
               	xor	r15, rsi
               	xor	rbx, r10
               	xor	r10, r15
               	xor	rsi, rbx
               	xor	r15, rdi
               	rorx	rbx, rbx, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L131>
<L130>:
               	bt	rax, rdx
               	jae	 <L132>
               	xor	r9, rsi
               	xor	qword ptr [rsp + 0x20], r10
               	xor	r12, r15
               	xor	r14, rbx
               	jmp	 <L132>
<L131>:
               	mov	edx, 0x40
<L133>:
               	dec	rdx
               	jne	 <L133>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L134>:
               	dec	rdx
               	jne	 <L134>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L135>:
               	dec	rdx
               	jne	 <L135>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L136>:
               	dec	rdx
               	jne	 <L136>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L137>:
               	dec	rdx
               	jne	 <L137>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L138>:
               	dec	rdx
               	jne	 <L138>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L139>:
               	dec	rdx
               	jne	 <L139>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L140>:
               	dec	rdx
               	jne	 <L140>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L141>:
               	dec	rdx
               	jne	 <L141>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L142>:
               	dec	rdx
               	jne	 <L142>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L143>:
               	dec	rdx
               	jne	 <L143>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L144>:
               	dec	rdx
               	jne	 <L144>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L145>:
               	dec	rdx
               	jne	 <L145>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L146>:
               	dec	rdx
               	jne	 <L146>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L147>:
               	dec	rdx
               	jne	 <L147>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L148>:
               	dec	rdx
               	jne	 <L148>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L149>:
               	dec	rdx
               	jne	 <L149>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L150>:
               	dec	rdx
               	jne	 <L150>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L151>:
               	dec	rdx
               	jne	 <L151>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L152>:
               	dec	rdx
               	jne	 <L152>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L153>:
               	dec	rdx
               	jne	 <L153>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L154>:
               	dec	rdx
               	jne	 <L154>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L155>:
               	dec	rdx
               	jne	 <L155>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L156>:
               	dec	rdx
               	jne	 <L156>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L157>:
               	dec	rdx
               	jne	 <L157>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L158>:
               	dec	rdx
               	jne	 <L158>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L159>:
               	dec	rdx
               	jne	 <L159>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L160>:
               	dec	rdx
               	jne	 <L160>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L161>:
               	dec	rdx
               	jne	 <L161>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L162>:
               	dec	rdx
               	jne	 <L162>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L163>:
               	dec	rdx
               	jne	 <L163>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L164>:
               	dec	rdx
               	jne	 <L164>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L165>:
               	dec	rdx
               	jne	 <L165>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L166>:
               	dec	rdx
               	jne	 <L166>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L167>:
               	dec	rdx
               	jne	 <L167>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L168>:
               	dec	rdx
               	jne	 <L168>
               	vpxor	xmm1, xmm1, xmm1
               	vmovdqa	ymmword ptr [rsp + 0x1e0], ymm1
               	cmp	qword ptr [rsp + 0xe8], 0x0
               	je	 <L169>
               	mov	rax, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0x140], rcx
               	mov	rcx, qword ptr [rsp + 0xd0]
               	lea	rdx, [rax + 4*rcx]
               	mov	qword ptr [rsp + 0x1d0], rdx
               	lea	rdx, [rdx + 4*rcx]
               	mov	qword ptr [rsp + 0x1c8], rdx
               	lea	rdx, [rdx + 4*rcx]
               	mov	qword ptr [rsp + 0x1c0], rdx
               	lea	rdx, [rdx + 4*rcx]
               	mov	qword ptr [rsp + 0x1b8], rdx
               	lea	rdx, [rdx + 4*rcx]
               	mov	qword ptr [rsp + 0x1b0], rdx
               	lea	rdx, [rdx + 4*rcx]
               	mov	qword ptr [rsp + 0x1a8], rdx
               	lea	rdx, [rdx + 4*rcx]
               	mov	qword ptr [rsp + 0x1a0], rdx
               	lea	rdx, [rdx + 4*rcx]
               	mov	qword ptr [rsp + 0x198], rdx
               	lea	rcx, [rdx + 4*rcx]
               	mov	qword ptr [rsp + 0x190], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 8*rcx]
               	mov	qword ptr [rsp + 0x120], rax
               	mov	qword ptr [rsp + 0x28], 0x0
               	vpmovsxbq	ymm1, dword ptr  <memset+0x1420>
               	vpbroadcastw	ymm2, word ptr  <memset+0x1438>
               	vpbroadcastq	xmm3, qword ptr  <memset+0x1408>
               	vpbroadcastw	ymm4, word ptr  <memset+0x143a>
               	mov	qword ptr [rsp + 0x138], r8
               	mov	r13, qword ptr [rsp + 0x38]
               	mov	rbx, qword ptr [rsp + 0x30]
               	mov	qword ptr [rsp + 0x130], r12
               	mov	qword ptr [rsp + 0x128], r9
               	nop	word ptr cs:[rax + rax]
<L170>:
               	mov	qword ptr [rsp + 0x1d8], r14
               	vpextrq	r15, xmm0, 0x1
               	lea	rdx, [r15 + 4*r15]
               	rorx	rdx, rdx, 0x39
               	lea	r10, [rdx + 8*rdx]
               	mov	rax, qword ptr [rsp + 0x108]
               	lea	rdx, [rax + 4*rax]
               	rorx	rdx, rdx, 0x39
               	lea	r11, [rdx + 8*rdx]
               	mov	rax, qword ptr [rsp + 0x110]
               	lea	rdx, [rax + 4*rax]
               	rorx	rdx, rdx, 0x39
               	lea	r9, [rdx + 8*rdx]
               	mov	rax, qword ptr [rsp + 0x100]
               	lea	rdx, [rax + 4*rax]
               	rorx	rdx, rdx, 0x39
               	lea	rdi, [rdx + 8*rdx]
               	mov	rax, qword ptr [rsp + 0xf8]
               	lea	rdx, [rax + 4*rax]
               	rorx	rdx, rdx, 0x39
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm5, r11
               	mov	r8, r13
               	lea	r11, [r13 + 4*r13]
               	rorx	r11, r11, 0x39
               	lea	r11, [r11 + 8*r11]
               	vmovq	xmm6, r9
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	r9, [rax + 4*rax]
               	rorx	r9, r9, 0x39
               	lea	r9, [r9 + 8*r9]
               	vmovq	xmm7, rdi
               	mov	r12, qword ptr [rsp + 0x90]
               	lea	rdi, [r12 + 4*r12]
               	rorx	rdi, rdi, 0x39
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm8, rdx
               	mov	rsi, qword ptr [rsp + 0x80]
               	lea	rdx, [rsi + 4*rsi]
               	rorx	rdx, rdx, 0x39
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm9, r11
               	mov	rax, qword ptr [rsp + 0xf0]
               	lea	r11, [rax + 4*rax]
               	rorx	r11, r11, 0x39
               	lea	r11, [r11 + 8*r11]
               	vmovq	xmm10, r9
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	r9, [rax + 4*rax]
               	rorx	r9, r9, 0x39
               	lea	r9, [r9 + 8*r9]
               	vmovq	xmm11, rdi
               	vmovq	xmm12, rdx
               	vmovq	xmm13, r11
               	vmovq	xmm14, r9
               	mov	r9d, r10d
               	mov	edx, r10d
               	movzx	r11d, r10b
               	mov	r14d, r10d
               	vpbroadcastq	ymm15, r10
               	shr	r10d, 0x8
               	shr	r9d, 0x10
               	shr	edx, 0x18
               	imul	r11d, r11d, 0x4f
               	shr	r11d, 0xa
               	lea	eax, [r11 + 2*r11]
               	lea	eax, [r11 + 4*rax]
               	sub	r14b, al
               	movzx	r10d, r10b
               	imul	eax, r10d, 0x4f
               	shr	eax, 0xa
               	lea	r11d, [rax + 2*rax]
               	lea	eax, [rax + 4*r11]
               	sub	r10b, al
               	movzx	eax, r9b
               	imul	r9d, eax, 0x4f
               	shr	r9d, 0xa
               	lea	r11d, [r9 + 2*r9]
               	lea	r9d, [r9 + 4*r11]
               	sub	al, r9b
               	imul	r9d, edx, 0x4f
               	shr	r9d, 0xa
               	lea	r11d, [r9 + 2*r9]
               	lea	r9d, [r9 + 4*r11]
               	sub	dl, r9b
               	movzx	eax, al
               	shl	eax, 0x10
               	movzx	r10d, r10b
               	shl	r10d, 0x8
               	or	r10d, eax
               	movzx	eax, dl
               	shl	eax, 0x18
               	or	r10, rax
               	vpmovzxbd	ymm5, xmm5      # ymm5 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
               	vcvtdq2ps	ymm5, ymm5
               	vpmovzxbd	ymm6, xmm6      # ymm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm6
               	vpmovzxbd	ymm7, xmm7      # ymm7 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
               	vcvtdq2ps	ymm7, ymm7
               	vpmovzxbd	ymm8, xmm8      # ymm8 = xmm8[0],zero,zero,zero,xmm8[1],zero,zero,zero,xmm8[2],zero,zero,zero,xmm8[3],zero,zero,zero,xmm8[4],zero,zero,zero,xmm8[5],zero,zero,zero,xmm8[6],zero,zero,zero,xmm8[7],zero,zero,zero
               	vcvtdq2ps	ymm8, ymm8
               	vpmovzxbd	ymm9, xmm9      # ymm9 = xmm9[0],zero,zero,zero,xmm9[1],zero,zero,zero,xmm9[2],zero,zero,zero,xmm9[3],zero,zero,zero,xmm9[4],zero,zero,zero,xmm9[5],zero,zero,zero,xmm9[6],zero,zero,zero,xmm9[7],zero,zero,zero
               	vcvtdq2ps	ymm9, ymm9
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpmovzxbd	ymm11, xmm11    # ymm11 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero,xmm11[4],zero,zero,zero,xmm11[5],zero,zero,zero,xmm11[6],zero,zero,zero,xmm11[7],zero,zero,zero
               	vcvtdq2ps	ymm11, ymm11
               	vpmovzxbd	ymm12, xmm12    # ymm12 = xmm12[0],zero,zero,zero,xmm12[1],zero,zero,zero,xmm12[2],zero,zero,zero,xmm12[3],zero,zero,zero,xmm12[4],zero,zero,zero,xmm12[5],zero,zero,zero,xmm12[6],zero,zero,zero,xmm12[7],zero,zero,zero
               	vcvtdq2ps	ymm12, ymm12
               	vpmovzxbd	ymm13, xmm13    # ymm13 = xmm13[0],zero,zero,zero,xmm13[1],zero,zero,zero,xmm13[2],zero,zero,zero,xmm13[3],zero,zero,zero,xmm13[4],zero,zero,zero,xmm13[5],zero,zero,zero,xmm13[6],zero,zero,zero,xmm13[7],zero,zero,zero
               	vcvtdq2ps	ymm13, ymm13
               	vpmovzxbd	ymm14, xmm14    # ymm14 = xmm14[0],zero,zero,zero,xmm14[1],zero,zero,zero,xmm14[2],zero,zero,zero,xmm14[3],zero,zero,zero,xmm14[4],zero,zero,zero,xmm14[5],zero,zero,zero,xmm14[6],zero,zero,zero,xmm14[7],zero,zero,zero
               	vcvtdq2ps	ymm14, ymm14
               	vpsrlvq	ymm15, ymm15, ymm1
               	vpmovqb	xmm15, ymm15
               	vpmovzxbw	ymm16, xmm15    # ymm16 = xmm15[0],zero,xmm15[1],zero,xmm15[2],zero,xmm15[3],zero,xmm15[4],zero,xmm15[5],zero,xmm15[6],zero,xmm15[7],zero,xmm15[8],zero,xmm15[9],zero,xmm15[10],zero,xmm15[11],zero,xmm15[12],zero,xmm15[13],zero,xmm15[14],zero,xmm15[15],zero
               	vpmullw	ymm16, ymm16, ymm2
               	vpsrlw	ymm16, ymm16, 0x8
               	vpmovwb	xmm16, ymm16
               	vgf2p8affineqb	xmm16, xmm16, xmm3, 0x0
               	vpmovzxbw	ymm16, xmm16    # ymm16 = xmm16[0],zero,xmm16[1],zero,xmm16[2],zero,xmm16[3],zero,xmm16[4],zero,xmm16[5],zero,xmm16[6],zero,xmm16[7],zero,xmm16[8],zero,xmm16[9],zero,xmm16[10],zero,xmm16[11],zero,xmm16[12],zero,xmm16[13],zero,xmm16[14],zero,xmm16[15],zero
               	vpmullw	ymm16, ymm16, ymm4
               	vpmovwb	xmm16, ymm16
               	vpsubb	xmm15, xmm15, xmm16
               	vpmovzxbq	ymm15, xmm15    # ymm15 = xmm15[0],zero,zero,zero,zero,zero,zero,zero,xmm15[1],zero,zero,zero,zero,zero,zero,zero,xmm15[2],zero,zero,zero,zero,zero,zero,zero,xmm15[3],zero,zero,zero,zero,zero,zero,zero
               	vpsllvq	ymm15, ymm15, ymm1
               	movzx	eax, r14b
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	r14, qword ptr [rsp + 0xf0]
               	vextracti32x4	xmm16, ymm15, 0x1
               	vporq	xmm15, xmm15, xmm16
               	vpshufd	xmm16, xmm15, 0xee      # xmm16 = xmm15[2,3,2,3]
               	vporq	xmm15, xmm15, xmm16
               	or	r10, rax
               	vmovq	rax, xmm15
               	or	r10, rax
               	mov	rax, qword ptr [rsp + 0x28]
               	mov	qword ptr [rsp + 0x28], rax
               	and	eax, -0x8
               	mov	rdx, qword ptr [rsp + 0xc0]
               	vmovaps	ymmword ptr [rdx + 4*rax], ymm5
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	vmovaps	ymmword ptr [rdi + 4*rax], ymm6
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	vmovaps	ymmword ptr [rdi + 4*rax], ymm7
               	mov	rdi, qword ptr [rsp + 0x1c0]
               	vmovdqa	ymmword ptr [rdi + 4*rax], ymm8
               	mov	rdi, qword ptr [rsp + 0x1b8]
               	vmovdqa	ymmword ptr [rdi + 4*rax], ymm9
               	mov	rdi, qword ptr [rsp + 0x1b0]
               	vmovdqa	ymmword ptr [rdi + 4*rax], ymm10
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	vmovaps	ymmword ptr [rdi + 4*rax], ymm11
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	vmovaps	ymmword ptr [rdi + 4*rax], ymm12
               	mov	rdi, qword ptr [rsp + 0x198]
               	vmovaps	ymmword ptr [rdi + 4*rax], ymm13
               	mov	rdi, qword ptr [rsp + 0x190]
               	vmovaps	ymmword ptr [rdi + 4*rax], ymm14
               	mov	rdi, qword ptr [rsp + 0x120]
               	mov	qword ptr [rdi + rax], r10
               	mov	rdi, qword ptr [rsp + 0x140]
               	vpermq	ymm5, ymm0, 0xe3        # ymm5 = ymm0[3,0,2,3]
               	vpermq	ymm6, ymm0, 0xe9        # ymm6 = ymm0[1,2,2,3]
               	shl	r15, 0x11
               	vpxor	xmm5, xmm6, xmm5
               	vpextrq	rax, xmm5, 0x1
               	xor	rax, r15
               	vpbroadcastq	ymm6, rax
               	vmovq	rax, xmm5
               	rorx	rax, rax, 0x13
               	vpbroadcastq	ymm7, rax
               	mov	rcx, qword ptr [rsp + 0x108]
               	mov	rax, rcx
               	shl	rax, 0x11
               	xor	r9, qword ptr [rsp + 0x178]
               	xor	qword ptr [rsp + 0x48], rcx
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x108], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x70], r9
               	mov	rdx, qword ptr [rsp + 0x110]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x168]
               	xor	rcx, qword ptr [rsp + 0xe0]
               	xor	qword ptr [rsp + 0x118], rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x110], rdx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x168], rcx
               	mov	rdx, qword ptr [rsp + 0x100]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xd8]
               	xor	rcx, qword ptr [rsp + 0xb8]
               	mov	r13, qword ptr [rsp + 0x170]
               	xor	r13, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x100], rdx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xd8], rcx
               	mov	rdx, qword ptr [rsp + 0xf8]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x158]
               	xor	rcx, qword ptr [rsp + 0x150]
               	mov	r15, qword ptr [rsp + 0x160]
               	xor	r15, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0xf8], rdx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x158], rcx
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, qword ptr [rsp + 0xa8]
               	mov	r10, qword ptr [rsp + 0x60]
               	xor	r10, r8
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x38], r8
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	mov	rax, rcx
               	shl	rax, 0x11
               	xor	rbx, qword ptr [rsp + 0xa0]
               	mov	r9, qword ptr [rsp + 0x58]
               	xor	r9, rcx
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x40], rcx
               	xor	rbx, rax
               	mov	qword ptr [rsp + 0x30], rbx
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x98]
               	xor	rcx, qword ptr [rsp + 0x88]
               	mov	rbx, qword ptr [rsp + 0x50]
               	xor	rbx, r12
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x90], r12
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x98], rcx
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xc8]
               	mov	r11, qword ptr [rsp + 0x78]
               	xor	rcx, r11
               	mov	r12, qword ptr [rsp + 0x148]
               	xor	r12, rsi
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x80], rsi
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xc8], rcx
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	r8, qword ptr [rsp + 0x68]
               	xor	rdi, r8
               	mov	rsi, qword ptr [rsp + 0x138]
               	xor	rsi, r14
               	xor	r14, rdi
               	mov	qword ptr [rsp + 0xf0], r14
               	mov	r14, qword ptr [rsp + 0x1d8]
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x140], rdi
               	mov	rcx, qword ptr [rsp + 0x20]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rax, qword ptr [rsp + 0x130]
               	mov	rdi, qword ptr [rsp + 0x128]
               	xor	rax, rdi
               	xor	r14, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x20], rcx
               	xor	rax, rdx
               	mov	qword ptr [rsp + 0x130], rax
               	vpxor	xmm0, xmm5, xmm0
               	vpblendd	ymm0, ymm0, ymm6, 0x30  # ymm0 = ymm0[0,1,2,3],ymm6[4,5],ymm0[6,7]
               	mov	rcx, qword ptr [rsp + 0x28]
               	add	rcx, 0x8
               	vpblendd	ymm0, ymm0, ymm7, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm7[6,7]
               	mov	rax, qword ptr [rsp + 0x48]
               	xor	qword ptr [rsp + 0x178], rax
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0x48], rax
               	mov	rax, qword ptr [rsp + 0x118]
               	xor	qword ptr [rsp + 0xe0], rax
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0x118], rax
               	xor	qword ptr [rsp + 0xb8], r13
               	rorx	r13, r13, 0x13
               	mov	qword ptr [rsp + 0x170], r13
               	xor	qword ptr [rsp + 0x150], r15
               	rorx	r15, r15, 0x13
               	mov	qword ptr [rsp + 0x160], r15
               	xor	qword ptr [rsp + 0xa8], r10
               	rorx	r10, r10, 0x13
               	mov	qword ptr [rsp + 0x60], r10
               	xor	qword ptr [rsp + 0xa0], r9
               	rorx	r9, r9, 0x13
               	mov	qword ptr [rsp + 0x58], r9
               	mov	r13, qword ptr [rsp + 0x38]
               	xor	qword ptr [rsp + 0x88], rbx
               	rorx	rbx, rbx, 0x13
               	mov	qword ptr [rsp + 0x50], rbx
               	mov	rbx, qword ptr [rsp + 0x30]
               	xor	r11, r12
               	mov	qword ptr [rsp + 0x78], r11
               	rorx	r12, r12, 0x13
               	mov	qword ptr [rsp + 0x148], r12
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x68], r8
               	rorx	rsi, rsi, 0x13
               	mov	qword ptr [rsp + 0x138], rsi
               	xor	rdi, r14
               	mov	qword ptr [rsp + 0x128], rdi
               	rorx	r14, r14, 0x13
               	mov	qword ptr [rsp + 0x28], rcx
               	cmp	qword ptr [rsp + 0xe8], rcx
               	jne	 <L170>
               	mov	r15, qword ptr [rsp + 0x120]
               	mov	rsi, qword ptr [rsp + 0x28]
               	test	esi, esi
               	mov	rdi, qword ptr [rsp + 0xc0]
               	je	 <L171>
               	shr	esi, 0x3
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa64	zmmword ptr [rsp + 0x5c0], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x580], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x540], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x500], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x4c0], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x480], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x440], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x400], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x3c0], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x380], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x340], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x300], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x2c0], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x280], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x240], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x200], zmm0
               	mov	r11, qword ptr [rsp + 0xd0]
               	lea	rax, [r11 + 8*r11]
               	lea	r12, [rax + 2*rax]
               	add	r12, rdi
               	add	r12, r11
               	shl	r11, 0x5
               	add	r11, rdi
               	lea	r13, [rdi + 4*rax]
               	lea	rbx, [rsp + 0x260]
               	xor	eax, eax
               	vmovdqa	ymm4, ymmword ptr  <memset+0x13e0>
               	vpbroadcastd	ymm5, dword ptr  <memset+0x142c>
               	vmovaps	ymm6, ymmword ptr  <memset+0x13c0>
               	vpbroadcastd	ymm7, dword ptr  <memset+0x1434>
               	vpbroadcastd	ymm8, dword ptr  <memset+0x141c>
               	vpbroadcastd	ymm9, dword ptr  <memset+0x1430>
               	vpbroadcastd	ymm10, dword ptr  <memset+0x1424>
               	mov	qword ptr [rsp + 0xd0], r11
               	nop	dword ptr [rax]
<L180>:
               	mov	qword ptr [rsp + 0x28], rsi
               	blsi	ecx, esi
               	lea	r14, [rcx + rax]
               	mov	qword ptr [rsp + 0x20], rcx
               	test	ecx, ecx
               	je	 <L172>
               	mov	esi, 0x1
               	xor	edi, edi
               	mov	r8d, 0x1
               	jmp	 <L173>
               	nop	word ptr [rax + rax]
<L175>:
               	mov	r8d, edx
               	movsxd	rcx, edx
               	shl	rcx, 0x5
               	vmovaps	ymmword ptr [rsp + rcx + 0x200], ymm0
               	inc	rax
               	mov	ecx, 0xfffffffe
               	sub	ecx, esi
               	inc	esi
               	lzcnt	r9d, esi
               	popcnt	edi, ecx
               	sub	edi, r9d
               	cmp	rax, r14
               	je	 <L174>
<L173>:
               	mov	edx, edi
               	vpmovzxbd	ymm1, qword ptr [r15 + 8*rax]
               	vpermd	ymm0, ymm1, ymm4
               	vptestnmd	k1, ymm1, ymm5
               	vpermps	ymm0 {k1}, ymm1, ymm6
               	vpsllvd	ymm2, ymm7, ymm1
               	vpmovd2m	k1, ymm2
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm2 {k1} {z}, ymmword ptr [r12 + rcx]
               	vmulps	ymm0, ymm2, ymm0
               	vpsllvd	ymm3, ymm8, ymm1
               	vpmovd2m	k1, ymm3
               	vmovaps	ymm3 {k1} {z}, ymmword ptr [r11 + rcx]
               	vblendmps	ymm3 {k1}, ymm2, ymm3
               	vmulps	ymm0, ymm0, ymm3
               	vpsllvd	ymm3, ymm9, ymm1
               	vpmovd2m	k1, ymm3
               	vmovaps	ymm3 {k1} {z}, ymmword ptr [r13 + rcx]
               	vmovaps	ymm2 {k1}, ymm3
               	vpsllvd	ymm1, ymm10, ymm1
               	vpmovd2m	k1, ymm1
               	vmulps	ymm0 {k1}, ymm0, ymm2
               	mov	r9d, edi
               	sub	r9d, r8d
               	jl	 <L175>
               	movsxd	rdi, r8d
               	lea	r10d, [r9 + 0x1]
               	and	r10d, 0x3
               	je	 <L176>
               	dec	r10d
               	mov	rcx, rdi
               	shl	rcx, 0x5
               	lea	r11, [rsp + rcx]
               	add	r11, 0x200
               	mov	ecx, edx
               	sub	cl, r8b
               	inc	cl
               	movzx	r8d, cl
               	and	r8d, 0x3
               	shl	r8d, 0x5
               	xor	ecx, ecx
               	nop	word ptr cs:[rax + rax]
<L177>:
               	vaddps	ymm0, ymm0, ymmword ptr [r11 + rcx]
               	add	rcx, 0x20
               	cmp	r8d, ecx
               	jne	 <L177>
               	add	rdi, r10
               	inc	rdi
               	mov	r11, qword ptr [rsp + 0xd0]
<L176>:
               	cmp	r9d, 0x3
               	jb	 <L175>
               	mov	r8d, edx
               	sub	r8d, edi
               	inc	r8d
               	shl	rdi, 0x5
               	add	rdi, rbx
               	nop	word ptr [rax + rax]
<L178>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdi - 0x60]
               	vaddps	ymm0, ymm0, ymmword ptr [rdi - 0x40]
               	vaddps	ymm0, ymm0, ymmword ptr [rdi - 0x20]
               	vaddps	ymm0, ymm0, ymmword ptr [rdi]
               	sub	rdi, -0x80
               	add	r8d, -0x4
               	jne	 <L178>
               	jmp	 <L175>
               	nop	word ptr cs:[rax + rax]
<L172>:
               	mov	edx, 0x1
<L174>:
               	movsxd	rax, edx
               	shl	rax, 0x5
               	add	rax, rsp
               	add	rax, 0x200
               	mov	rsi, qword ptr [rsp + 0x28]
               	sub	esi, dword ptr [rsp + 0x20]
               	je	 <L179>
               	vmovdqa	ymm0, ymmword ptr [rax]
               	vmovdqa	ymmword ptr [rax + 0x20], ymm0
               	mov	rax, r14
               	test	edx, edx
               	js	 <L180>
               	mov	edx, edx
               	shl	rdx, 0x5
               	add	rdx, 0x20
               	lea	rdi, [rsp + 0x200]
               	mov	rbx, rsi
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vpbroadcastd	ymm10, dword ptr  <memset+0x1424>
               	vpbroadcastd	ymm9, dword ptr  <memset+0x1430>
               	vpbroadcastd	ymm8, dword ptr  <memset+0x141c>
               	vpbroadcastd	ymm7, dword ptr  <memset+0x1434>
               	vmovaps	ymm6, ymmword ptr  <memset+0x13c0>
               	vpbroadcastd	ymm5, dword ptr  <memset+0x142c>
               	vmovdqa	ymm4, ymmword ptr  <memset+0x13e0>
               	mov	rsi, rbx
               	lea	rbx, [rsp + 0x260]
               	mov	r11, qword ptr [rsp + 0xd0]
               	mov	rax, r14
               	jmp	 <L180>
<L179>:
               	vmovdqa	ymm0, ymmword ptr [rax]
               	vmovdqa	ymmword ptr [rsp + 0x1e0], ymm0
<L169>:
               	mov	rdi, qword ptr [rsp + 0xc0]
<L171>:
               	mov	rax, qword ptr [rsp + 0x180]
               	test	rax, rax
               	je	 <L181>
               	mov	rdi, rax
               	vzeroupper
               	call	 <free@plt>
               	mov	rdi, qword ptr [rsp + 0xc0]
<L181>:
               	test	rdi, rdi
               	mov	rbx, qword ptr [rsp + 0x188]
               	je	 <L182>
               	vzeroupper
               	call	 <free@plt>
<L182>:
               	cmp	rbx, 0x2a
               	jne	 <L183>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x1e0]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	mov	rax, qword ptr [rsp + 0xe8]
               	cmp	rax, 0x30d40
               	je	 <L184>
               	cmp	rax, 0x186a0
               	jne	 <L183>
               	vucomiss	xmm0, dword ptr  <memset+0x1428>
               	jne	 <L185>
<L183>:
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
<L184>:
               	vucomiss	xmm0, dword ptr  <memset+0x1418>
               	je	 <L183>
<L185>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x20], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x20]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x8390>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x8370>
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

<__cxa_throw@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x20>
               	push	0x1
               	jmp	 <.plt>

<__cxa_allocate_exception@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>

<aligned_alloc@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x30>
               	push	0x3
               	jmp	 <.plt>

<free@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
               	push	0x5
               	jmp	 <.plt>
