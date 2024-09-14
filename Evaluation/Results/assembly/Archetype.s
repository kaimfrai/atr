
build/Evaluation/bin/Archetype:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x9298>
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
               	mov	rax, qword ptr  <memset+0x92a8>
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
               	mov	rax, qword ptr  <memset+0x92b0>
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
               	cmp	qword ptr , 0x0 <memset+0x92b8>
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

<initializer for module Evaluation.Archetype.ComputeVolume>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW13ComputeVolume__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW13ComputeVolume__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.Product>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.Dependency>
               	call	 <initializer for module ATR.DependencyIDMap>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Archetype.Product>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW7Product__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW7Product__in_chrg>
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

<initializer for module Evaluation.Archetype.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW6Circle__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.Ellipse>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Archetype.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW7Ellipse__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.BasicShape>
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

<initializer for module Evaluation.Archetype.BasicShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW10BasicShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW10BasicShape__in_chrg>
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

<initializer for module Evaluation.Archetype.Rectangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW9Rectangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW9Rectangle__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.BasicShape>
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

<initializer for module Evaluation.Archetype.Square>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW6Square__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW6Square__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.Rectangle>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Archetype.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW8Triangle__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.BasicShape>
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

<initializer for module Evaluation.Archetype.Cube>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW4Cube__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW4Cube__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.Cuboid>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Archetype.Cuboid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW6Cuboid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW6Cuboid__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.BasicBody>
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

<initializer for module Evaluation.Archetype.BasicBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW9BasicBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW9BasicBody__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.BasicShape>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Archetype.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW7Pyramid__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.BasicBody>
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

<initializer for module Evaluation.Archetype.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW6Sphere__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.Ellipsoid>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Archetype.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW9Ellipsoid__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.BasicBody>
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

<initializer for module Evaluation.Archetype.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW8Cylinder__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.BasicBody>
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

<initializer for module Evaluation.Archetype.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW4Cone__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.BasicBody>
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

<initializer for module Evaluation.Archetype.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW9ArchetypeW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW4Head__in_chrg>
               	call	 <initializer for module Evaluation.Archetype.Sphere>
               	pop	rax
               	jmp	 <initializer for module ATR.Literals>
               	int3
               	int3
               	int3

<initializer for module ATR.Virtual.Element>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW7VirtualW7Element__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW7VirtualW7Element__in_chrg>
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module ATR.Instance>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.String.Literal>
               	pop	rax
               	jmp	 <initializer for module Std>
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

<initializer for module ATR.Virtual.Entry>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW7VirtualW5Entry__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW7VirtualW5Entry__in_chrg>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.Instance>
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
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<_GLOBAL__sub_I_Archetype.cpp>:
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
               	call	 <initializer for module Evaluation.Archetype.ComputeVolume>
               	call	 <initializer for module ATR.Dependency>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.DependencyIDMap>
               	call	 <initializer for module ATR.Literals>
               	call	 <initializer for module Evaluation.Archetype.Circle>
               	call	 <initializer for module Evaluation.Archetype.Ellipse>
               	call	 <initializer for module Evaluation.Archetype.Rectangle>
               	call	 <initializer for module Evaluation.Archetype.Square>
               	call	 <initializer for module Evaluation.Archetype.Triangle>
               	call	 <initializer for module Evaluation.Archetype.Cube>
               	call	 <initializer for module Evaluation.Archetype.Cuboid>
               	call	 <initializer for module Evaluation.Archetype.Pyramid>
               	call	 <initializer for module Evaluation.Archetype.BasicBody>
               	call	 <initializer for module Evaluation.Archetype.Sphere>
               	call	 <initializer for module Evaluation.Archetype.Ellipsoid>
               	call	 <initializer for module Evaluation.Archetype.Cylinder>
               	call	 <initializer for module Evaluation.Archetype.Cone>
               	call	 <initializer for module Evaluation.Archetype.Head>
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module ATR.Layout.Offset>
               	call	 <initializer for module ATR.Virtual.Element>
               	call	 <initializer for module ATR.Instance>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.String.Literal>
               	call	 <initializer for module ATR.Virtual.Entry>
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
               	sub	rsp, 0x588
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r15, byte ptr [rcx]
               	add	r15, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	dword ptr [rax]
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
               	movabs	r13, 0x180ec6d33cfd0aba
               	mov	qword ptr [rsp + 0x128], rdx
               	mov	rax, rdx
               	shl	rax, 0x6
               	lea	rdi, [rax + 8*rax]
               	mov	rsi, qword ptr  <memset+0x92c0>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vpbroadcastq	ymm0, r15
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0x1300>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rcx, -0x61c8864680b583eb
               	add	rcx, r15
               	shr	rcx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rcx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x1320>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x1328>
               	mov	qword ptr [rsp + 0x120], rax
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
               	nop	dword ptr [rax]
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
               	bt	r13, r11
               	jae	 <L6>
               	xor	r8, rdx
               	xor	rsi, rdi
               	xor	rcx, r9
               	xor	rax, r10
               	jmp	 <L6>
<L5>:
               	movabs	r14, -0x2a59ed990f36c6d4
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
               	bt	r14, r11
               	jae	 <L9>
               	xor	r8, rdx
               	xor	rsi, rdi
               	xor	rcx, r9
               	xor	rax, r10
               	jmp	 <L9>
<L8>:
               	movabs	rbp, -0x56a7d9e71fc03656
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
               	bt	rbp, r11
               	jae	 <L12>
               	xor	r8, rdx
               	xor	rsi, rdi
               	xor	rcx, r9
               	xor	rax, r10
               	jmp	 <L12>
<L11>:
               	xor	r11d, r11d
               	jmp	 <L13>
               	nop
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
               	movabs	rbx, 0x39abdc4529b1661c
               	bt	rbx, r11
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
               	nop	word ptr cs:[rax + rax]
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
               	bt	r13, r11
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
               	bt	r14, r11
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
               	bt	rbp, r11
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
               	movabs	rbx, 0x39abdc4529b1661c
               	bt	rbx, r11
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
               	nop	word ptr cs:[rax + rax]
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
               	bt	r13, rcx
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
               	bt	r14, rcx
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
               	bt	rbp, rcx
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
               	movabs	rbx, 0x39abdc4529b1661c
               	bt	rbx, rcx
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
               	nop	word ptr cs:[rax + rax]
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
               	bt	r13, r10
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
               	bt	r14, r10
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
               	bt	rbp, r10
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
               	movabs	rbx, 0x39abdc4529b1661c
               	bt	rbx, r10
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
               	nop	word ptr cs:[rax + rax]
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
               	bt	r13, r11
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
               	bt	r14, r11
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
               	bt	rbp, r11
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
               	movabs	rbx, 0x39abdc4529b1661c
               	bt	rbx, r11
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
               	nop	word ptr cs:[rax + rax]
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
               	bt	r13, r11
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
               	bt	r14, r11
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
               	bt	rbp, r11
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
               	movabs	rbx, 0x39abdc4529b1661c
               	bt	rbx, r11
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
               	xor	r8d, r8d
               	xor	r11d, r11d
               	jmp	 <L76>
               	nop	word ptr cs:[rax + rax]
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
               	bt	r13, rax
               	jae	 <L78>
               	xor	r11, r9
               	xor	r8, rdi
               	xor	rbx, rdx
               	xor	r10, rcx
               	jmp	 <L78>
<L77>:
               	xor	eax, eax
               	jmp	 <L79>
               	nop	dword ptr [rax]
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
               	bt	r14, rax
               	jae	 <L81>
               	xor	r11, r9
               	xor	r8, rdi
               	xor	rbx, rdx
               	xor	r10, rcx
               	jmp	 <L81>
<L80>:
               	xor	eax, eax
               	jmp	 <L82>
               	nop	dword ptr [rax]
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
               	bt	rbp, rax
               	jae	 <L84>
               	xor	r11, r9
               	xor	r8, rdi
               	xor	rbx, rdx
               	xor	r10, rcx
               	jmp	 <L84>
<L83>:
               	xor	eax, eax
               	jmp	 <L85>
               	nop	dword ptr [rax]
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
               	movabs	rsi, 0x39abdc4529b1661c
               	bt	rsi, rax
               	jae	 <L87>
               	xor	r11, r9
               	xor	r8, rdi
               	xor	rbx, rdx
               	xor	r10, rcx
               	jmp	 <L87>
<L86>:
               	mov	qword ptr [rsp + 0x330], r11
               	mov	qword ptr [rsp + 0x338], r8
               	mov	qword ptr [rsp + 0x340], rbx
               	mov	qword ptr [rsp + 0x348], r10
               	xor	edi, edi
               	xor	r9d, r9d
               	mov	rax, r10
               	mov	qword ptr [rsp + 0x10], 0x0
               	mov	rcx, rbx
               	mov	qword ptr [rsp + 0x118], 0x0
               	mov	rdx, r8
               	mov	rsi, r11
               	mov	qword ptr [rsp + 0x110], 0x0
               	mov	qword ptr [rsp + 0x240], r8
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
               	bt	r13, rdi
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x118], rdx
               	xor	qword ptr [rsp + 0x10], rcx
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
               	bt	r14, rdi
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x118], rdx
               	xor	qword ptr [rsp + 0x10], rcx
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
               	bt	rbp, rdi
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x118], rdx
               	xor	qword ptr [rsp + 0x10], rcx
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x118], rdx
               	xor	qword ptr [rsp + 0x10], rcx
               	xor	r9, rax
               	jmp	 <L99>
<L98>:
               	mov	rsi, qword ptr [rsp + 0x110]
               	mov	qword ptr [rsp + 0x350], rsi
               	mov	rdx, qword ptr [rsp + 0x118]
               	mov	qword ptr [rsp + 0x358], rdx
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x360], rcx
               	mov	qword ptr [rsp + 0x368], r9
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], 0x0
               	mov	rax, r9
               	mov	qword ptr [rsp + 0x100], 0x0
               	mov	qword ptr [rsp + 0xf8], 0x0
               	mov	qword ptr [rsp + 0xf0], 0x0
               	jmp	 <L100>
               	nop	dword ptr [rax + rax]
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
               	bt	r13, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0xf8], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0x108], rax
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
               	bt	r14, rdi
               	jae	 <L105>
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0xf8], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0x108], rax
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
               	bt	rbp, rdi
               	jae	 <L108>
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0xf8], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0x108], rax
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L111>
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0xf8], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0x108], rax
               	jmp	 <L111>
<L110>:
               	mov	rsi, qword ptr [rsp + 0xf0]
               	mov	qword ptr [rsp + 0x370], rsi
               	mov	rdx, qword ptr [rsp + 0xf8]
               	mov	qword ptr [rsp + 0x378], rdx
               	mov	rcx, qword ptr [rsp + 0x100]
               	mov	qword ptr [rsp + 0x380], rcx
               	mov	rax, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0x388], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], 0x0
               	mov	qword ptr [rsp + 0xe0], 0x0
               	mov	qword ptr [rsp + 0xd8], 0x0
               	mov	qword ptr [rsp + 0xd0], 0x0
               	jmp	 <L112>
               	nop	dword ptr [rax + rax]
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
               	bt	r13, rdi
               	jae	 <L114>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0xd8], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
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
               	bt	r14, rdi
               	jae	 <L117>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0xd8], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
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
               	bt	rbp, rdi
               	jae	 <L120>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0xd8], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L123>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0xd8], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
               	jmp	 <L123>
<L122>:
               	mov	rsi, qword ptr [rsp + 0xd0]
               	mov	qword ptr [rsp + 0x390], rsi
               	mov	rdx, qword ptr [rsp + 0xd8]
               	mov	qword ptr [rsp + 0x398], rdx
               	mov	rcx, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0x3a0], rcx
               	mov	rax, qword ptr [rsp + 0xe8]
               	mov	qword ptr [rsp + 0x3a8], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc8], 0x0
               	mov	qword ptr [rsp + 0xc0], 0x0
               	mov	qword ptr [rsp + 0xb8], 0x0
               	mov	qword ptr [rsp + 0xb0], 0x0
               	jmp	 <L124>
               	nop	dword ptr [rax + rax]
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
               	bt	r13, rdi
               	jae	 <L126>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0xb8], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	bt	r14, rdi
               	jae	 <L129>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0xb8], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	bt	rbp, rdi
               	jae	 <L132>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0xb8], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L135>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0xb8], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L135>
<L134>:
               	mov	rsi, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0x3b0], rsi
               	mov	rdx, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x3b8], rdx
               	mov	rcx, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0x3c0], rcx
               	mov	rax, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0x3c8], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], 0x0
               	mov	qword ptr [rsp + 0xa0], 0x0
               	mov	qword ptr [rsp + 0x98], 0x0
               	mov	qword ptr [rsp + 0x90], 0x0
               	jmp	 <L136>
               	nop	dword ptr [rax + rax]
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
               	bt	r13, rdi
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
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
               	bt	r14, rdi
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
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
               	bt	rbp, rdi
               	jae	 <L144>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L147>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L147>
<L146>:
               	mov	rsi, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x3d0], rsi
               	mov	rdx, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x3d8], rdx
               	mov	rcx, qword ptr [rsp + 0xa0]
               	mov	qword ptr [rsp + 0x3e0], rcx
               	mov	rax, qword ptr [rsp + 0xa8]
               	mov	qword ptr [rsp + 0x3e8], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x88], 0x0
               	mov	qword ptr [rsp + 0x80], 0x0
               	mov	qword ptr [rsp + 0x78], 0x0
               	mov	qword ptr [rsp + 0x70], 0x0
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
               	bt	r13, rdi
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L150>
<L149>:
               	xor	edi, edi
               	jmp	 <L151>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L153>
<L152>:
               	xor	edi, edi
               	jmp	 <L154>
               	nop	dword ptr [rax + rax]
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
               	bt	rbp, rdi
               	jae	 <L156>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L156>
<L155>:
               	xor	edi, edi
               	jmp	 <L157>
               	nop	dword ptr [rax + rax]
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L159>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L159>
<L158>:
               	mov	rsi, qword ptr [rsp + 0x70]
               	mov	qword ptr [rsp + 0x3f0], rsi
               	mov	rdx, qword ptr [rsp + 0x78]
               	mov	qword ptr [rsp + 0x3f8], rdx
               	mov	rcx, qword ptr [rsp + 0x80]
               	mov	qword ptr [rsp + 0x400], rcx
               	mov	rax, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x408], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x68], 0x0
               	mov	qword ptr [rsp + 0x60], 0x0
               	mov	qword ptr [rsp + 0x58], 0x0
               	mov	qword ptr [rsp + 0x50], 0x0
               	jmp	 <L160>
               	nop	word ptr cs:[rax + rax]
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
               	bt	r13, rdi
               	jae	 <L162>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x60], rcx
               	xor	qword ptr [rsp + 0x68], rax
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
               	bt	r14, rdi
               	jae	 <L165>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x60], rcx
               	xor	qword ptr [rsp + 0x68], rax
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
               	bt	rbp, rdi
               	jae	 <L168>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x60], rcx
               	xor	qword ptr [rsp + 0x68], rax
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L171>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x60], rcx
               	xor	qword ptr [rsp + 0x68], rax
               	jmp	 <L171>
<L170>:
               	mov	rsi, qword ptr [rsp + 0x50]
               	mov	qword ptr [rsp + 0x410], rsi
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	qword ptr [rsp + 0x418], rdx
               	mov	rcx, qword ptr [rsp + 0x60]
               	mov	qword ptr [rsp + 0x420], rcx
               	mov	rax, qword ptr [rsp + 0x68]
               	mov	qword ptr [rsp + 0x428], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x48], 0x0
               	mov	qword ptr [rsp + 0x40], 0x0
               	mov	qword ptr [rsp + 0x38], 0x0
               	mov	qword ptr [rsp + 0x30], 0x0
               	jmp	 <L172>
               	nop	word ptr [rax + rax]
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
               	bt	r13, rdi
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x40], rcx
               	xor	qword ptr [rsp + 0x48], rax
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
               	bt	r14, rdi
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x40], rcx
               	xor	qword ptr [rsp + 0x48], rax
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
               	bt	rbp, rdi
               	jae	 <L180>
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x40], rcx
               	xor	qword ptr [rsp + 0x48], rax
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L183>
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x40], rcx
               	xor	qword ptr [rsp + 0x48], rax
               	jmp	 <L183>
<L182>:
               	mov	qword ptr [rsp + 0x230], r9
               	mov	qword ptr [rsp + 0x248], r10
               	mov	r9, qword ptr [rsp + 0x30]
               	mov	qword ptr [rsp + 0x430], r9
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	qword ptr [rsp + 0x438], r8
               	mov	rdi, qword ptr [rsp + 0x40]
               	mov	qword ptr [rsp + 0x440], rdi
               	mov	rcx, qword ptr [rsp + 0x48]
               	mov	qword ptr [rsp + 0x448], rcx
               	xor	r10d, r10d
               	xor	eax, eax
               	xor	edx, edx
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x28], 0x0
               	mov	qword ptr [rsp + 0x238], r11
               	jmp	 <L184>
               	nop	dword ptr [rax + rax]
<L186>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rcx, r8
               	xor	r8, rdi
               	xor	r9, rcx
               	xor	rdi, r11
               	rorx	rcx, rcx, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L185>
<L184>:
               	bt	r13, r10
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x28], r9
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rax, rcx
               	jmp	 <L186>
<L185>:
               	xor	r10d, r10d
               	jmp	 <L187>
<L189>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rcx, r8
               	xor	r8, rdi
               	xor	r9, rcx
               	xor	rdi, r11
               	rorx	rcx, rcx, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L188>
<L187>:
               	bt	r14, r10
               	jae	 <L189>
               	xor	qword ptr [rsp + 0x28], r9
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rax, rcx
               	jmp	 <L189>
<L188>:
               	xor	r10d, r10d
               	jmp	 <L190>
<L192>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rcx, r8
               	xor	r8, rdi
               	xor	r9, rcx
               	xor	rdi, r11
               	rorx	rcx, rcx, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L191>
<L190>:
               	bt	rbp, r10
               	jae	 <L192>
               	xor	qword ptr [rsp + 0x28], r9
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rax, rcx
               	jmp	 <L192>
<L191>:
               	xor	r10d, r10d
               	jmp	 <L193>
<L195>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rcx, r8
               	xor	r8, rdi
               	xor	r9, rcx
               	xor	rdi, r11
               	rorx	rcx, rcx, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L194>
<L193>:
               	movabs	r11, 0x39abdc4529b1661c
               	bt	r11, r10
               	jae	 <L195>
               	xor	qword ptr [rsp + 0x28], r9
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rax, rcx
               	jmp	 <L195>
<L194>:
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	qword ptr [rsp + 0x450], rcx
               	mov	qword ptr [rsp + 0x458], rsi
               	mov	qword ptr [rsp + 0x460], rdx
               	mov	qword ptr [rsp + 0x468], rax
               	xor	r8d, r8d
               	xor	r11d, r11d
               	xor	edi, edi
               	xor	r12d, r12d
               	xor	r10d, r10d
               	jmp	 <L196>
               	nop	word ptr [rax + rax]
<L198>:
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rdx, rcx
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	rcx, rax
               	xor	rdx, r9
               	rorx	rax, rax, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L197>
<L196>:
               	bt	r13, r8
               	jae	 <L198>
               	xor	r10, rcx
               	xor	r12, rsi
               	xor	rdi, rdx
               	xor	r11, rax
               	jmp	 <L198>
<L197>:
               	xor	r8d, r8d
               	jmp	 <L199>
               	nop
<L201>:
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rdx, rcx
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	rcx, rax
               	xor	rdx, r9
               	rorx	rax, rax, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L200>
<L199>:
               	bt	r14, r8
               	jae	 <L201>
               	xor	r10, rcx
               	xor	r12, rsi
               	xor	rdi, rdx
               	xor	r11, rax
               	jmp	 <L201>
<L200>:
               	xor	r8d, r8d
               	jmp	 <L202>
               	nop
<L204>:
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rdx, rcx
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	rcx, rax
               	xor	rdx, r9
               	rorx	rax, rax, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L203>
<L202>:
               	bt	rbp, r8
               	jae	 <L204>
               	xor	r10, rcx
               	xor	r12, rsi
               	xor	rdi, rdx
               	xor	r11, rax
               	jmp	 <L204>
<L203>:
               	xor	r8d, r8d
               	jmp	 <L205>
               	nop
<L207>:
               	xor	r10, rcx
               	xor	r12, rsi
               	mov	rdi, r9
               	xor	rdi, rdx
               	xor	r11, rax
<L208>:
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rdx, rcx
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	rcx, rax
               	xor	rdx, r9
               	rorx	rax, rax, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L206>
<L205>:
               	mov	r9, rdi
               	movabs	rdi, 0x39abdc4529b1661c
               	bt	rdi, r8
               	jb	 <L207>
               	mov	rdi, r9
               	jmp	 <L208>
<L206>:
               	mov	qword ptr [rsp + 0x8], rbx
               	mov	qword ptr [rsp + 0x470], r10
               	mov	qword ptr [rsp + 0x478], r12
               	mov	qword ptr [rsp + 0x480], rdi
               	mov	qword ptr [rsp + 0x488], r11
               	xor	ebx, ebx
               	xor	ebp, ebp
               	mov	rax, r11
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x220], rdi
               	mov	rcx, rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], r12
               	xor	r9d, r9d
               	jmp	 <L209>
               	nop	word ptr cs:[rax + rax]
<L211>:
               	mov	r14, r12
               	shl	r14, 0x11
               	xor	rcx, r10
               	xor	rax, r12
               	xor	r12, rcx
               	xor	r10, rax
               	xor	rcx, r14
               	rorx	rax, rax, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L210>
<L209>:
               	bt	r13, rbx
               	jae	 <L211>
               	xor	r9, r10
               	xor	rdi, r12
               	xor	rsi, rcx
               	xor	rbp, rax
               	jmp	 <L211>
<L210>:
               	xor	ebx, ebx
               	movabs	r8, -0x2a59ed990f36c6d4
               	jmp	 <L212>
               	nop	word ptr [rax + rax]
<L214>:
               	mov	r14, r12
               	shl	r14, 0x11
               	xor	rcx, r10
               	xor	rax, r12
               	xor	r12, rcx
               	xor	r10, rax
               	xor	rcx, r14
               	rorx	rax, rax, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L213>
<L212>:
               	bt	r8, rbx
               	jae	 <L214>
               	xor	r9, r10
               	xor	rdi, r12
               	xor	rsi, rcx
               	xor	rbp, rax
               	jmp	 <L214>
<L213>:
               	xor	ebx, ebx
               	movabs	r8, -0x56a7d9e71fc03656
               	jmp	 <L215>
               	nop	word ptr [rax + rax]
<L217>:
               	mov	r14, r12
               	shl	r14, 0x11
               	xor	rcx, r10
               	xor	rax, r12
               	xor	r12, rcx
               	xor	r10, rax
               	xor	rcx, r14
               	rorx	rax, rax, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L216>
<L215>:
               	bt	r8, rbx
               	jae	 <L217>
               	xor	r9, r10
               	xor	rdi, r12
               	xor	rsi, rcx
               	xor	rbp, rax
               	jmp	 <L217>
<L216>:
               	xor	ebx, ebx
               	movabs	r8, 0x39abdc4529b1661c
               	jmp	 <L218>
               	nop	word ptr [rax + rax]
<L220>:
               	mov	r14, r12
               	shl	r14, 0x11
               	xor	rcx, r10
               	xor	rax, r12
               	xor	r12, rcx
               	xor	r10, rax
               	xor	rcx, r14
               	rorx	rax, rax, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L219>
<L218>:
               	bt	r8, rbx
               	jae	 <L220>
               	xor	r9, r10
               	xor	rdi, r12
               	xor	rsi, rcx
               	xor	rbp, rax
               	jmp	 <L220>
<L219>:
               	mov	qword ptr [rsp + 0x228], r11
               	mov	qword ptr [rsp + 0x138], r15
               	mov	qword ptr [rsp + 0x490], r9
               	mov	qword ptr [rsp + 0x498], rdi
               	mov	qword ptr [rsp + 0x4a0], rsi
               	mov	qword ptr [rsp + 0x4a8], rbp
               	xor	r12d, r12d
               	xor	r14d, r14d
               	mov	rax, rbp
               	xor	r10d, r10d
               	mov	rcx, rsi
               	xor	r11d, r11d
               	mov	r8, rdi
               	mov	rbx, r9
               	xor	r15d, r15d
               	jmp	 <L221>
               	nop	word ptr cs:[rax + rax]
<L223>:
               	mov	rdx, r8
               	shl	rdx, 0x11
               	xor	rcx, rbx
               	xor	rax, r8
               	xor	r8, rcx
               	xor	rbx, rax
               	xor	rcx, rdx
               	rorx	rax, rax, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L222>
<L221>:
               	bt	r13, r12
               	jae	 <L223>
               	xor	r15, rbx
               	xor	r11, r8
               	xor	r10, rcx
               	xor	r14, rax
               	jmp	 <L223>
<L222>:
               	xor	r12d, r12d
               	jmp	 <L224>
               	nop
<L226>:
               	mov	rdx, r8
               	shl	rdx, 0x11
               	xor	rcx, rbx
               	xor	rax, r8
               	xor	r8, rcx
               	xor	rbx, rax
               	xor	rcx, rdx
               	rorx	rax, rax, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L225>
<L224>:
               	movabs	rdx, -0x2a59ed990f36c6d4
               	bt	rdx, r12
               	jae	 <L226>
               	xor	r15, rbx
               	xor	r11, r8
               	xor	r10, rcx
               	xor	r14, rax
               	jmp	 <L226>
<L225>:
               	xor	r12d, r12d
               	jmp	 <L227>
               	nop	dword ptr [rax + rax]
<L229>:
               	mov	rdx, r8
               	shl	rdx, 0x11
               	xor	rcx, rbx
               	xor	rax, r8
               	xor	r8, rcx
               	xor	rbx, rax
               	xor	rcx, rdx
               	rorx	rax, rax, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L228>
<L227>:
               	movabs	rdx, -0x56a7d9e71fc03656
               	bt	rdx, r12
               	jae	 <L229>
               	xor	r15, rbx
               	xor	r11, r8
               	xor	r10, rcx
               	xor	r14, rax
               	jmp	 <L229>
<L228>:
               	xor	r12d, r12d
               	jmp	 <L230>
               	nop	dword ptr [rax + rax]
<L232>:
               	mov	rdx, r8
               	shl	rdx, 0x11
               	xor	rcx, rbx
               	xor	rax, r8
               	xor	r8, rcx
               	xor	rbx, rax
               	xor	rcx, rdx
               	rorx	rax, rax, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L231>
<L230>:
               	movabs	rdx, 0x39abdc4529b1661c
               	bt	rdx, r12
               	jae	 <L232>
               	xor	r15, rbx
               	xor	r11, r8
               	xor	r10, rcx
               	xor	r14, rax
               	jmp	 <L232>
<L231>:
               	mov	qword ptr [rsp + 0x4b0], r15
               	mov	qword ptr [rsp + 0x4b8], r11
               	mov	qword ptr [rsp + 0x4c0], r10
               	mov	qword ptr [rsp + 0x4c8], r14
               	mov	qword ptr [rsp + 0x4d0], 0x0
               	lea	rax, [rsp + 0x250]
               	kxnorw	k1, k0, k0
               	vpmovzxbd	ymm0, qword ptr  <memset+0x1330>
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm2, xmm2, xmm2
               	kxnorw	k2, k0, k0
               	vpgatherdq	zmm2 {k2}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm2, 0x2
               	vpaddq	zmm0, zmm0, zmm2
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm2, zmm0, 0x3
               	vpaddq	zmm4, zmm2, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x4d8], zmm4
               	vpmovsxwd	ymm0, xmmword ptr  <memset+0x13d0>
               	vpgatherdq	zmm1 {k1}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm1, 0x2
               	vpaddq	zmm0, zmm0, zmm1
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm5, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x518], zmm5
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x458]
               	vpinsrq	xmm0, xmm0, qword ptr [rsp + 0x130], 0x1
               	mov	r12, qword ptr [rsp + 0x128]
               	shl	r12, 0x3
               	vpbroadcastq	ymm1, rdi
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, r11
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm6, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x558], ymm6
               	test	r12, r12
               	je	 <L233>
               	vpbroadcastq	zmm1, rax
               	vpaddq	zmm0, zmm1, zmmword ptr  <memset+0x1340>
               	vpaddq	zmm1, zmm1, zmmword ptr  <memset+0x1380>
               	vpextrq	rbx, xmm5, 0x1
               	vextracti128	xmm2, ymm5, 0x1
               	vmovq	rdx, xmm2
               	vmovq	rcx, xmm4
               	mov	rax, qword ptr [rsp + 0x250]
               	mov	qword ptr [rsp + 0x218], rax
               	mov	rax, qword ptr [rsp + 0x258]
               	mov	qword ptr [rsp + 0x210], rax
               	mov	rax, qword ptr [rsp + 0x260]
               	mov	qword ptr [rsp + 0x208], rax
               	mov	rax, qword ptr [rsp + 0x268]
               	mov	qword ptr [rsp + 0x200], rax
               	mov	rax, qword ptr [rsp + 0x278]
               	mov	qword ptr [rsp + 0x1f8], rax
               	mov	rax, qword ptr [rsp + 0x270]
               	mov	qword ptr [rsp + 0x1f0], rax
               	mov	rax, qword ptr [rsp + 0x280]
               	mov	qword ptr [rsp + 0x1e8], rax
               	mov	rax, qword ptr [rsp + 0x288]
               	mov	qword ptr [rsp + 0x1e0], rax
               	mov	rax, qword ptr [rsp + 0x298]
               	mov	qword ptr [rsp + 0x1d8], rax
               	mov	rax, qword ptr [rsp + 0x290]
               	mov	qword ptr [rsp + 0x1d0], rax
               	mov	rax, qword ptr [rsp + 0x2a0]
               	mov	qword ptr [rsp + 0x1c8], rax
               	mov	rax, qword ptr [rsp + 0x2a8]
               	mov	qword ptr [rsp + 0x1c0], rax
               	vpbroadcastd	ymm2, dword ptr  <memset+0x13e0>
               	vmovdqa	xmm3, xmmword ptr  <memset+0x13c0>
               	mov	rax, qword ptr [rsp + 0x2b8]
               	mov	qword ptr [rsp + 0x1b8], rax
               	mov	rax, qword ptr [rsp + 0x2b0]
               	mov	qword ptr [rsp + 0x1b0], rax
               	mov	rax, qword ptr [rsp + 0x2c0]
               	mov	qword ptr [rsp + 0x1a8], rax
               	mov	rax, qword ptr [rsp + 0x2c8]
               	mov	qword ptr [rsp + 0x1a0], rax
               	mov	rax, qword ptr [rsp + 0x2d8]
               	mov	qword ptr [rsp + 0x198], rax
               	mov	rax, qword ptr [rsp + 0x2d0]
               	mov	qword ptr [rsp + 0x190], rax
               	mov	rax, qword ptr [rsp + 0x2e0]
               	mov	qword ptr [rsp + 0x188], rax
               	mov	rax, qword ptr [rsp + 0x2e8]
               	mov	qword ptr [rsp + 0x180], rax
               	mov	rax, qword ptr [rsp + 0x2f8]
               	mov	qword ptr [rsp + 0x178], rax
               	mov	rax, qword ptr [rsp + 0x2f0]
               	mov	qword ptr [rsp + 0x170], rax
               	mov	rax, qword ptr [rsp + 0x300]
               	mov	qword ptr [rsp + 0x168], rax
               	mov	rax, qword ptr [rsp + 0x308]
               	mov	qword ptr [rsp + 0x160], rax
               	mov	rax, qword ptr [rsp + 0x318]
               	mov	qword ptr [rsp + 0x158], rax
               	mov	rax, qword ptr [rsp + 0x310]
               	mov	qword ptr [rsp + 0x150], rax
               	mov	rax, qword ptr [rsp + 0x320]
               	mov	qword ptr [rsp + 0x148], rax
               	mov	rax, qword ptr [rsp + 0x328]
               	mov	qword ptr [rsp + 0x140], rax
               	xor	r13d, r13d
               	mov	rax, qword ptr [rsp + 0x120]
               	mov	qword ptr [rsp + 0x128], r12
               	jmp	 <L234>
               	nop	dword ptr [rax + rax]
<L241>:
               	vpsrlq	zmm4, zmm4, 0x8
               	vmovdqu64	zmmword ptr [rsp + 0x4d8], zmm4
               	vpsrlq	zmm5, zmm5, 0x8
               	vpsrlq	ymm6, ymm6, 0x8
<L242>:
               	vmovq	rcx, xmm4
               	vpextrq	rbx, xmm5, 0x1
               	vextracti128	xmm7, ymm5, 0x1
               	vmovq	rdx, xmm7
               	vmovdqu64	zmmword ptr [rsp + 0x518], zmm5
               	vmovdqu	ymmword ptr [rsp + 0x558], ymm6
               	add	rax, 0x48
               	cmp	r12, r13
               	je	 <L235>
<L234>:
               	vmovq	xmm7, rbx
               	vmovq	xmm8, rdx
               	vpunpcklqdq	xmm7, xmm7, xmm8 # xmm7 = xmm7[0],xmm8[0]
               	vpshufb	xmm8, xmm7, xmm3
               	vmovdqu64	zmm7, zmmword ptr [rsp + 0x4e0]
               	vpmovqd	ymm7, zmm7
               	vpand	ymm7, ymm7, ymm2
               	vcvtdq2ps	ymm7, ymm7
               	vcvtdq2ps	xmm8, xmm8
               	movzx	edx, cl
               	imul	edx, edx, 0x4f
               	shr	edx, 0xa
               	lea	r8d, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*r8]
               	sub	cl, dl
               	movzx	ecx, cl
               	lea	rdx,  <memset+0x1400>
               	movsxd	rcx, dword ptr [rdx + 4*rcx]
               	add	rcx, rdx
               	jmp	rcx
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.921fb6p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L236>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.0c1524p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L237>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L238>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.0c1524p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	mov	qword ptr [rax], rcx
               	vmovups	ymmword ptr [rax + 0x8], ymm7
               	vmovdqu64	zmm7, zmmword ptr [rsp + 0x530]
               	vpmovqd	ymm7, zmm7
               	vpand	ymm7, ymm7, ymm2
               	vcvtdq2ps	ymm7, ymm7
               	vmovdqu	ymmword ptr [rax + 0x28], ymm7
               	jmp	 <L239>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.921fb6p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L240>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1p+0f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L238>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1p+0f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L236>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.555556p-2f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L237>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.921fb6p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
<L238>:
               	mov	qword ptr [rax], rcx
               	vmovdqu	ymmword ptr [rax + 0x8], ymm7
               	vmovd	dword ptr [rax + 0x28], xmm8
               	jmp	 <L239>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1p+0f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L236>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1p+0f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
<L237>:
               	mov	qword ptr [rax], rcx
               	vmovdqu	ymmword ptr [rax + 0x8], ymm7
               	vmovq	qword ptr [rax + 0x28], xmm8
               	jmp	 <L239>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.0c1524p-2f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
<L240>:
               	mov	qword ptr [rax], rcx
               	vmovdqu	ymmword ptr [rax + 0x8], ymm7
               	vextractps	dword ptr [rax + 0x28], xmm8, 0x1
               	jmp	 <L239>
               	lea	rcx,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.0c1524p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
<L236>:
               	mov	qword ptr [rax], rcx
               	vmovdqu	ymmword ptr [rax + 0x8], ymm7
<L239>:
               	mov	r8, qword ptr [rsp + 0x8]
               	inc	r13
               	mov	qword ptr [rsp + 0x4d0], r13
               	test	r13b, 0x7
               	jne	 <L241>
               	mov	rbx, qword ptr [rsp + 0x210]
               	mov	rcx, rbx
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0x218]
               	mov	r12, qword ptr [rsp + 0x208]
               	xor	r12, rdx
               	mov	qword ptr [rsp + 0x580], r13
               	mov	r13, qword ptr [rsp + 0x200]
               	xor	r13, rbx
               	xor	rbx, r12
               	mov	qword ptr [rsp + 0x210], rbx
               	mov	qword ptr [rsp + 0x258], rbx
               	xor	rdx, r13
               	mov	qword ptr [rsp + 0x218], rdx
               	mov	qword ptr [rsp + 0x250], rdx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x208], r12
               	mov	qword ptr [rsp + 0x260], r12
               	rorx	r13, r13, 0x13
               	mov	qword ptr [rsp + 0x200], r13
               	mov	qword ptr [rsp + 0x268], r13
               	mov	rdx, qword ptr [rsp + 0x1f8]
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rbx, qword ptr [rsp + 0x1f0]
               	mov	r12, qword ptr [rsp + 0x1e8]
               	xor	r12, rbx
               	mov	r13, qword ptr [rsp + 0x1e0]
               	xor	r13, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x1f8], rdx
               	mov	qword ptr [rsp + 0x278], rdx
               	xor	rbx, r13
               	mov	qword ptr [rsp + 0x1f0], rbx
               	mov	qword ptr [rsp + 0x270], rbx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x1e8], r12
               	mov	qword ptr [rsp + 0x280], r12
               	rorx	r13, r13, 0x13
               	mov	qword ptr [rsp + 0x1e0], r13
               	mov	qword ptr [rsp + 0x288], r13
               	mov	rdx, qword ptr [rsp + 0x1d8]
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rbx, qword ptr [rsp + 0x1d0]
               	mov	r12, qword ptr [rsp + 0x1c8]
               	xor	r12, rbx
               	mov	r13, qword ptr [rsp + 0x1c0]
               	xor	r13, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x1d8], rdx
               	mov	qword ptr [rsp + 0x298], rdx
               	xor	rbx, r13
               	mov	qword ptr [rsp + 0x1d0], rbx
               	mov	qword ptr [rsp + 0x290], rbx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x1c8], r12
               	mov	qword ptr [rsp + 0x2a0], r12
               	rorx	r13, r13, 0x13
               	mov	qword ptr [rsp + 0x1c0], r13
               	mov	qword ptr [rsp + 0x2a8], r13
               	mov	rdx, qword ptr [rsp + 0x1b8]
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rbx, qword ptr [rsp + 0x1b0]
               	mov	r12, qword ptr [rsp + 0x1a8]
               	xor	r12, rbx
               	mov	r13, qword ptr [rsp + 0x1a0]
               	xor	r13, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x1b8], rdx
               	mov	qword ptr [rsp + 0x2b8], rdx
               	xor	rbx, r13
               	mov	qword ptr [rsp + 0x1b0], rbx
               	mov	qword ptr [rsp + 0x2b0], rbx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x1a8], r12
               	mov	qword ptr [rsp + 0x2c0], r12
               	rorx	r13, r13, 0x13
               	mov	qword ptr [rsp + 0x1a0], r13
               	mov	qword ptr [rsp + 0x2c8], r13
               	mov	rdx, qword ptr [rsp + 0x198]
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rbx, qword ptr [rsp + 0x190]
               	mov	r12, qword ptr [rsp + 0x188]
               	xor	r12, rbx
               	mov	r13, qword ptr [rsp + 0x180]
               	xor	r13, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x198], rdx
               	mov	qword ptr [rsp + 0x2d8], rdx
               	xor	rbx, r13
               	mov	qword ptr [rsp + 0x190], rbx
               	mov	qword ptr [rsp + 0x2d0], rbx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x188], r12
               	mov	qword ptr [rsp + 0x2e0], r12
               	rorx	r13, r13, 0x13
               	mov	qword ptr [rsp + 0x180], r13
               	mov	qword ptr [rsp + 0x2e8], r13
               	mov	rdx, qword ptr [rsp + 0x178]
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rbx, qword ptr [rsp + 0x170]
               	mov	r12, qword ptr [rsp + 0x168]
               	xor	r12, rbx
               	mov	r13, qword ptr [rsp + 0x160]
               	xor	r13, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x178], rdx
               	mov	qword ptr [rsp + 0x2f8], rdx
               	xor	rbx, r13
               	mov	qword ptr [rsp + 0x170], rbx
               	mov	qword ptr [rsp + 0x2f0], rbx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x168], r12
               	mov	qword ptr [rsp + 0x300], r12
               	rorx	r13, r13, 0x13
               	mov	qword ptr [rsp + 0x160], r13
               	mov	qword ptr [rsp + 0x308], r13
               	mov	rdx, qword ptr [rsp + 0x158]
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rbx, qword ptr [rsp + 0x150]
               	mov	r12, qword ptr [rsp + 0x148]
               	xor	r12, rbx
               	mov	r13, qword ptr [rsp + 0x140]
               	xor	r13, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x158], rdx
               	mov	qword ptr [rsp + 0x318], rdx
               	xor	rbx, r13
               	mov	qword ptr [rsp + 0x150], rbx
               	mov	qword ptr [rsp + 0x310], rbx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x148], r12
               	mov	qword ptr [rsp + 0x320], r12
               	rorx	r13, r13, 0x13
               	mov	qword ptr [rsp + 0x140], r13
               	mov	qword ptr [rsp + 0x328], r13
               	mov	rbx, qword ptr [rsp + 0x240]
               	mov	rcx, rbx
               	shl	rcx, 0x11
               	mov	r12, qword ptr [rsp + 0x238]
               	xor	r8, r12
               	mov	rdx, qword ptr [rsp + 0x248]
               	xor	rdx, rbx
               	xor	rbx, r8
               	mov	qword ptr [rsp + 0x240], rbx
               	mov	qword ptr [rsp + 0x338], rbx
               	xor	r12, rdx
               	mov	qword ptr [rsp + 0x238], r12
               	mov	qword ptr [rsp + 0x330], r12
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x8], r8
               	mov	qword ptr [rsp + 0x340], r8
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0x248], rdx
               	mov	qword ptr [rsp + 0x348], rdx
               	mov	rbx, qword ptr [rsp + 0x118]
               	mov	rcx, rbx
               	shl	rcx, 0x11
               	mov	r12, qword ptr [rsp + 0x110]
               	mov	r13, qword ptr [rsp + 0x10]
               	xor	r13, r12
               	mov	rdx, qword ptr [rsp + 0x230]
               	xor	rdx, rbx
               	xor	rbx, r13
               	mov	qword ptr [rsp + 0x118], rbx
               	mov	qword ptr [rsp + 0x358], rbx
               	xor	r12, rdx
               	mov	qword ptr [rsp + 0x110], r12
               	mov	qword ptr [rsp + 0x350], r12
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x10], r13
               	mov	qword ptr [rsp + 0x360], r13
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0x230], rdx
               	mov	qword ptr [rsp + 0x368], rdx
               	mov	r12, qword ptr [rsp + 0xf8]
               	mov	rcx, r12
               	shl	rcx, 0x11
               	mov	r8, qword ptr [rsp + 0x100]
               	mov	r13, qword ptr [rsp + 0xf0]
               	xor	r8, r13
               	mov	rdx, qword ptr [rsp + 0x108]
               	xor	rdx, r12
               	xor	r12, r8
               	mov	qword ptr [rsp + 0xf8], r12
               	mov	qword ptr [rsp + 0x378], r12
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0xf0], r13
               	mov	qword ptr [rsp + 0x370], r13
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x100], r8
               	mov	qword ptr [rsp + 0x380], r8
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0x108], rdx
               	mov	qword ptr [rsp + 0x388], rdx
               	mov	r12, qword ptr [rsp + 0xd8]
               	mov	rcx, r12
               	shl	rcx, 0x11
               	mov	r8, qword ptr [rsp + 0xe0]
               	mov	r13, qword ptr [rsp + 0xd0]
               	xor	r8, r13
               	mov	rdx, qword ptr [rsp + 0xe8]
               	xor	rdx, r12
               	xor	r12, r8
               	mov	qword ptr [rsp + 0xd8], r12
               	mov	qword ptr [rsp + 0x398], r12
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0xd0], r13
               	mov	qword ptr [rsp + 0x390], r13
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xe0], r8
               	mov	qword ptr [rsp + 0x3a0], r8
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0xe8], rdx
               	mov	qword ptr [rsp + 0x3a8], rdx
               	mov	r12, qword ptr [rsp + 0xb8]
               	mov	rcx, r12
               	shl	rcx, 0x11
               	mov	r8, qword ptr [rsp + 0xc0]
               	mov	r13, qword ptr [rsp + 0xb0]
               	xor	r8, r13
               	mov	rdx, qword ptr [rsp + 0xc8]
               	xor	rdx, r12
               	xor	r12, r8
               	mov	qword ptr [rsp + 0xb8], r12
               	mov	qword ptr [rsp + 0x3b8], r12
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0xb0], r13
               	mov	qword ptr [rsp + 0x3b0], r13
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xc0], r8
               	mov	qword ptr [rsp + 0x3c0], r8
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0xc8], rdx
               	mov	qword ptr [rsp + 0x3c8], rdx
               	mov	r12, qword ptr [rsp + 0x98]
               	mov	rcx, r12
               	shl	rcx, 0x11
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	r13, qword ptr [rsp + 0x90]
               	xor	r8, r13
               	mov	rdx, qword ptr [rsp + 0xa8]
               	xor	rdx, r12
               	xor	r12, r8
               	mov	qword ptr [rsp + 0x98], r12
               	mov	qword ptr [rsp + 0x3d8], r12
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0x90], r13
               	mov	qword ptr [rsp + 0x3d0], r13
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xa0], r8
               	mov	qword ptr [rsp + 0x3e0], r8
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0xa8], rdx
               	mov	qword ptr [rsp + 0x3e8], rdx
               	mov	r12, qword ptr [rsp + 0x78]
               	mov	rcx, r12
               	shl	rcx, 0x11
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	r13, qword ptr [rsp + 0x70]
               	xor	r8, r13
               	mov	rdx, qword ptr [rsp + 0x88]
               	xor	rdx, r12
               	xor	r12, r8
               	mov	qword ptr [rsp + 0x78], r12
               	mov	qword ptr [rsp + 0x3f8], r12
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0x70], r13
               	mov	qword ptr [rsp + 0x3f0], r13
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x80], r8
               	mov	qword ptr [rsp + 0x400], r8
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0x88], rdx
               	mov	qword ptr [rsp + 0x408], rdx
               	mov	r12, qword ptr [rsp + 0x58]
               	mov	rcx, r12
               	shl	rcx, 0x11
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r13, qword ptr [rsp + 0x50]
               	xor	r8, r13
               	mov	rdx, qword ptr [rsp + 0x68]
               	xor	rdx, r12
               	xor	r12, r8
               	mov	qword ptr [rsp + 0x58], r12
               	mov	qword ptr [rsp + 0x418], r12
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0x50], r13
               	mov	qword ptr [rsp + 0x410], r13
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x60], r8
               	mov	qword ptr [rsp + 0x420], r8
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0x68], rdx
               	mov	qword ptr [rsp + 0x428], rdx
               	mov	r12, qword ptr [rsp + 0x38]
               	mov	rcx, r12
               	shl	rcx, 0x11
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r13, qword ptr [rsp + 0x30]
               	xor	r8, r13
               	mov	rdx, qword ptr [rsp + 0x48]
               	xor	rdx, r12
               	xor	r12, r8
               	mov	qword ptr [rsp + 0x38], r12
               	mov	qword ptr [rsp + 0x438], r12
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0x30], r13
               	mov	qword ptr [rsp + 0x430], r13
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x40], r8
               	mov	qword ptr [rsp + 0x440], r8
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0x48], rdx
               	mov	qword ptr [rsp + 0x448], rdx
               	mov	rdx, qword ptr [rsp + 0x458]
               	mov	rcx, qword ptr [rsp + 0x470]
               	mov	r8, rdx
               	mov	rbx, qword ptr [rsp + 0x460]
               	mov	r13, qword ptr [rsp + 0x28]
               	xor	rbx, r13
               	mov	r12, rbx
               	xor	r12, rdx
               	xor	rdx, qword ptr [rsp + 0x468]
               	mov	qword ptr [rsp + 0x458], r12
               	mov	r12, qword ptr [rsp + 0x128]
               	shl	r8, 0x11
               	xor	rbx, r8
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0x28], r13
               	mov	qword ptr [rsp + 0x450], r13
               	mov	qword ptr [rsp + 0x460], rbx
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0x468], rdx
               	mov	r13, qword ptr [rsp + 0x130]
               	mov	rdx, r13
               	mov	rbx, qword ptr [rsp + 0x220]
               	xor	rbx, rcx
               	mov	r8, qword ptr [rsp + 0x228]
               	xor	r8, r13
               	xor	r13, rbx
               	mov	qword ptr [rsp + 0x478], r13
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x470], rcx
               	shl	rdx, 0x11
               	xor	rbx, rdx
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	xor	rsi, r9
               	xor	rbp, rdi
               	xor	rdi, rsi
               	xor	rsi, rcx
               	mov	rcx, r11
               	shl	rcx, 0x11
               	xor	r10, r15
               	xor	r14, r11
               	xor	r11, r10
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x220], rbx
               	mov	qword ptr [rsp + 0x480], rbx
               	rorx	r8, r8, 0x13
               	mov	qword ptr [rsp + 0x228], r8
               	mov	qword ptr [rsp + 0x488], r8
               	mov	qword ptr [rsp + 0x498], rdi
               	xor	r9, rbp
               	mov	qword ptr [rsp + 0x490], r9
               	mov	qword ptr [rsp + 0x4a0], rsi
               	rorx	rbp, rbp, 0x13
               	mov	qword ptr [rsp + 0x4a8], rbp
               	mov	qword ptr [rsp + 0x4b8], r11
               	xor	r15, r14
               	mov	qword ptr [rsp + 0x4b0], r15
               	mov	qword ptr [rsp + 0x4c0], r10
               	rorx	r14, r14, 0x13
               	mov	qword ptr [rsp + 0x4c8], r14
               	vpxor	xmm4, xmm4, xmm4
               	kxnorw	k1, k0, k0
               	vpgatherqq	zmm4 {k1}, zmmword ptr [1*zmm0]
               	vpsllq	zmm5, zmm4, 0x2
               	vpaddq	zmm4, zmm5, zmm4
               	vprolq	zmm4, zmm4, 0x7
               	vpsllq	zmm5, zmm4, 0x3
               	vpaddq	zmm4, zmm5, zmm4
               	vmovdqu64	zmmword ptr [rsp + 0x4d8], zmm4
               	vmovdqu	xmm6, xmmword ptr [rsp + 0x458]
               	vpxor	xmm5, xmm5, xmm5
               	kxnorw	k1, k0, k0
               	vpgatherqq	zmm5 {k1}, zmmword ptr [1*zmm1]
               	vpsllq	zmm7, zmm5, 0x2
               	vpaddq	zmm5, zmm7, zmm5
               	vprolq	zmm5, zmm5, 0x7
               	vpsllq	zmm7, zmm5, 0x3
               	vpaddq	zmm5, zmm7, zmm5
               	mov	qword ptr [rsp + 0x130], r13
               	vpinsrq	xmm6, xmm6, r13, 0x1
               	mov	r13, qword ptr [rsp + 0x580]
               	vpbroadcastq	ymm7, rdi
               	vpblendd	ymm6, ymm6, ymm7, 0x30  # ymm6 = ymm6[0,1,2,3],ymm7[4,5],ymm6[6,7]
               	vpbroadcastq	ymm7, r11
               	vpblendd	ymm6, ymm6, ymm7, 0xc0  # ymm6 = ymm6[0,1,2,3,4,5],ymm7[6,7]
               	vpsllq	ymm7, ymm6, 0x2
               	vpaddq	ymm6, ymm7, ymm6
               	vprolq	ymm6, ymm6, 0x7
               	vpsllq	ymm7, ymm6, 0x3
               	vpaddq	ymm6, ymm7, ymm6
               	jmp	 <L242>
<L235>:
               	shl	r13, 0x3
               	lea	rax, [8*r13]
               	add	rax, r13
               	shr	rax, 0x3
               	imul	ebx, eax, 0x38e38e39
               	test	ebx, ebx
               	je	 <L243>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu64	zmmword ptr [rsp + 0x290], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x250], zmm0
               	mov	rbp, qword ptr [rsp + 0x120]
               	jmp	 <L244>
               	nop	dword ptr [rax]
<L245>:
               	vmovss	xmm0, dword ptr [rsp + 0x254]
               	vmovss	dword ptr [rsp + 0x258], xmm0
               	mov	r14d, 0x1
<L257>:
               	mov	eax, r14d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x250]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	rbp, r13
<L244>:
               	blsi	ecx, ebx
               	lea	rax, [rcx + 8*rcx]
               	lea	r13, [rbp + 8*rax]
               	je	 <L245>
               	mov	qword ptr [rsp + 0x10], rcx
               	xor	ecx, ecx
               	mov	r12d, 0x1
               	mov	r15d, 0x1
               	jmp	 <L246>
               	nop	dword ptr [rax]
<L248>:
               	mov	r12d, r14d
               	movsxd	rax, r14d
               	vmovss	dword ptr [rsp + 4*rax + 0x250], xmm0
               	add	rbp, 0x48
               	mov	ecx, 0xfffffffe
               	sub	ecx, r15d
               	lea	edx, [r15 + 0x1]
               	lzcnt	esi, edx
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r15d, edx
               	cmp	rbp, r13
               	je	 <L247>
<L246>:
               	mov	r14d, ecx
               	lea	rdi, [rbp + 0x8]
               	vzeroupper
               	call	qword ptr [rbp]
               	mov	edx, r14d
               	sub	edx, r12d
               	jl	 <L248>
               	movsxd	rax, r12d
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
               	lea	rsi, [rsp + 0x310]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	word ptr [rax + rax]
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
               	add	rdi, 0x250
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
               	mov	ecx, r14d
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x250
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
               	sub	ebx, dword ptr [rsp + 0x10]
               	je	 <L256>
               	vmovss	dword ptr [rsp + 4*rax + 0x254], xmm0
               	mov	rbp, r13
               	test	r14d, r14d
               	jns	 <L257>
               	jmp	 <L244>
<L256>:
               	mov	r12, qword ptr [rsp + 0x128]
               	mov	rdi, qword ptr [rsp + 0x120]
               	test	rdi, rdi
               	mov	rbx, qword ptr [rsp + 0x138]
               	jne	 <L258>
<L261>:
               	cmp	rbx, 0x2a
               	je	 <L259>
               	jmp	 <L260>
<L233>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rdi, qword ptr [rsp + 0x120]
               	test	rdi, rdi
               	mov	rbx, qword ptr [rsp + 0x138]
               	jne	 <L258>
               	jmp	 <L261>
<L243>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rbx, qword ptr [rsp + 0x138]
               	mov	rdi, qword ptr [rsp + 0x120]
<L258>:
               	vmovdqa	xmmword ptr [rsp + 0x10], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	cmp	rbx, 0x2a
               	jne	 <L260>
<L259>:
               	cmp	r12, 0x30d40
               	je	 <L262>
               	cmp	r12, 0x186a0
               	jne	 <L260>
               	vucomiss	xmm0, dword ptr  <memset+0x13f8>
               	jne	 <L263>
<L260>:
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
<L262>:
               	vucomiss	xmm0, dword ptr  <memset+0x13e8>
               	je	 <L260>
<L263>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x10]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x92c8>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.921fb6p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x13ec>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.921fb6p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x13ec>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1p+0f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1p+0f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x13f4>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1p+0f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1p+0f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.555556p-2f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x13f0>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.0c1524p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <memset+0x13fc>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.921fb6p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x13ec>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.0c1524p-2f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x13e4>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<ATR::Member::ConstantValue@ATR.Member.Constant<0x1.0c1524p-1f>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x13fc>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x92a0>
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
