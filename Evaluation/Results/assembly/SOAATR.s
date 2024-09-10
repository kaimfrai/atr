
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
               	call	qword ptr  <memset+0x82f0>
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
               	mov	rax, qword ptr  <memset+0x8300>
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
               	mov	rax, qword ptr  <memset+0x8308>
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
               	cmp	qword ptr , 0x0 <memset+0x8310>
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
               	and	rsp, -0x40
               	sub	rsp, 0x640
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r14d, byte ptr [rcx]
               	add	r14d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
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
               	movabs	r15, 0x180ec6d33cfd0aba
               	mov	ebx, ecx
               	lea	rax, [rbx + 4*rbx]
               	mov	qword ptr [rsp + 0x30], rax
               	lea	rsi, [rbx + 8*rax]
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	qword ptr [rsp + 0xe0], rax
               	mov	esi, 0xaaaaaaab
               	mov	qword ptr [rsp + 0x100], rbx
               	imul	rsi, rbx
               	shr	rsi, 0x1e
               	and	rsi, -0x20
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	qword ptr [rsp + 0x188], rax
               	movsxd	rax, r14d
               	vpbroadcastq	ymm0, rax
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
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x13e0>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x13f0>
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovq	rax, xmm0
               	vpextrq	rcx, xmm0, 0x1
               	vextracti128	xmm1, ymm0, 0x1
               	vmovq	rdx, xmm1
               	vpextrq	rsi, xmm1, 0x1
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x60], 0x0
               	mov	qword ptr [rsp + 0x90], 0x0
               	xor	r12d, r12d
               	xor	ebx, ebx
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
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
               	bt	r15, rdi
               	jae	 <L6>
               	xor	rbx, rax
               	xor	r12, rcx
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x60], rsi
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
               	xor	rbx, rax
               	xor	r12, rcx
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x60], rsi
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
               	rorx	rsi, rsi, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L11>
<L10>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L12>
               	xor	rbx, rax
               	xor	r12, rcx
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x60], rsi
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
               	rorx	rsi, rsi, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	rbx, rax
               	xor	r12, rcx
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x60], rsi
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0x190], r14
               	xor	edi, edi
               	xor	r10d, r10d
               	mov	rax, qword ptr [rsp + 0x60]
               	xor	r13d, r13d
               	mov	rcx, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x48], 0x0
               	mov	rdx, r12
               	mov	rsi, rbx
               	xor	r8d, r8d
               	jmp	 <L16>
               	nop	dword ptr [rax + rax]
<L18>:
               	xor	r8, rsi
               	mov	r14, r8
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	r13, rcx
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
               	mov	r8, r14
               	je	 <L17>
<L16>:
               	bt	r15, rdi
               	jb	 <L18>
               	mov	r14, r8
               	jmp	 <L19>
<L17>:
               	mov	qword ptr [rsp + 0x150], rbx
               	xor	edi, edi
               	movabs	rbx, -0x2a59ed990f36c6d4
               	jmp	 <L20>
               	nop	word ptr [rax + rax]
<L22>:
               	xor	r8, rsi
               	mov	r14, r8
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	r13, rcx
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
               	mov	r8, r14
               	je	 <L21>
<L20>:
               	bt	rbx, rdi
               	jb	 <L22>
               	mov	r14, r8
               	jmp	 <L23>
<L21>:
               	xor	edi, edi
               	movabs	rbx, -0x56a7d9e71fc03656
               	jmp	 <L24>
               	nop	word ptr cs:[rax + rax]
<L26>:
               	xor	r8, rsi
               	mov	r14, r8
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	r13, rcx
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
               	mov	r8, r14
               	je	 <L25>
<L24>:
               	bt	rbx, rdi
               	jb	 <L26>
               	mov	r14, r8
               	jmp	 <L27>
<L25>:
               	xor	edi, edi
               	movabs	rbx, 0x39abdc4529b1661c
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
<L30>:
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	r13, rcx
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
               	mov	r8, qword ptr [rsp + 0xf8]
               	je	 <L29>
<L28>:
               	bt	rbx, rdi
               	jb	 <L30>
               	mov	qword ptr [rsp + 0xf8], r8
               	jmp	 <L31>
<L29>:
               	xor	edi, edi
               	xor	r14d, r14d
               	mov	rax, r10
               	xor	ebx, ebx
               	mov	rcx, r13
               	mov	qword ptr [rsp + 0x58], 0x0
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, r8
               	mov	qword ptr [rsp + 0xd8], 0x0
               	jmp	 <L32>
               	nop
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
               	bt	r15, rdi
               	jae	 <L34>
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	rbx, rcx
               	xor	r14, rax
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
               	mov	r8, rbx
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	r8, rcx
               	mov	rbx, r8
               	xor	r14, rax
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
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	rbx, rcx
               	xor	r14, rax
               	jmp	 <L40>
<L39>:
               	xor	edi, edi
               	jmp	 <L41>
               	nop
<L43>:
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0xf0], rbx
               	xor	r14, rax
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
               	mov	rbx, qword ptr [rsp + 0xf0]
               	je	 <L42>
<L41>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jb	 <L43>
               	mov	qword ptr [rsp + 0xf0], rbx
               	jmp	 <L44>
<L42>:
               	mov	qword ptr [rsp + 0x160], r13
               	xor	edi, edi
               	xor	r13d, r13d
               	mov	rax, r14
               	xor	r8d, r8d
               	mov	rcx, rbx
               	mov	qword ptr [rsp + 0x40], 0x0
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0xd8]
               	xor	r15d, r15d
               	jmp	 <L45>
               	nop	word ptr cs:[rax + rax]
<L47>:
               	xor	r15, rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	r8, rcx
               	mov	rbx, r8
               	xor	r13, rax
<L48>:
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
               	je	 <L46>
<L45>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, rdi
               	jb	 <L47>
               	mov	rbx, r8
               	jmp	 <L48>
<L46>:
               	xor	edi, edi
               	mov	rbx, r13
               	jmp	 <L49>
               	nop	word ptr cs:[rax + rax]
<L51>:
               	mov	r13, r15
               	xor	r13, rsi
               	mov	r15, r13
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	r8, rcx
               	mov	r13, r8
               	xor	rbx, rax
<L52>:
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
               	mov	r8, r13
               	je	 <L50>
<L49>:
               	movabs	r13, -0x2a59ed990f36c6d4
               	bt	r13, rdi
               	jb	 <L51>
               	mov	r13, r8
               	jmp	 <L52>
<L50>:
               	xor	edi, edi
               	mov	r13, r15
               	jmp	 <L53>
               	nop	dword ptr [rax + rax]
<L55>:
               	xor	r13, rsi
               	mov	r15, r13
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	r8, rcx
               	mov	r13, r8
               	xor	rbx, rax
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
               	mov	r8, r13
               	mov	r13, r15
               	je	 <L54>
<L53>:
               	movabs	r15, -0x56a7d9e71fc03656
               	bt	r15, rdi
               	jb	 <L55>
               	mov	r15, r13
               	mov	r13, r8
               	jmp	 <L56>
<L54>:
               	xor	edi, edi
               	movabs	r9, 0x180ec6d33cfd0aba
               	movabs	r15, 0x39abdc4529b1661c
               	jmp	 <L57>
               	nop
<L59>:
               	xor	r13, rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xe8], r8
               	xor	rbx, rax
<L60>:
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
               	mov	r8, qword ptr [rsp + 0xe8]
               	je	 <L58>
<L57>:
               	bt	r15, rdi
               	jb	 <L59>
               	mov	qword ptr [rsp + 0xe8], r8
               	jmp	 <L60>
<L58>:
               	xor	edi, edi
               	xor	r15d, r15d
               	mov	rax, rbx
               	mov	qword ptr [rsp + 0xd0], 0x0
               	mov	rcx, r8
               	mov	qword ptr [rsp + 0x28], 0x0
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, r13
               	mov	qword ptr [rsp + 0x80], 0x0
               	jmp	 <L61>
               	nop	dword ptr [rax]
<L63>:
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
               	je	 <L62>
<L61>:
               	bt	r9, rdi
               	mov	r8, qword ptr [rsp + 0x80]
               	jae	 <L63>
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	r15, rax
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	jmp	 <L64>
               	nop	word ptr cs:[rax + rax]
<L66>:
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
               	je	 <L65>
<L64>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	r15, rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L68>
<L67>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	r15, rax
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
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L71>
<L70>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	r15, rax
               	jmp	 <L72>
<L71>:
               	mov	qword ptr [rsp + 0x148], r12
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x78], 0x0
               	mov	rax, r15
               	mov	qword ptr [rsp + 0xc8], 0x0
               	mov	rcx, qword ptr [rsp + 0xd0]
               	mov	qword ptr [rsp + 0x88], 0x0
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0x80]
               	mov	qword ptr [rsp + 0xc0], 0x0
               	jmp	 <L73>
<L75>:
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
               	je	 <L74>
<L73>:
               	bt	r9, rdi
               	mov	r8, qword ptr [rsp + 0x78]
               	jae	 <L75>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x78], r8
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	jmp	 <L76>
               	nop	word ptr cs:[rax + rax]
<L78>:
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
               	je	 <L77>
<L76>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L78>
<L77>:
               	xor	edi, edi
               	jmp	 <L79>
               	nop	dword ptr [rax + rax]
<L81>:
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
               	je	 <L80>
<L79>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L81>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L81>
<L80>:
               	xor	edi, edi
               	jmp	 <L82>
               	nop	dword ptr [rax + rax]
<L84>:
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
               	je	 <L83>
<L82>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L84>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L84>
<L83>:
               	mov	qword ptr [rsp + 0x140], r13
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x70], 0x0
               	mov	rax, qword ptr [rsp + 0x78]
               	mov	qword ptr [rsp + 0xb8], 0x0
               	mov	rcx, qword ptr [rsp + 0xc8]
               	xor	r13d, r13d
               	mov	rdx, qword ptr [rsp + 0x88]
               	mov	r8, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0xb0], 0x0
               	jmp	 <L85>
               	nop	word ptr cs:[rax + rax]
<L87>:
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
               	je	 <L86>
<L85>:
               	bt	r9, rsi
               	mov	rdi, qword ptr [rsp + 0x70]
               	jae	 <L87>
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x70], rdi
               	jmp	 <L87>
<L86>:
               	xor	esi, esi
               	jmp	 <L88>
               	nop	word ptr cs:[rax + rax]
<L90>:
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
               	je	 <L89>
<L88>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	bt	rdi, rsi
               	jae	 <L90>
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x70], rax
               	jmp	 <L90>
<L89>:
               	xor	esi, esi
               	jmp	 <L91>
               	nop	word ptr cs:[rax + rax]
<L93>:
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
               	je	 <L92>
<L91>:
               	movabs	rdi, -0x56a7d9e71fc03656
               	bt	rdi, rsi
               	jae	 <L93>
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x70], rax
               	jmp	 <L93>
<L92>:
               	xor	esi, esi
               	jmp	 <L94>
               	nop	word ptr cs:[rax + rax]
<L96>:
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
               	je	 <L95>
<L94>:
               	movabs	rdi, 0x39abdc4529b1661c
               	bt	rdi, rsi
               	jae	 <L96>
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x70], rax
               	jmp	 <L96>
<L95>:
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xa8], 0x0
               	mov	rax, qword ptr [rsp + 0x70]
               	mov	qword ptr [rsp + 0xa0], 0x0
               	mov	rcx, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x50], 0x0
               	mov	rdx, r13
               	mov	r8, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0x98], 0x0
               	jmp	 <L97>
               	nop	dword ptr [rax + rax]
<L99>:
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
               	je	 <L98>
<L97>:
               	bt	r9, rsi
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L99>
<L98>:
               	xor	esi, esi
               	jmp	 <L100>
               	nop
<L102>:
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
               	je	 <L101>
<L100>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	bt	rdi, rsi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L102>
<L101>:
               	xor	esi, esi
               	jmp	 <L103>
               	nop	dword ptr [rax + rax]
<L105>:
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
               	je	 <L104>
<L103>:
               	movabs	rdi, -0x56a7d9e71fc03656
               	bt	rdi, rsi
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L105>
<L104>:
               	xor	esi, esi
               	jmp	 <L106>
               	nop	dword ptr [rax + rax]
<L108>:
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
               	je	 <L107>
<L106>:
               	movabs	rdi, 0x39abdc4529b1661c
               	bt	rdi, rsi
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L108>
<L107>:
               	mov	qword ptr [rsp + 0x168], rbx
               	mov	qword ptr [rsp + 0x108], r10
               	xor	esi, esi
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xa8]
               	xor	ecx, ecx
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	qword ptr [rsp + 0x38], 0x0
               	mov	rbx, qword ptr [rsp + 0x50]
               	mov	r10, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x68], 0x0
               	jmp	 <L109>
               	nop	dword ptr [rax + rax]
<L111>:
               	mov	rdx, rbx
               	shl	rdx, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rdx
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L110>
<L109>:
               	bt	r9, rsi
               	mov	rdx, qword ptr [rsp + 0x68]
               	jae	 <L111>
               	xor	rdx, r10
               	mov	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x38], rbx
               	xor	rcx, r8
               	xor	rdi, rax
               	jmp	 <L111>
<L110>:
               	xor	esi, esi
               	jmp	 <L112>
               	nop	dword ptr [rax]
<L114>:
               	xor	qword ptr [rsp + 0x68], r10
               	xor	qword ptr [rsp + 0x38], rbx
               	mov	rcx, rdx
               	xor	rcx, r8
               	xor	rdi, rax
<L115>:
               	mov	rdx, rbx
               	shl	rdx, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rdx
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L113>
<L112>:
               	mov	rdx, rcx
               	movabs	rcx, -0x2a59ed990f36c6d4
               	bt	rcx, rsi
               	jb	 <L114>
               	mov	rcx, rdx
               	jmp	 <L115>
<L113>:
               	xor	esi, esi
               	jmp	 <L116>
               	nop	word ptr cs:[rax + rax]
<L118>:
               	xor	qword ptr [rsp + 0x68], r10
               	xor	qword ptr [rsp + 0x38], rbx
               	mov	rcx, rdx
               	xor	rcx, r8
               	xor	rdi, rax
<L119>:
               	mov	rdx, rbx
               	shl	rdx, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rdx
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L117>
<L116>:
               	mov	rdx, rcx
               	movabs	rcx, -0x56a7d9e71fc03656
               	bt	rcx, rsi
               	jb	 <L118>
               	mov	rcx, rdx
               	jmp	 <L119>
<L117>:
               	xor	esi, esi
               	jmp	 <L120>
               	nop	word ptr cs:[rax + rax]
<L122>:
               	xor	qword ptr [rsp + 0x68], r10
               	xor	qword ptr [rsp + 0x38], rbx
               	mov	rcx, rdx
               	xor	rcx, r8
               	xor	rdi, rax
<L123>:
               	mov	rdx, rbx
               	shl	rdx, 0x11
               	xor	r8, r10
               	xor	rax, rbx
               	xor	rbx, r8
               	xor	r10, rax
               	xor	r8, rdx
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L121>
<L120>:
               	mov	rdx, rcx
               	movabs	rcx, 0x39abdc4529b1661c
               	bt	rcx, rsi
               	jb	 <L122>
               	mov	rcx, rdx
               	jmp	 <L123>
<L121>:
               	mov	qword ptr [rsp + 0x158], r15
               	mov	qword ptr [rsp + 0x170], r14
               	mov	r14, rdi
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x138], r14
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x130], rcx
               	mov	r15, rcx
               	xor	r12d, r12d
               	mov	r10, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0x68]
               	xor	ecx, ecx
               	jmp	 <L124>
               	nop
<L126>:
               	mov	rcx, rdx
               	xor	rcx, rsi
               	xor	r12, r10
               	xor	r11, r15
               	xor	rax, r14
<L127>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r15, rsi
               	xor	r14, r10
               	xor	r10, r15
               	xor	rsi, r14
               	xor	r15, rdx
               	rorx	r14, r14, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L125>
<L124>:
               	mov	rdx, rcx
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rdi
               	jb	 <L126>
               	mov	rcx, rdx
               	jmp	 <L127>
<L125>:
               	xor	edi, edi
               	jmp	 <L128>
<L130>:
               	mov	rcx, rdx
               	xor	rcx, rsi
               	xor	r12, r10
               	xor	r11, r15
               	xor	rax, r14
<L131>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r15, rsi
               	xor	r14, r10
               	xor	r10, r15
               	xor	rsi, r14
               	xor	r15, rdx
               	rorx	r14, r14, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L129>
<L128>:
               	mov	rdx, rcx
               	movabs	rcx, -0x2a59ed990f36c6d4
               	bt	rcx, rdi
               	jb	 <L130>
               	mov	rcx, rdx
               	jmp	 <L131>
<L129>:
               	xor	edi, edi
               	jmp	 <L132>
<L134>:
               	mov	rcx, rdx
               	xor	rcx, rsi
               	xor	r12, r10
               	xor	r11, r15
               	xor	rax, r14
<L135>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r15, rsi
               	xor	r14, r10
               	xor	r10, r15
               	xor	rsi, r14
               	xor	r15, rdx
               	rorx	r14, r14, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L133>
<L132>:
               	mov	rdx, rcx
               	movabs	rcx, -0x56a7d9e71fc03656
               	bt	rcx, rdi
               	jb	 <L134>
               	mov	rcx, rdx
               	jmp	 <L135>
<L133>:
               	xor	edi, edi
               	jmp	 <L136>
<L138>:
               	mov	rcx, rdx
               	xor	rcx, rsi
               	xor	r12, r10
               	xor	r11, r15
               	xor	rax, r14
<L139>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r15, rsi
               	xor	r14, r10
               	xor	r10, r15
               	xor	rsi, r14
               	xor	r15, rdx
               	rorx	r14, r14, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L137>
<L136>:
               	mov	rdx, rcx
               	movabs	rcx, 0x39abdc4529b1661c
               	bt	rcx, rdi
               	jb	 <L138>
               	mov	rcx, rdx
               	jmp	 <L139>
<L137>:
               	mov	edx, 0x40
               	nop	word ptr cs:[rax + rax]
<L140>:
               	dec	rdx
               	jne	 <L140>
               	mov	edx, 0x40
               	mov	r15, qword ptr [rsp + 0x100]
               	mov	r9, qword ptr [rsp + 0x40]
               	mov	qword ptr [rsp + 0x118], r13
               	nop
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
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L169>:
               	dec	rdx
               	jne	 <L169>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L170>:
               	dec	rdx
               	jne	 <L170>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L171>:
               	dec	rdx
               	jne	 <L171>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L172>:
               	dec	rdx
               	jne	 <L172>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L173>:
               	dec	rdx
               	jne	 <L173>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L174>:
               	dec	rdx
               	jne	 <L174>
               	mov	edx, 0x40
               	nop	word ptr [rax + rax]
<L175>:
               	dec	rdx
               	jne	 <L175>
               	vpxor	xmm1, xmm1, xmm1
               	vmovdqa	ymmword ptr [rsp + 0x1e0], ymm1
               	test	r15, r15
               	je	 <L176>
               	mov	rdx, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0x40], r9
               	lea	r10, [rdx + 4*r15]
               	mov	qword ptr [rsp + 0x1d8], r10
               	lea	r10, [r10 + 4*r15]
               	mov	qword ptr [rsp + 0x1d0], r10
               	lea	r10, [r10 + 4*r15]
               	mov	qword ptr [rsp + 0x1c8], r10
               	lea	r10, [r10 + 4*r15]
               	mov	qword ptr [rsp + 0x1c0], r10
               	lea	r10, [r10 + 4*r15]
               	mov	qword ptr [rsp + 0x1b8], r10
               	lea	r10, [r10 + 4*r15]
               	mov	qword ptr [rsp + 0x1b0], r10
               	lea	r10, [r10 + 4*r15]
               	mov	qword ptr [rsp + 0x1a8], r10
               	lea	r10, [r10 + 4*r15]
               	mov	qword ptr [rsp + 0x1a0], r10
               	lea	r10, [r10 + 4*r15]
               	mov	qword ptr [rsp + 0x198], r10
               	mov	rdi, rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rdx + 8*rcx]
               	mov	qword ptr [rsp + 0x120], rcx
               	mov	dword ptr [rsp + 0x30], 0x0
               	vpmovsxbq	ymm1, dword ptr  <memset+0x13fc>
               	vpbroadcastw	ymm2, word ptr  <memset+0x1410>
               	vpbroadcastq	xmm3, qword ptr  <memset+0x13e8>
               	vpbroadcastw	ymm4, word ptr  <memset+0x1412>
               	mov	r14, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0x28]
               	mov	rbx, qword ptr [rsp + 0x38]
               	mov	qword ptr [rsp + 0x128], r11
               	nop	dword ptr [rax + rax]
<L177>:
               	mov	qword ptr [rsp + 0x28], rsi
               	mov	qword ptr [rsp + 0x38], rbx
               	mov	qword ptr [rsp + 0x178], rdi
               	mov	qword ptr [rsp + 0x110], r12
               	mov	qword ptr [rsp + 0x180], rax
               	vpextrq	r13, xmm0, 0x1
               	lea	rdx, [r13 + 4*r13]
               	rorx	rdx, rdx, 0x39
               	lea	r10, [rdx + 8*rdx]
               	mov	rax, qword ptr [rsp + 0x148]
               	lea	rdx, [rax + 4*rax]
               	rorx	rdx, rdx, 0x39
               	lea	r15, [rdx + 8*rdx]
               	lea	rdx, [r14 + 4*r14]
               	rorx	rdx, rdx, 0x39
               	lea	r9, [rdx + 8*rdx]
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rdx, [rcx + 4*rcx]
               	rorx	rdx, rdx, 0x39
               	lea	rdi, [rdx + 8*rdx]
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rdx, [rcx + 4*rcx]
               	rorx	rdx, rdx, 0x39
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm5, r15
               	lea	r15, [rsi + 4*rsi]
               	rorx	r15, r15, 0x39
               	lea	r15, [r15 + 8*r15]
               	vmovq	xmm6, r9
               	mov	rsi, qword ptr [rsp + 0x88]
               	lea	r9, [rsi + 4*rsi]
               	rorx	r9, r9, 0x39
               	lea	r9, [r9 + 8*r9]
               	vmovq	xmm7, rdi
               	mov	rdi, qword ptr [rsp + 0x118]
               	lea	rdi, [rdi + 4*rdi]
               	rorx	rdi, rdi, 0x39
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm8, rdx
               	mov	rdx, qword ptr [rsp + 0x50]
               	lea	rdx, [rdx + 4*rdx]
               	rorx	rdx, rdx, 0x39
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm9, r15
               	lea	r15, [rbx + 4*rbx]
               	rorx	r15, r15, 0x39
               	lea	r15, [r15 + 8*r15]
               	vmovq	xmm10, r9
               	lea	r9, [r12 + 4*r12]
               	rorx	r9, r9, 0x39
               	lea	r9, [r9 + 8*r9]
               	vmovq	xmm11, rdi
               	vmovq	xmm12, rdx
               	vmovq	xmm13, r15
               	vmovq	xmm14, r9
               	mov	edx, r10d
               	mov	edi, r10d
               	movzx	r9d, r10b
               	mov	r15d, r10d
               	vpbroadcastq	ymm15, r10
               	shr	r10d, 0x8
               	shr	edx, 0x10
               	shr	edi, 0x18
               	imul	r9d, r9d, 0x4f
               	shr	r9d, 0xa
               	lea	r11d, [r9 + 2*r9]
               	lea	r9d, [r9 + 4*r11]
               	sub	r15b, r9b
               	movzx	r9d, r10b
               	imul	r10d, r9d, 0x4f
               	shr	r10d, 0xa
               	lea	r11d, [r10 + 2*r10]
               	lea	r10d, [r10 + 4*r11]
               	sub	r9b, r10b
               	movzx	edx, dl
               	imul	r10d, edx, 0x4f
               	shr	r10d, 0xa
               	lea	r11d, [r10 + 2*r10]
               	lea	r10d, [r10 + 4*r11]
               	sub	dl, r10b
               	imul	r10d, edi, 0x4f
               	shr	r10d, 0xa
               	lea	r11d, [r10 + 2*r10]
               	lea	r10d, [r10 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x90]
               	sub	dil, r10b
               	movzx	edx, dl
               	shl	edx, 0x10
               	movzx	r10d, r9b
               	shl	r10d, 0x8
               	or	r10d, edx
               	movzx	edx, dil
               	shl	edx, 0x18
               	or	r10, rdx
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
               	movzx	edx, r15b
               	vextracti32x4	xmm16, ymm15, 0x1
               	vporq	xmm15, xmm15, xmm16
               	vpshufd	xmm16, xmm15, 0xee      # xmm16 = xmm15[2,3,2,3]
               	vporq	xmm15, xmm15, xmm16
               	or	r10, rdx
               	vmovq	rdx, xmm15
               	or	r10, rdx
               	mov	edx, dword ptr [rsp + 0x30]
               	mov	r12, qword ptr [rsp + 0xe0]
               	vmovaps	ymmword ptr [r12 + 4*rdx], ymm5
               	mov	r12, qword ptr [rsp + 0x1d8]
               	vmovaps	ymmword ptr [r12 + 4*rdx], ymm6
               	mov	r12, qword ptr [rsp + 0x1d0]
               	vmovaps	ymmword ptr [r12 + 4*rdx], ymm7
               	mov	r12, qword ptr [rsp + 0x1c8]
               	vmovdqa	ymmword ptr [r12 + 4*rdx], ymm8
               	mov	r12, qword ptr [rsp + 0x1c0]
               	vmovdqa	ymmword ptr [r12 + 4*rdx], ymm9
               	mov	r12, qword ptr [rsp + 0x1b8]
               	vmovdqa	ymmword ptr [r12 + 4*rdx], ymm10
               	mov	r12, qword ptr [rsp + 0x1b0]
               	vmovaps	ymmword ptr [r12 + 4*rdx], ymm11
               	mov	r12, qword ptr [rsp + 0x1a8]
               	vmovaps	ymmword ptr [r12 + 4*rdx], ymm12
               	mov	r12, qword ptr [rsp + 0x1a0]
               	vmovaps	ymmword ptr [r12 + 4*rdx], ymm13
               	mov	r12, qword ptr [rsp + 0x198]
               	vmovaps	ymmword ptr [r12 + 4*rdx], ymm14
               	mov	r12, qword ptr [rsp + 0x120]
               	mov	qword ptr [r12 + rdx], r10
               	vpermq	ymm5, ymm0, 0xe3        # ymm5 = ymm0[3,0,2,3]
               	vpermq	ymm6, ymm0, 0xe9        # ymm6 = ymm0[1,2,2,3]
               	shl	r13, 0x11
               	vpxor	xmm5, xmm6, xmm5
               	vpextrq	rdx, xmm5, 0x1
               	xor	rdx, r13
               	vpbroadcastq	ymm6, rdx
               	vmovq	rdx, xmm5
               	rorx	rdx, rdx, 0x13
               	vpbroadcastq	ymm7, rdx
               	mov	rdx, rax
               	shl	rdx, 0x11
               	xor	r11, qword ptr [rsp + 0x150]
               	xor	qword ptr [rsp + 0x60], rax
               	xor	rax, r11
               	mov	qword ptr [rsp + 0x148], rax
               	xor	r11, rdx
               	mov	qword ptr [rsp + 0x90], r11
               	mov	rdx, r14
               	shl	rdx, 0x11
               	mov	r8, qword ptr [rsp + 0x160]
               	xor	r8, qword ptr [rsp + 0xf8]
               	xor	qword ptr [rsp + 0x108], r14
               	xor	r14, r8
               	mov	qword ptr [rsp + 0x48], r14
               	xor	r8, rdx
               	mov	qword ptr [rsp + 0x160], r8
               	mov	rsi, qword ptr [rsp + 0x58]
               	mov	rdx, rsi
               	shl	rdx, 0x11
               	mov	r8, qword ptr [rsp + 0xf0]
               	xor	r8, qword ptr [rsp + 0xd8]
               	mov	r15, qword ptr [rsp + 0x170]
               	xor	r15, rsi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x58], rsi
               	xor	r8, rdx
               	mov	qword ptr [rsp + 0xf0], r8
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rbx, qword ptr [rsp + 0xe8]
               	xor	rbx, qword ptr [rsp + 0x140]
               	mov	r11, qword ptr [rsp + 0x168]
               	xor	r11, rcx
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x40], rcx
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0xe8], rbx
               	mov	rsi, qword ptr [rsp + 0xd0]
               	mov	rax, qword ptr [rsp + 0x28]
               	mov	rdx, rax
               	shl	rdx, 0x11
               	xor	rsi, qword ptr [rsp + 0x80]
               	mov	rcx, qword ptr [rsp + 0x158]
               	xor	rcx, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x28], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0xd0], rsi
               	mov	rax, qword ptr [rsp + 0x88]
               	mov	rdx, rax
               	shl	rdx, 0x11
               	mov	rdi, qword ptr [rsp + 0xc8]
               	mov	r12, qword ptr [rsp + 0xc0]
               	xor	rdi, r12
               	mov	r9, qword ptr [rsp + 0x78]
               	xor	r9, rax
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x88], rax
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0xc8], rdi
               	mov	rax, qword ptr [rsp + 0x118]
               	mov	rdx, rax
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0xb8]
               	mov	rbx, qword ptr [rsp + 0xb0]
               	xor	rsi, rbx
               	mov	rdi, qword ptr [rsp + 0x70]
               	xor	rdi, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x118], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0xb8], rsi
               	mov	r8, qword ptr [rsp + 0x50]
               	mov	rdx, r8
               	shl	rdx, 0x11
               	mov	r13, qword ptr [rsp + 0xa0]
               	mov	r14, qword ptr [rsp + 0x98]
               	xor	r13, r14
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	rsi, r8
               	xor	r8, r13
               	mov	qword ptr [rsp + 0x50], r8
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0xa0], r13
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r13, qword ptr [rsp + 0x130]
               	mov	r8, qword ptr [rsp + 0x68]
               	xor	r13, r8
               	mov	r10, qword ptr [rsp + 0x138]
               	xor	r10, rdx
               	xor	rdx, r13
               	mov	qword ptr [rsp + 0x38], rdx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x130], r13
               	mov	rax, qword ptr [rsp + 0x110]
               	mov	rdx, rax
               	shl	rdx, 0x11
               	mov	r13, qword ptr [rsp + 0x128]
               	xor	r13, qword ptr [rsp + 0x178]
               	xor	qword ptr [rsp + 0x180], rax
               	xor	rax, r13
               	mov	qword ptr [rsp + 0x110], rax
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0x128], r13
               	vpxor	xmm0, xmm5, xmm0
               	vpblendd	ymm0, ymm0, ymm6, 0x30  # ymm0 = ymm0[0,1,2,3],ymm6[4,5],ymm0[6,7]
               	mov	r13d, dword ptr [rsp + 0x30]
               	add	r13d, 0x8
               	vpblendd	ymm0, ymm0, ymm7, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm7[6,7]
               	mov	rax, qword ptr [rsp + 0x60]
               	xor	qword ptr [rsp + 0x150], rax
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0x60], rax
               	mov	rdx, qword ptr [rsp + 0x180]
               	mov	rax, qword ptr [rsp + 0x108]
               	xor	qword ptr [rsp + 0xf8], rax
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0x108], rax
               	xor	qword ptr [rsp + 0xd8], r15
               	rorx	r15, r15, 0x13
               	mov	qword ptr [rsp + 0x170], r15
               	mov	r15, qword ptr [rsp + 0x100]
               	xor	qword ptr [rsp + 0x140], r11
               	rorx	r11, r11, 0x13
               	mov	qword ptr [rsp + 0x168], r11
               	xor	qword ptr [rsp + 0x80], rcx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x158], rcx
               	xor	r12, r9
               	mov	qword ptr [rsp + 0xc0], r12
               	mov	r12, qword ptr [rsp + 0x110]
               	rorx	r9, r9, 0x13
               	mov	qword ptr [rsp + 0x78], r9
               	xor	rbx, rdi
               	mov	qword ptr [rsp + 0xb0], rbx
               	mov	rbx, qword ptr [rsp + 0x38]
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x70], rdi
               	xor	r14, rsi
               	mov	qword ptr [rsp + 0x98], r14
               	mov	r14, qword ptr [rsp + 0x48]
               	rorx	rsi, rsi, 0x13
               	mov	qword ptr [rsp + 0xa8], rsi
               	xor	r8, r10
               	mov	qword ptr [rsp + 0x68], r8
               	mov	rsi, qword ptr [rsp + 0x28]
               	rorx	r10, r10, 0x13
               	mov	qword ptr [rsp + 0x138], r10
               	mov	rdi, qword ptr [rsp + 0x178]
               	xor	rdi, rdx
               	rorx	rax, rdx, 0x13
               	mov	dword ptr [rsp + 0x30], r13d
               	cmp	r15d, r13d
               	jne	 <L177>
               	mov	r14, qword ptr [rsp + 0x120]
               	mov	esi, dword ptr [rsp + 0x30]
               	test	esi, esi
               	je	 <L176>
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
               	lea	rax, [r15 + 8*r15]
               	lea	r12, [rax + 2*rax]
               	mov	rdx, qword ptr [rsp + 0xe0]
               	add	r12, rdx
               	add	r12, r15
               	mov	r13, r15
               	shl	r13, 0x5
               	add	r13, rdx
               	lea	rbx, [rdx + 4*rax]
               	xor	eax, eax
               	vmovdqa	ymm5, ymmword ptr  <memset+0x13a0>
               	vmovdqa	ymm6, ymmword ptr  <memset+0x13c0>
               	vpbroadcastd	ymm7, dword ptr  <memset+0x140c>
               	vpbroadcastd	ymm8, dword ptr  <memset+0x13f8>
               	vpbroadcastd	ymm9, dword ptr  <memset+0x1408>
               	vpbroadcastd	ymm10, dword ptr  <memset+0x1400>
               	nop	word ptr cs:[rax + rax]
<L186>:
               	mov	dword ptr [rsp + 0x30], esi
               	blsi	ecx, esi
               	lea	r15, [rcx + rax]
               	mov	qword ptr [rsp + 0x28], rcx
               	test	ecx, ecx
               	je	 <L178>
               	mov	esi, 0x1
               	xor	edi, edi
               	mov	r8d, 0x1
               	jmp	 <L179>
               	nop	dword ptr [rax]
<L181>:
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
               	cmp	rax, r15
               	je	 <L180>
<L179>:
               	vpmovzxbd	ymm0, qword ptr [r14 + 8*rax]
               	mov	edx, edi
               	vpermd	ymm1, ymm0, ymm5
               	vpermd	ymm2, ymm0, ymm6
               	vpslld	ymm3, ymm0, 0x1c
               	vblendvps	ymm1, ymm1, ymm2, ymm3
               	vpsllvd	ymm2, ymm7, ymm0
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmaskmovps	ymm2, ymm2, ymmword ptr [r12 + rcx]
               	vpsllvd	ymm3, ymm8, ymm0
               	vmaskmovps	ymm4, ymm3, ymmword ptr [r13 + rcx]
               	vmulps	ymm1, ymm2, ymm1
               	vblendvps	ymm3, ymm2, ymm4, ymm3
               	vmulps	ymm1, ymm1, ymm3
               	vpsllvd	ymm3, ymm9, ymm0
               	vmaskmovps	ymm4, ymm3, ymmword ptr [rbx + rcx]
               	vblendvps	ymm2, ymm2, ymm4, ymm3
               	vmulps	ymm2, ymm2, ymm1
               	vpsllvd	ymm0, ymm10, ymm0
               	vblendvps	ymm0, ymm1, ymm2, ymm0
               	mov	r9d, edi
               	sub	r9d, r8d
               	jl	 <L181>
               	movsxd	rdi, r8d
               	lea	r10d, [r9 + 0x1]
               	and	r10d, 0x3
               	je	 <L182>
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
<L183>:
               	vaddps	ymm0, ymm0, ymmword ptr [r11 + rcx]
               	add	rcx, 0x20
               	cmp	r8d, ecx
               	jne	 <L183>
               	add	rdi, r10
               	inc	rdi
<L182>:
               	cmp	r9d, 0x3
               	jb	 <L181>
               	mov	r8d, edx
               	sub	r8d, edi
               	inc	r8d
               	shl	rdi, 0x5
               	lea	rcx, [rsp + 0x260]
               	add	rdi, rcx
               	nop	word ptr [rax + rax]
<L184>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdi - 0x60]
               	vaddps	ymm0, ymm0, ymmword ptr [rdi - 0x40]
               	vaddps	ymm0, ymm0, ymmword ptr [rdi - 0x20]
               	vaddps	ymm0, ymm0, ymmword ptr [rdi]
               	sub	rdi, -0x80
               	add	r8d, -0x4
               	jne	 <L184>
               	jmp	 <L181>
               	nop	word ptr cs:[rax + rax]
<L178>:
               	mov	edx, 0x1
<L180>:
               	movsxd	rax, edx
               	shl	rax, 0x5
               	add	rax, rsp
               	add	rax, 0x200
               	mov	esi, dword ptr [rsp + 0x30]
               	sub	esi, dword ptr [rsp + 0x28]
               	je	 <L185>
               	vmovdqa	ymm0, ymmword ptr [rax]
               	vmovdqa	ymmword ptr [rax + 0x20], ymm0
               	mov	rax, r15
               	test	edx, edx
               	js	 <L186>
               	mov	edx, edx
               	shl	rdx, 0x5
               	add	rdx, 0x20
               	lea	rdi, [rsp + 0x200]
               	mov	dword ptr [rsp + 0x30], esi
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vpbroadcastd	ymm10, dword ptr  <memset+0x1400>
               	vpbroadcastd	ymm9, dword ptr  <memset+0x1408>
               	vpbroadcastd	ymm8, dword ptr  <memset+0x13f8>
               	vpbroadcastd	ymm7, dword ptr  <memset+0x140c>
               	vmovdqa	ymm6, ymmword ptr  <memset+0x13c0>
               	vmovdqa	ymm5, ymmword ptr  <memset+0x13a0>
               	mov	esi, dword ptr [rsp + 0x30]
               	mov	rax, r15
               	jmp	 <L186>
<L185>:
               	vmovdqa	ymm0, ymmword ptr [rax]
               	vmovdqa	ymmword ptr [rsp + 0x1e0], ymm0
               	mov	r15, qword ptr [rsp + 0x100]
<L176>:
               	mov	rdi, qword ptr [rsp + 0x188]
               	test	rdi, rdi
               	je	 <L187>
               	vzeroupper
               	call	 <free@plt>
<L187>:
               	mov	rdi, qword ptr [rsp + 0xe0]
               	test	rdi, rdi
               	mov	rbx, qword ptr [rsp + 0x190]
               	je	 <L188>
               	vzeroupper
               	call	 <free@plt>
<L188>:
               	cmp	ebx, 0x2a
               	jne	 <L189>
               	cmp	r15d, 0x186a0
               	jne	 <L189>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x1e0]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <memset+0x1404>
               	jne	 <L190>
<L189>:
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
<L190>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x28], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x28]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x8318>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x82f8>
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
