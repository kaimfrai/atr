
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
               	call	qword ptr  <memset+0x81d0>
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
               	mov	rax, qword ptr  <memset+0x81e0>
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
               	mov	rax, qword ptr  <memset+0x81e8>
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
               	cmp	qword ptr , 0x0 <memset+0x81f0>
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
               	pop	rax
               	jmp	 <initializer for module Meta.ID>
               	int3
               	int3
               	int3
               	int3
               	int3
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

<initializer for module Meta.Auto.Simd.ArrayCeil>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW9ArrayCeil__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW9ArrayCeil__in_chrg>
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
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Array__in_chrg>
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
               	sub	rsp, 0x680
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r12d, byte ptr [rcx]
               	add	r12d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
<L1>:
               	lea	esi, [r12 + 4*r12]
               	movsx	edx, dl
               	lea	r12d, [rdx + 2*rsi]
               	add	r12d, -0x30
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	ecx, byte ptr [rax]
               	add	ecx, -0x30
               	movzx	edx, byte ptr [rax + 0x1]
               	test	dl, dl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	ecx, [rcx + 4*rcx]
               	movsx	edx, dl
               	lea	ecx, [rdx + 2*rcx]
               	add	ecx, -0x30
               	movzx	edx, byte ptr [rax]
               	inc	rax
               	test	dl, dl
               	jne	 <L3>
<L2>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	mov	r14d, ecx
               	lea	rax, [r14 + 4*r14]
               	mov	qword ptr [rsp + 0x98], rax
               	lea	rsi, [r14 + 8*rax]
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	r15, rax
               	mov	esi, 0xaaaaaaab
               	mov	qword ptr [rsp + 0xa0], r14
               	imul	rsi, r14
               	shr	rsi, 0x1e
               	and	rsi, -0x20
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	r10, rbx
               	mov	qword ptr [rsp + 0x1d8], rax
               	movsxd	rax, r12d
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0x1380>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rcx, -0x61c8864680b583eb
               	add	rcx, rax
               	shr	rcx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rcx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <memset+0x13f8>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <memset+0x13e0>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpbroadcastq	ymm2, qword ptr  <memset+0x13e8>
               	vpxor	ymm0, ymm1, ymm0
               	vpmuludq	ymm1, ymm0, ymm2
               	vpbroadcastq	ymm2, qword ptr  <memset+0x13f0>
               	vpsrlq	ymm3, ymm0, 0x20
               	vpmuludq	ymm3, ymm3, ymm2
               	vpaddq	ymm1, ymm1, ymm3
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm2
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovq	rax, xmm0
               	vpextrq	rcx, xmm0, 0x1
               	vextracti128	xmm1, ymm0, 0x1
               	vmovq	rdx, xmm1
               	vpextrq	rsi, xmm1, 0x1
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x90], 0x0
               	mov	qword ptr [rsp + 0x88], 0x0
               	xor	r13d, r13d
               	xor	ebx, ebx
               	jmp	 <L4>
               	nop	dword ptr [rax]
<L6>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L5>
<L4>:
               	bt	r10, rdi
               	jae	 <L6>
               	xor	rbx, rax
               	xor	r13, rcx
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x90], rsi
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
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L8>
<L7>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L9>
               	xor	rbx, rax
               	xor	r13, rcx
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop
<L12>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L11>
<L10>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L12>
               	xor	rbx, rax
               	xor	r13, rcx
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop
<L15>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	rbx, rax
               	xor	r13, rcx
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0x1e0], r12
               	mov	qword ptr [rsp + 0xa8], r15
               	xor	edi, edi
               	xor	r14d, r14d
               	mov	rax, qword ptr [rsp + 0x90]
               	xor	r8d, r8d
               	mov	rcx, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x30], 0x0
               	mov	rdx, r13
               	mov	qword ptr [rsp + 0x158], rbx
               	mov	rsi, rbx
               	xor	r12d, r12d
               	jmp	 <L16>
               	nop
<L18>:
               	xor	r12, rsi
               	mov	rbx, r12
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	r8, rcx
               	mov	r12, r8
               	xor	r14, rax
<L19>:
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
               	mov	r8, r12
               	mov	r12, rbx
               	je	 <L17>
<L16>:
               	bt	r10, rdi
               	jb	 <L18>
               	mov	rbx, r12
               	mov	r12, r8
               	jmp	 <L19>
<L17>:
               	xor	edi, edi
               	jmp	 <L20>
               	nop
<L22>:
               	xor	r12, rsi
               	mov	rbx, r12
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	r8, rcx
               	mov	r12, r8
               	xor	r14, rax
<L23>:
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
               	mov	r8, r12
               	mov	r12, rbx
               	je	 <L21>
<L20>:
               	movabs	rbx, -0x2a59ed990f36c6d4
               	bt	rbx, rdi
               	jb	 <L22>
               	mov	rbx, r12
               	mov	r12, r8
               	jmp	 <L23>
<L21>:
               	xor	edi, edi
               	jmp	 <L24>
               	nop	dword ptr [rax]
<L26>:
               	xor	r12, rsi
               	mov	rbx, r12
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	r8, rcx
               	mov	r12, r8
               	xor	r14, rax
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
               	mov	r8, r12
               	mov	r12, rbx
               	je	 <L25>
<L24>:
               	movabs	rbx, -0x56a7d9e71fc03656
               	bt	rbx, rdi
               	jb	 <L26>
               	mov	rbx, r12
               	mov	r12, r8
               	jmp	 <L27>
<L25>:
               	xor	edi, edi
               	movabs	rbx, 0x39abdc4529b1661c
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
<L30>:
               	xor	r12, rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xc8], r8
               	xor	r14, rax
<L31>:
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
               	mov	r8, qword ptr [rsp + 0xc8]
               	je	 <L29>
<L28>:
               	bt	rbx, rdi
               	jb	 <L30>
               	mov	qword ptr [rsp + 0xc8], r8
               	jmp	 <L31>
<L29>:
               	mov	qword ptr [rsp + 0xb0], r13
               	xor	edi, edi
               	xor	ebx, ebx
               	mov	rax, r14
               	xor	r13d, r13d
               	mov	rcx, r8
               	mov	qword ptr [rsp + 0x80], 0x0
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	qword ptr [rsp + 0x148], r12
               	mov	rsi, r12
               	mov	qword ptr [rsp + 0x78], 0x0
               	jmp	 <L32>
               	nop	dword ptr [rax]
<L34>:
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
               	je	 <L33>
<L32>:
               	bt	r10, rdi
               	jae	 <L34>
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x80], rdx
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L36>
<L35>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L37>
               	mov	r8, r13
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x80], rdx
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L39>
<L38>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L40>
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	r13, rcx
               	xor	rbx, rax
               	jmp	 <L40>
<L39>:
               	xor	edi, edi
               	jmp	 <L41>
               	nop	dword ptr [rax]
<L43>:
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0xc0], r13
               	xor	rbx, rax
<L44>:
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
               	mov	r13, qword ptr [rsp + 0xc0]
               	je	 <L42>
<L41>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jb	 <L43>
               	mov	qword ptr [rsp + 0xc0], r13
               	jmp	 <L44>
<L42>:
               	mov	qword ptr [rsp + 0x150], r14
               	xor	edi, edi
               	xor	r10d, r10d
               	mov	rax, rbx
               	xor	r12d, r12d
               	mov	rcx, r13
               	xor	r14d, r14d
               	mov	rdx, qword ptr [rsp + 0x80]
               	mov	rsi, qword ptr [rsp + 0x78]
               	xor	r15d, r15d
               	jmp	 <L45>
               	nop	dword ptr [rax + rax]
<L47>:
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
               	je	 <L46>
<L45>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L47>
               	xor	r15, rsi
               	xor	r14, rdx
               	xor	r12, rcx
               	xor	r10, rax
               	jmp	 <L47>
<L46>:
               	xor	edi, edi
               	mov	r13, r10
               	movabs	r9, 0x180ec6d33cfd0aba
               	jmp	 <L48>
               	nop	word ptr cs:[rax + rax]
<L50>:
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
               	je	 <L49>
<L48>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L50>
               	xor	r15, rsi
               	xor	r14, rdx
               	xor	r12, rcx
               	xor	r13, rax
               	jmp	 <L50>
<L49>:
               	xor	edi, edi
               	jmp	 <L51>
               	nop	word ptr cs:[rax + rax]
<L53>:
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
               	je	 <L52>
<L51>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L53>
               	xor	r15, rsi
               	xor	r14, rdx
               	xor	r12, rcx
               	xor	r13, rax
               	jmp	 <L53>
<L52>:
               	xor	edi, edi
               	jmp	 <L54>
               	nop	word ptr cs:[rax + rax]
<L56>:
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
               	je	 <L55>
<L54>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L56>
               	xor	r15, rsi
               	xor	r14, rdx
               	xor	r12, rcx
               	xor	r13, rax
               	jmp	 <L56>
<L55>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe0], 0x0
               	mov	rax, r13
               	mov	qword ptr [rsp + 0x70], 0x0
               	mov	qword ptr [rsp + 0x130], r12
               	mov	qword ptr [rsp + 0x28], 0x0
               	mov	rdx, r14
               	mov	rsi, r15
               	mov	qword ptr [rsp + 0x68], 0x0
               	jmp	 <L57>
               	nop	dword ptr [rax]
<L59>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r12, rsi
               	xor	rax, rdx
               	xor	rdx, r12
               	xor	rsi, rax
               	xor	r12, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L58>
<L57>:
               	bt	r9, rdi
               	mov	r8, qword ptr [rsp + 0xe0]
               	jae	 <L59>
               	xor	qword ptr [rsp + 0x68], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x70], r12
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xe0], r8
               	jmp	 <L59>
<L58>:
               	xor	edi, edi
               	jmp	 <L60>
               	nop	word ptr cs:[rax + rax]
<L62>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r12, rsi
               	xor	rax, rdx
               	xor	rdx, r12
               	xor	rsi, rax
               	xor	r12, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L61>
<L60>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L62>
               	xor	qword ptr [rsp + 0x68], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x70], r12
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L62>
<L61>:
               	xor	edi, edi
               	jmp	 <L63>
<L65>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r12, rsi
               	xor	rax, rdx
               	xor	rdx, r12
               	xor	rsi, rax
               	xor	r12, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L64>
<L63>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L65>
               	xor	qword ptr [rsp + 0x68], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x70], r12
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L65>
<L64>:
               	xor	edi, edi
               	jmp	 <L66>
<L68>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r12, rsi
               	xor	rax, rdx
               	xor	rdx, r12
               	xor	rsi, rax
               	xor	r12, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L67>
<L66>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L68>
               	xor	qword ptr [rsp + 0x68], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x70], r12
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L68>
<L67>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], 0x0
               	mov	rax, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0x60], 0x0
               	mov	rcx, qword ptr [rsp + 0x70]
               	mov	qword ptr [rsp + 0x20], 0x0
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0x68]
               	mov	qword ptr [rsp + 0x58], 0x0
               	jmp	 <L69>
               	nop
<L71>:
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
               	je	 <L70>
<L69>:
               	bt	r9, rdi
               	mov	r8, qword ptr [rsp + 0x1a0]
               	jae	 <L71>
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x60], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x1a0], r8
               	jmp	 <L71>
<L70>:
               	xor	edi, edi
               	jmp	 <L72>
               	nop	word ptr cs:[rax + rax]
<L74>:
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
               	je	 <L73>
<L72>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L74>
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x60], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
               	jmp	 <L74>
<L73>:
               	xor	edi, edi
               	jmp	 <L75>
<L77>:
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
               	je	 <L76>
<L75>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L77>
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x60], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
               	jmp	 <L77>
<L76>:
               	xor	edi, edi
               	jmp	 <L78>
<L80>:
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
               	je	 <L79>
<L78>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L80>
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x60], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
               	jmp	 <L80>
<L79>:
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x180], 0x0
               	mov	rax, qword ptr [rsp + 0x1a0]
               	mov	qword ptr [rsp + 0x50], 0x0
               	mov	rcx, qword ptr [rsp + 0x60]
               	mov	qword ptr [rsp + 0x18], 0x0
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	qword ptr [rsp + 0x48], 0x0
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
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L82>
<L81>:
               	bt	r9, rsi
               	mov	rdi, qword ptr [rsp + 0x180]
               	jae	 <L83>
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x50], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x180], rdi
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
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L85>
<L84>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	bt	rdi, rsi
               	jae	 <L86>
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x50], rcx
               	xor	qword ptr [rsp + 0x180], rax
               	jmp	 <L86>
<L85>:
               	xor	esi, esi
               	jmp	 <L87>
<L89>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L88>
<L87>:
               	movabs	rdi, -0x56a7d9e71fc03656
               	bt	rdi, rsi
               	jae	 <L89>
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x50], rcx
               	xor	qword ptr [rsp + 0x180], rax
               	jmp	 <L89>
<L88>:
               	xor	esi, esi
               	jmp	 <L90>
<L92>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L91>
<L90>:
               	movabs	rdi, 0x39abdc4529b1661c
               	bt	rdi, rsi
               	jae	 <L92>
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x50], rcx
               	xor	qword ptr [rsp + 0x180], rax
               	jmp	 <L92>
<L91>:
               	xor	esi, esi
               	xor	r10d, r10d
               	mov	rax, qword ptr [rsp + 0x180]
               	mov	qword ptr [rsp + 0x160], 0x0
               	mov	rcx, qword ptr [rsp + 0x50]
               	mov	qword ptr [rsp + 0x10], 0x0
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	qword ptr [rsp + 0x40], 0x0
               	jmp	 <L93>
               	nop	dword ptr [rax + rax]
<L95>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L94>
<L93>:
               	bt	r9, rsi
               	mov	rdi, qword ptr [rsp + 0x160]
               	jae	 <L95>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x160], rdi
               	xor	r10, rax
               	jmp	 <L95>
<L94>:
               	xor	esi, esi
               	jmp	 <L96>
               	nop
<L98>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L97>
<L96>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	bt	rdi, rsi
               	jae	 <L98>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	r10, rax
               	jmp	 <L98>
<L97>:
               	xor	esi, esi
               	jmp	 <L99>
               	nop
<L101>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L100>
<L99>:
               	movabs	rdi, -0x56a7d9e71fc03656
               	bt	rdi, rsi
               	jae	 <L101>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	r10, rax
               	jmp	 <L101>
<L100>:
               	xor	esi, esi
               	jmp	 <L102>
               	nop
<L104>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L103>
<L102>:
               	movabs	rdi, 0x39abdc4529b1661c
               	bt	rdi, rsi
               	jae	 <L104>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	r10, rax
               	jmp	 <L104>
<L103>:
               	mov	qword ptr [rsp + 0x120], r13
               	mov	qword ptr [rsp + 0x140], rbx
               	xor	edx, edx
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x128], r10
               	mov	rax, r10
               	xor	r13d, r13d
               	mov	r8, qword ptr [rsp + 0x160]
               	mov	qword ptr [rsp + 0x8], 0x0
               	mov	rbx, qword ptr [rsp + 0x10]
               	mov	r10, qword ptr [rsp + 0x40]
               	mov	qword ptr [rsp + 0x38], 0x0
               	movabs	rcx, 0x180ec6d33cfd0aba
               	jmp	 <L105>
               	nop	dword ptr [rax]
<L107>:
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rsi
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L106>
<L105>:
               	bt	rcx, rdx
               	jae	 <L107>
               	xor	qword ptr [rsp + 0x38], r10
               	xor	qword ptr [rsp + 0x8], rbx
               	xor	r13, r8
               	xor	rdi, rax
               	jmp	 <L107>
<L106>:
               	xor	edx, edx
               	movabs	rcx, -0x2a59ed990f36c6d4
               	jmp	 <L108>
               	nop	dword ptr [rax]
<L110>:
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rsi
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L109>
<L108>:
               	bt	rcx, rdx
               	jae	 <L110>
               	xor	qword ptr [rsp + 0x38], r10
               	xor	qword ptr [rsp + 0x8], rbx
               	xor	r13, r8
               	xor	rdi, rax
               	jmp	 <L110>
<L109>:
               	xor	edx, edx
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L111>
               	nop	dword ptr [rax]
<L113>:
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rsi
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L112>
<L111>:
               	bt	rcx, rdx
               	jae	 <L113>
               	xor	qword ptr [rsp + 0x38], r10
               	xor	qword ptr [rsp + 0x8], rbx
               	xor	r13, r8
               	xor	rdi, rax
               	jmp	 <L113>
<L112>:
               	xor	edx, edx
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L114>
               	nop	dword ptr [rax]
<L116>:
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rsi
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L115>
<L114>:
               	bt	rcx, rdx
               	jae	 <L116>
               	xor	qword ptr [rsp + 0x38], r10
               	xor	qword ptr [rsp + 0x8], rbx
               	xor	r13, r8
               	xor	rdi, rax
               	jmp	 <L116>
<L115>:
               	mov	qword ptr [rsp + 0x138], r15
               	mov	qword ptr [rsp + 0xd0], r14
               	xor	eax, eax
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xb8], rdi
               	mov	r14, rdi
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x110], r13
               	mov	r15, r13
               	xor	r8d, r8d
               	mov	r10, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0x38]
               	xor	r12d, r12d
               	movabs	rcx, 0x180ec6d33cfd0aba
               	jmp	 <L117>
               	nop	word ptr cs:[rax + rax]
<L119>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r15, rsi
               	xor	r14, r10
               	xor	r10, r15
               	xor	rsi, r14
               	xor	r15, rdx
               	rol	r14, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L118>
<L117>:
               	bt	rcx, rax
               	jae	 <L119>
               	xor	r12, rsi
               	xor	r8, r10
               	xor	rbx, r15
               	xor	r11, r14
               	jmp	 <L119>
<L118>:
               	xor	eax, eax
               	movabs	rcx, -0x2a59ed990f36c6d4
               	jmp	 <L120>
               	nop	word ptr cs:[rax + rax]
<L122>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r15, rsi
               	xor	r14, r10
               	xor	r10, r15
               	xor	rsi, r14
               	xor	r15, rdx
               	rol	r14, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L121>
<L120>:
               	bt	rcx, rax
               	jae	 <L122>
               	xor	r12, rsi
               	xor	r8, r10
               	xor	rbx, r15
               	xor	r11, r14
               	jmp	 <L122>
<L121>:
               	xor	eax, eax
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L123>
               	nop	word ptr cs:[rax + rax]
<L125>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r15, rsi
               	xor	r14, r10
               	xor	r10, r15
               	xor	rsi, r14
               	xor	r15, rdx
               	rol	r14, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L124>
<L123>:
               	bt	rcx, rax
               	jae	 <L125>
               	xor	r12, rsi
               	xor	r8, r10
               	xor	rbx, r15
               	xor	r11, r14
               	jmp	 <L125>
<L124>:
               	xor	eax, eax
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L126>
               	nop	word ptr cs:[rax + rax]
<L128>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r15, rsi
               	xor	r14, r10
               	xor	r10, r15
               	xor	rsi, r14
               	xor	r15, rdx
               	rol	r14, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L127>
<L126>:
               	bt	rcx, rax
               	jae	 <L128>
               	xor	r12, rsi
               	xor	r8, r10
               	xor	rbx, r15
               	xor	r11, r14
               	jmp	 <L128>
<L127>:
               	mov	qword ptr [rsp + 0x118], r11
               	mov	eax, 0x40
               	nop	word ptr cs:[rax + rax]
<L129>:
               	dec	rax
               	jne	 <L129>
               	mov	eax, 0x40
               	mov	rcx, qword ptr [rsp + 0xb0]
               	nop	word ptr cs:[rax + rax]
<L130>:
               	dec	rax
               	jne	 <L130>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L131>:
               	dec	rax
               	jne	 <L131>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L132>:
               	dec	rax
               	jne	 <L132>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L133>:
               	dec	rax
               	jne	 <L133>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L134>:
               	dec	rax
               	jne	 <L134>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L135>:
               	dec	rax
               	jne	 <L135>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L136>:
               	dec	rax
               	jne	 <L136>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L137>:
               	dec	rax
               	jne	 <L137>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L138>:
               	dec	rax
               	jne	 <L138>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L139>:
               	dec	rax
               	jne	 <L139>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L140>:
               	dec	rax
               	jne	 <L140>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L141>:
               	dec	rax
               	jne	 <L141>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L142>:
               	dec	rax
               	jne	 <L142>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L143>:
               	dec	rax
               	jne	 <L143>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L144>:
               	dec	rax
               	jne	 <L144>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L145>:
               	dec	rax
               	jne	 <L145>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L146>:
               	dec	rax
               	jne	 <L146>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L147>:
               	dec	rax
               	jne	 <L147>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L148>:
               	dec	rax
               	jne	 <L148>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L149>:
               	dec	rax
               	jne	 <L149>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L150>:
               	dec	rax
               	jne	 <L150>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L151>:
               	dec	rax
               	jne	 <L151>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L152>:
               	dec	rax
               	jne	 <L152>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L153>:
               	dec	rax
               	jne	 <L153>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L154>:
               	dec	rax
               	jne	 <L154>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L155>:
               	dec	rax
               	jne	 <L155>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L156>:
               	dec	rax
               	jne	 <L156>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L157>:
               	dec	rax
               	jne	 <L157>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L158>:
               	dec	rax
               	jne	 <L158>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L159>:
               	dec	rax
               	jne	 <L159>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L160>:
               	dec	rax
               	jne	 <L160>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L161>:
               	dec	rax
               	jne	 <L161>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L162>:
               	dec	rax
               	jne	 <L162>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L163>:
               	dec	rax
               	jne	 <L163>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L164>:
               	dec	rax
               	jne	 <L164>
               	vpxor	xmm1, xmm1, xmm1
               	vmovdqa	ymmword ptr [rsp + 0x240], ymm1
               	cmp	qword ptr [rsp + 0xa0], 0x0
               	je	 <L165>
               	mov	rdx, qword ptr [rsp + 0xa8]
               	mov	r11, qword ptr [rsp + 0xa0]
               	lea	rax, [rdx + 4*r11]
               	mov	qword ptr [rsp + 0x228], rax
               	lea	rax, [rax + 4*r11]
               	mov	qword ptr [rsp + 0x220], rax
               	lea	rax, [rax + 4*r11]
               	mov	qword ptr [rsp + 0x218], rax
               	lea	rax, [rax + 4*r11]
               	mov	qword ptr [rsp + 0x210], rax
               	lea	rax, [rax + 4*r11]
               	mov	qword ptr [rsp + 0x208], rax
               	lea	rax, [rax + 4*r11]
               	mov	qword ptr [rsp + 0x200], rax
               	lea	rax, [rax + 4*r11]
               	mov	qword ptr [rsp + 0x1f8], rax
               	lea	rax, [rax + 4*r11]
               	mov	qword ptr [rsp + 0x1f0], rax
               	lea	rax, [rax + 4*r11]
               	mov	qword ptr [rsp + 0x1e8], rax
               	mov	rax, qword ptr [rsp + 0x98]
               	lea	rax, [rdx + 8*rax]
               	mov	qword ptr [rsp + 0x98], rax
               	mov	dword ptr [rsp + 0x4], 0x0
               	mov	rdi, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0xd8], r8
               	mov	r15, r12
               	mov	r8, qword ptr [rsp + 0xd0]
               	mov	r14, rbx
               	nop	word ptr [rax + rax]
<L166>:
               	mov	qword ptr [rsp + 0x230], r14
               	mov	qword ptr [rsp + 0x238], r15
               	mov	qword ptr [rsp + 0xb8], rdi
               	mov	qword ptr [rsp + 0xb0], rcx
               	vpextrq	rsi, xmm0, 0x1
               	lea	rax, [rsi + 4*rsi]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rdx, [rcx + 4*rcx]
               	rol	rdx, 0x7
               	lea	r9, [rdx + 8*rdx]
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rdx, [rcx + 4*rcx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rbx, qword ptr [rsp + 0x80]
               	lea	rdi, [rbx + 4*rbx]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	lea	r10, [r8 + 4*r8]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	r11, [rcx + 4*rcx]
               	rol	r11, 0x7
               	lea	r11, [r11 + 8*r11]
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	r14, [rcx + 4*rcx]
               	rol	r14, 0x7
               	lea	r14, [r14 + 8*r14]
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	r15, [rcx + 4*rcx]
               	rol	r15, 0x7
               	lea	r15, [r15 + 8*r15]
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	r12, [rcx + 4*rcx]
               	rol	r12, 0x7
               	lea	r13, [r12 + 8*r12]
               	mov	rcx, qword ptr [rsp + 0x8]
               	lea	r12, [rcx + 4*rcx]
               	rol	r12, 0x7
               	lea	r12, [r12 + 8*r12]
               	vmovq	xmm1, r9
               	mov	rcx, qword ptr [rsp + 0xd8]
               	lea	r9, [rcx + 4*rcx]
               	rol	r9, 0x7
               	lea	r9, [r9 + 8*r9]
               	vmovq	xmm2, rdx
               	vmovq	xmm3, rdi
               	vmovq	xmm4, r10
               	vmovq	xmm5, r11
               	vmovq	xmm6, r14
               	vmovq	xmm7, r15
               	vmovq	xmm8, r13
               	vmovq	xmm9, r12
               	vmovq	xmm10, r9
               	mov	edi, eax
               	shr	edi, 0x8
               	mov	r11d, eax
               	shr	r11d, 0x10
               	mov	r14d, eax
               	shr	r14d, 0x18
               	mov	r15, rax
               	shr	r15, 0x20
               	mov	r10, rax
               	shr	r10, 0x28
               	mov	rdx, rax
               	shr	rdx, 0x30
               	mov	r9, rax
               	shr	r9, 0x38
               	movzx	r12d, al
               	imul	r12d, r12d, 0x4f
               	shr	r12d, 0xa
               	lea	r13d, [r12 + 2*r12]
               	lea	r12d, [r12 + 4*r13]
               	sub	al, r12b
               	movzx	edi, dil
               	imul	r12d, edi, 0x4f
               	shr	r12d, 0xa
               	lea	r13d, [r12 + 2*r12]
               	lea	r12d, [r12 + 4*r13]
               	sub	dil, r12b
               	movzx	r11d, r11b
               	imul	r12d, r11d, 0x4f
               	shr	r12d, 0xa
               	lea	r13d, [r12 + 2*r12]
               	lea	r12d, [r12 + 4*r13]
               	sub	r11b, r12b
               	imul	r12d, r14d, 0x4f
               	shr	r12d, 0xa
               	lea	r13d, [r12 + 2*r12]
               	lea	r12d, [r12 + 4*r13]
               	sub	r14b, r12b
               	movzx	r12d, r15b
               	imul	r12d, r12d, 0x4f
               	shr	r12d, 0xa
               	lea	r13d, [r12 + 2*r12]
               	lea	r12d, [r12 + 4*r13]
               	sub	r15b, r12b
               	movzx	r12d, r10b
               	imul	r12d, r12d, 0x4f
               	shr	r12d, 0xa
               	lea	r13d, [r12 + 2*r12]
               	lea	r12d, [r12 + 4*r13]
               	sub	r10b, r12b
               	movzx	r12d, dl
               	imul	r12d, r12d, 0x4f
               	shr	r12d, 0xa
               	lea	r13d, [r12 + 2*r12]
               	lea	r12d, [r12 + 4*r13]
               	sub	dl, r12b
               	imul	r12d, r9d, 0x4f
               	shr	r12d, 0xa
               	lea	r13d, [r12 + 2*r12]
               	lea	r12d, [r12 + 4*r13]
               	sub	r9b, r12b
               	movzx	r9d, r9b
               	shl	r9, 0x38
               	movzx	edx, dl
               	shl	rdx, 0x30
               	or	rdx, r9
               	movzx	r9d, r10b
               	shl	r9, 0x28
               	or	r9, rdx
               	movzx	edx, r15b
               	mov	r13, qword ptr [rsp + 0x28]
               	shl	rdx, 0x20
               	or	rdx, r9
               	movzx	r9d, r14b
               	shl	r9d, 0x18
               	or	r9, rdx
               	movzx	r10d, r11b
               	mov	r11, qword ptr [rsp + 0x88]
               	shl	r10d, 0x10
               	or	r10, r9
               	mov	r9, qword ptr [rsp + 0x90]
               	movzx	edx, dil
               	shl	edx, 0x8
               	or	rdx, r10
               	mov	r15, qword ptr [rsp + 0x30]
               	mov	rdi, qword ptr [rsp + 0xb0]
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpmovzxbd	ymm2, xmm2      # ymm2 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm2, ymm2
               	vpmovzxbd	ymm3, xmm3      # ymm3 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
               	vcvtdq2ps	ymm3, ymm3
               	vpmovzxbd	ymm4, xmm4      # ymm4 = xmm4[0],zero,zero,zero,xmm4[1],zero,zero,zero,xmm4[2],zero,zero,zero,xmm4[3],zero,zero,zero,xmm4[4],zero,zero,zero,xmm4[5],zero,zero,zero,xmm4[6],zero,zero,zero,xmm4[7],zero,zero,zero
               	vcvtdq2ps	ymm4, ymm4
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
               	movzx	eax, al
               	or	rax, rdx
               	mov	edx, dword ptr [rsp + 0x4]
               	mov	rcx, qword ptr [rsp + 0xa8]
               	vmovaps	ymmword ptr [rcx + 4*rdx], ymm1
               	mov	r10, qword ptr [rsp + 0x228]
               	vmovaps	ymmword ptr [r10 + 4*rdx], ymm2
               	mov	r10, qword ptr [rsp + 0x220]
               	vmovaps	ymmword ptr [r10 + 4*rdx], ymm3
               	mov	r10, qword ptr [rsp + 0x218]
               	vmovaps	ymmword ptr [r10 + 4*rdx], ymm4
               	mov	r10, qword ptr [rsp + 0x210]
               	vmovaps	ymmword ptr [r10 + 4*rdx], ymm5
               	mov	r10, qword ptr [rsp + 0x208]
               	vmovaps	ymmword ptr [r10 + 4*rdx], ymm6
               	mov	r10, qword ptr [rsp + 0x200]
               	vmovaps	ymmword ptr [r10 + 4*rdx], ymm7
               	mov	r10, qword ptr [rsp + 0x1f8]
               	vmovaps	ymmword ptr [r10 + 4*rdx], ymm8
               	mov	r10, qword ptr [rsp + 0x1f0]
               	vmovaps	ymmword ptr [r10 + 4*rdx], ymm9
               	mov	r10, qword ptr [rsp + 0x1e8]
               	vmovaps	ymmword ptr [r10 + 4*rdx], ymm10
               	mov	r10, qword ptr [rsp + 0x98]
               	mov	qword ptr [r10 + rdx], rax
               	vpermq	ymm1, ymm0, 0xe3        # ymm1 = ymm0[3,0,2,3]
               	vpermq	ymm2, ymm0, 0xe9        # ymm2 = ymm0[1,2,2,3]
               	vpxor	xmm1, xmm2, xmm1
               	vpextrq	rax, xmm1, 0x1
               	shl	rsi, 0x11
               	xor	rax, rsi
               	vmovq	xmm2, rax
               	vmovq	rax, xmm1
               	rol	rax, 0x2d
               	vmovq	xmm3, rax
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r12, qword ptr [rsp + 0x158]
               	xor	r11, r12
               	xor	r9, rdi
               	xor	rdi, r11
               	mov	qword ptr [rsp + 0xb0], rdi
               	xor	r12, r9
               	mov	qword ptr [rsp + 0x158], r12
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x88], r11
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x90], r9
               	mov	rdx, r15
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	r15, qword ptr [rsp + 0xc8]
               	mov	rcx, qword ptr [rsp + 0x148]
               	xor	r15, rcx
               	mov	r9, qword ptr [rsp + 0x150]
               	xor	r9, rdx
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x30], rdx
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x148], rcx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x150], r9
               	xor	r15, rax
               	mov	qword ptr [rsp + 0xc8], r15
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0xc0]
               	xor	rdi, qword ptr [rsp + 0x78]
               	mov	r12, qword ptr [rsp + 0x140]
               	xor	r12, rbx
               	xor	rbx, rdi
               	mov	qword ptr [rsp + 0x80], rbx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xc0], rdi
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x130]
               	xor	r9, qword ptr [rsp + 0x138]
               	mov	rcx, qword ptr [rsp + 0x120]
               	xor	rcx, r8
               	xor	r8, r9
               	mov	qword ptr [rsp + 0xd0], r8
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x130], r9
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x70]
               	xor	r9, qword ptr [rsp + 0x68]
               	mov	r10, qword ptr [rsp + 0xe0]
               	xor	r10, r13
               	xor	r13, r9
               	mov	qword ptr [rsp + 0x28], r13
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x70], r9
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x60]
               	xor	r9, qword ptr [rsp + 0x58]
               	mov	rbx, qword ptr [rsp + 0x1a0]
               	xor	rbx, rdx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x20], rdx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x60], r9
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	rdi, qword ptr [rsp + 0x48]
               	xor	r9, rdi
               	mov	r8, qword ptr [rsp + 0x180]
               	xor	r8, rdx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x18], rdx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x50], r9
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x160]
               	mov	r13, qword ptr [rsp + 0x40]
               	xor	r9, r13
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	rsi, rdx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x10], rdx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x160], r9
               	mov	r11, qword ptr [rsp + 0x8]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x110]
               	mov	rdx, qword ptr [rsp + 0x38]
               	xor	r9, rdx
               	xor	qword ptr [rsp + 0xb8], r11
               	xor	r11, r9
               	mov	qword ptr [rsp + 0x8], r11
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x110], r9
               	mov	rax, qword ptr [rsp + 0xd8]
               	mov	r11, rax
               	shl	r11, 0x11
               	mov	r15, qword ptr [rsp + 0x238]
               	mov	r14, qword ptr [rsp + 0x230]
               	xor	r14, r15
               	mov	r9, qword ptr [rsp + 0x118]
               	xor	r9, rax
               	xor	rax, r14
               	mov	qword ptr [rsp + 0xd8], rax
               	xor	r14, r11
               	xor	qword ptr [rsp + 0x78], r12
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x140], r12
               	mov	r11d, dword ptr [rsp + 0x4]
               	add	r11d, 0x8
               	xor	qword ptr [rsp + 0x138], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x120], rcx
               	vpxor	xmm0, xmm1, xmm0
               	xor	qword ptr [rsp + 0x68], r10
               	mov	rcx, qword ptr [rsp + 0xb0]
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0xe0], r10
               	vpbroadcastq	ymm1, xmm2
               	xor	qword ptr [rsp + 0x58], rbx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x1a0], rbx
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	xor	rdi, r8
               	mov	qword ptr [rsp + 0x48], rdi
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x180], r8
               	mov	r8, qword ptr [rsp + 0xd0]
               	vpbroadcastq	ymm1, xmm3
               	xor	r13, rsi
               	mov	qword ptr [rsp + 0x40], r13
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x128], rsi
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	mov	rdi, qword ptr [rsp + 0xb8]
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x38], rdx
               	rol	rdi, 0x2d
               	xor	r15, r9
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x118], r9
               	mov	dword ptr [rsp + 0x4], r11d
               	cmp	dword ptr [rsp + 0xa0], r11d
               	jne	 <L166>
               	mov	eax, dword ptr [rsp + 0x4]
               	test	eax, eax
               	je	 <L165>
               	shr	eax, 0x3
               	lea	rdi, [rsp + 0x260]
               	xor	r15d, r15d
               	mov	edx, 0x400
               	mov	ebx, eax
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	esi, ebx
               	mov	r13, qword ptr [rsp + 0xa0]
               	lea	rax, [8*r13]
               	add	rax, r13
               	mov	rdx, qword ptr [rsp + 0xa8]
               	lea	r12, [rax + 2*rax]
               	add	r12, rdx
               	add	r12, r13
               	shl	r13, 0x5
               	add	r13, rdx
               	lea	rbx, [rdx + 4*rax]
               	vmovdqa	ymm5, ymmword ptr  <memset+0x13a0>
               	vmovdqa	ymm6, ymmword ptr  <memset+0x13c0>
               	vpbroadcastd	ymm7, dword ptr  <memset+0x1410>
               	vpbroadcastd	ymm8, dword ptr  <memset+0x1400>
               	vpbroadcastd	ymm9, dword ptr  <memset+0x140c>
               	vpbroadcastd	ymm10, dword ptr  <memset+0x1404>
               	mov	r10, qword ptr [rsp + 0x98]
               	vmovdqa	ymmword ptr [rsp + 0xe0], ymm7
               	vmovdqa	ymmword ptr [rsp + 0x1a0], ymm8
               	vmovdqa	ymmword ptr [rsp + 0x180], ymm9
               	vmovdqa	ymmword ptr [rsp + 0x160], ymm10
               	nop	word ptr cs:[rax + rax]
<L175>:
               	mov	eax, esi
               	neg	eax
               	mov	dword ptr [rsp + 0x4], esi
               	and	eax, esi
               	lea	r14, [rax + r15]
               	test	eax, eax
               	je	 <L167>
               	mov	edx, 0x1
               	xor	esi, esi
               	mov	edi, 0x1
               	jmp	 <L168>
               	nop	word ptr cs:[rax + rax]
<L170>:
               	mov	edi, ecx
               	movsxd	rsi, ecx
               	shl	rsi, 0x5
               	vmovaps	ymmword ptr [rsp + rsi + 0x260], ymm0
               	inc	r15
               	mov	esi, 0xfffffffe
               	sub	esi, edx
               	inc	edx
               	bsr	r8d, edx
               	xor	r8d, 0x1f
               	popcnt	esi, esi
               	sub	esi, r8d
               	cmp	r15, r14
               	je	 <L169>
<L168>:
               	vpmovzxbd	ymm0, qword ptr [r10 + 8*r15]
               	mov	ecx, esi
               	vpermd	ymm1, ymm0, ymm5
               	vpermd	ymm2, ymm0, ymm6
               	vpslld	ymm3, ymm0, 0x1c
               	vblendvps	ymm1, ymm1, ymm2, ymm3
               	vpsllvd	ymm2, ymm7, ymm0
               	mov	rsi, r15
               	shl	rsi, 0x5
               	vmaskmovps	ymm2, ymm2, ymmword ptr [r12 + rsi]
               	vpsllvd	ymm3, ymm8, ymm0
               	vmaskmovps	ymm4, ymm3, ymmword ptr [r13 + rsi]
               	vmulps	ymm1, ymm2, ymm1
               	vblendvps	ymm3, ymm2, ymm4, ymm3
               	vmulps	ymm1, ymm1, ymm3
               	vpsllvd	ymm3, ymm9, ymm0
               	vmaskmovps	ymm4, ymm3, ymmword ptr [rbx + rsi]
               	vblendvps	ymm2, ymm2, ymm4, ymm3
               	vmulps	ymm2, ymm2, ymm1
               	vpsllvd	ymm0, ymm10, ymm0
               	vblendvps	ymm0, ymm1, ymm2, ymm0
               	mov	r8d, ecx
               	sub	r8d, edi
               	jl	 <L170>
               	movsxd	rsi, edi
               	lea	r9d, [r8 + 0x1]
               	and	r9d, 0x3
               	je	 <L171>
               	dec	r9d
               	mov	r10, rsi
               	shl	r10, 0x5
               	add	r10, rsp
               	add	r10, 0x260
               	mov	r11d, ecx
               	sub	r11b, dil
               	inc	r11b
               	movzx	edi, r11b
               	and	edi, 0x3
               	shl	edi, 0x5
               	xor	r11d, r11d
               	nop	word ptr cs:[rax + rax]
<L172>:
               	vaddps	ymm0, ymm0, ymmword ptr [r10 + r11]
               	add	r11, 0x20
               	cmp	edi, r11d
               	jne	 <L172>
               	add	rsi, r9
               	inc	rsi
               	mov	r10, qword ptr [rsp + 0x98]
<L171>:
               	cmp	r8d, 0x3
               	jb	 <L170>
               	mov	edi, ecx
               	sub	edi, esi
               	inc	edi
               	shl	rsi, 0x5
               	lea	r8, [rsp + 0x2c0]
               	add	rsi, r8
               	nop	dword ptr [rax]
<L173>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi - 0x60]
               	vaddps	ymm0, ymm0, ymmword ptr [rsi - 0x40]
               	vaddps	ymm0, ymm0, ymmword ptr [rsi - 0x20]
               	vaddps	ymm0, ymm0, ymmword ptr [rsi]
               	sub	rsi, -0x80
               	add	edi, -0x4
               	jne	 <L173>
               	jmp	 <L170>
               	nop	word ptr cs:[rax + rax]
<L167>:
               	mov	ecx, 0x1
<L169>:
               	movsxd	rdx, ecx
               	shl	rdx, 0x5
               	add	rdx, rsp
               	add	rdx, 0x260
               	mov	esi, dword ptr [rsp + 0x4]
               	sub	esi, eax
               	je	 <L174>
               	vmovdqa	ymm0, ymmword ptr [rdx]
               	vmovdqa	ymmword ptr [rdx + 0x20], ymm0
               	mov	r15, r14
               	test	ecx, ecx
               	js	 <L175>
               	mov	edx, ecx
               	shl	rdx, 0x5
               	add	rdx, 0x20
               	lea	rdi, [rsp + 0x260]
               	mov	r15d, esi
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovdqa	ymm10, ymmword ptr [rsp + 0x160]
               	vmovdqa	ymm9, ymmword ptr [rsp + 0x180]
               	vmovdqa	ymm8, ymmword ptr [rsp + 0x1a0]
               	vmovdqa	ymm7, ymmword ptr [rsp + 0xe0]
               	vmovdqa	ymm6, ymmword ptr  <memset+0x13c0>
               	vmovdqa	ymm5, ymmword ptr  <memset+0x13a0>
               	mov	esi, r15d
               	mov	r10, qword ptr [rsp + 0x98]
               	mov	r15, r14
               	jmp	 <L175>
<L174>:
               	vmovdqa	ymm0, ymmword ptr [rdx]
               	vmovdqa	ymmword ptr [rsp + 0x240], ymm0
<L165>:
               	mov	rdi, qword ptr [rsp + 0x1d8]
               	test	rdi, rdi
               	je	 <L176>
               	vzeroupper
               	call	 <free@plt>
<L176>:
               	cmp	qword ptr [rsp + 0xa8], 0x0
               	mov	rbx, qword ptr [rsp + 0x1e0]
               	je	 <L177>
               	mov	rdi, qword ptr [rsp + 0xa8]
               	vzeroupper
               	call	 <free@plt>
<L177>:
               	cmp	ebx, 0x2a
               	jne	 <L178>
               	cmp	dword ptr [rsp + 0xa0], 0x186a0
               	jne	 <L178>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x240]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <memset+0x1408>
               	jne	 <L179>
<L178>:
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
<L179>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0xe0], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0xe0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x81f8>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x81d8>
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
