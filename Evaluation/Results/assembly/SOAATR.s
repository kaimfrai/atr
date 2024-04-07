
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
               	call	qword ptr  <memset+0x80a8>
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
               	mov	rax, qword ptr  <memset+0x80b8>
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
               	mov	rax, qword ptr  <memset+0x80c0>
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
               	cmp	qword ptr , 0x0 <memset+0x80c8>
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

<initializer for module Meta.ID>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW2ID__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW2ID__in_chrg>
               	call	 <initializer for module Meta.ID:Alias>
               	pop	rax
               	jmp	 <initializer for module Meta.ID:Literals>
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
               	call	 <initializer for module Meta.Auto.Array.Bounded>
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
               	call	 <initializer for module Meta.Math.Random>
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
               	movsx	r15d, byte ptr [rcx]
               	add	r15d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
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
               	mov	qword ptr [rsp + 0x88], rax
               	lea	rsi, [r14 + 8*rax]
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	qword ptr [rsp + 0x90], rax
               	mov	esi, 0xaaaaaaab
               	mov	qword ptr [rsp + 0xb0], r14
               	imul	rsi, r14
               	shr	rsi, 0x1e
               	and	rsi, -0x20
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	r11, rbx
               	mov	qword ptr [rsp + 0x1d0], rax
               	mov	qword ptr [rsp + 0x1d8], r15
               	movsxd	rdx, r15d
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
               	mov	rbx, rdi
               	shr	rbx, 0x1f
               	xor	rbx, rdi
               	mov	rdx, rsi
               	shr	rdx, 0x1e
               	xor	rdx, rsi
               	imul	rdx, rax
               	mov	rax, rdx
               	shr	rax, 0x1b
               	xor	rax, rdx
               	imul	rax, rcx
               	mov	rcx, rax
               	shr	rcx, 0x1f
               	xor	rcx, rax
               	xor	edi, edi
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x178], rcx
               	mov	rax, rcx
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1c0], rbx
               	mov	rcx, rbx
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x18], rdx
               	mov	qword ptr [rsp + 0x180], r10
               	mov	rdx, r10
               	mov	qword ptr [rsp + 0x1c8], r9
               	mov	rsi, r9
               	xor	r10d, r10d
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
<L6>:
               	xor	r10, rsi
               	mov	r15, r10
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	r8, rcx
               	mov	r10, r8
               	xor	r14, rax
<L7>:
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
               	mov	r8, r10
               	mov	r10, r15
               	je	 <L5>
<L4>:
               	bt	r11, rdi
               	jb	 <L6>
               	mov	r15, r10
               	mov	r10, r8
               	jmp	 <L7>
<L5>:
               	movabs	r12, -0x2a59ed990f36c6d4
               	xor	edi, edi
               	jmp	 <L8>
               	nop	dword ptr [rax]
<L10>:
               	xor	r10, rsi
               	mov	r15, r10
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	r8, rcx
               	mov	r10, r8
               	xor	r14, rax
<L11>:
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
               	mov	r8, r10
               	mov	r10, r15
               	je	 <L9>
<L8>:
               	bt	r12, rdi
               	jb	 <L10>
               	mov	r15, r10
               	mov	r10, r8
               	jmp	 <L11>
<L9>:
               	xor	edi, edi
               	movabs	r9, -0x56a7d9e71fc03656
               	jmp	 <L12>
               	nop	dword ptr [rax]
<L14>:
               	xor	r10, rsi
               	mov	r15, r10
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	r8, rcx
               	mov	r10, r8
               	xor	r14, rax
<L15>:
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
               	mov	r8, r10
               	mov	r10, r15
               	je	 <L13>
<L12>:
               	bt	r9, rdi
               	jb	 <L14>
               	mov	r15, r10
               	mov	r10, r8
               	jmp	 <L15>
<L13>:
               	xor	edi, edi
               	movabs	r9, 0x39abdc4529b1661c
               	jmp	 <L16>
               	nop	dword ptr [rax]
<L18>:
               	xor	r10, rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xa8], r8
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
               	mov	r8, qword ptr [rsp + 0xa8]
               	je	 <L17>
<L16>:
               	bt	r9, rdi
               	jb	 <L18>
               	mov	qword ptr [rsp + 0xa8], r8
               	jmp	 <L19>
<L17>:
               	xor	edi, edi
               	xor	ebx, ebx
               	mov	rax, r14
               	xor	r9d, r9d
               	mov	rcx, r8
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x10], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, r10
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x80], r8
               	jmp	 <L20>
               	nop	word ptr [rax + rax]
<L22>:
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
               	je	 <L21>
<L20>:
               	bt	r11, rdi
               	jae	 <L22>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	r9, rcx
               	xor	rbx, rax
               	jmp	 <L22>
<L21>:
               	xor	edi, edi
               	jmp	 <L23>
               	nop	word ptr cs:[rax + rax]
<L25>:
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
               	je	 <L24>
<L23>:
               	bt	r12, rdi
               	jae	 <L25>
               	mov	r8, r9
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	rbx, rax
               	jmp	 <L25>
<L24>:
               	xor	edi, edi
               	jmp	 <L26>
               	nop	dword ptr [rax + rax]
<L28>:
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
               	je	 <L27>
<L26>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L28>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	r9, rcx
               	xor	rbx, rax
               	jmp	 <L28>
<L27>:
               	xor	edi, edi
               	jmp	 <L29>
               	nop	dword ptr [rax]
<L31>:
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0xa0], r9
               	xor	rbx, rax
<L32>:
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
               	mov	r9, qword ptr [rsp + 0xa0]
               	je	 <L30>
<L29>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jb	 <L31>
               	mov	qword ptr [rsp + 0xa0], r9
               	jmp	 <L32>
<L30>:
               	mov	qword ptr [rsp + 0x1b8], r14
               	xor	edi, edi
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x1a0], rbx
               	mov	rax, rbx
               	xor	ebx, ebx
               	mov	rcx, r9
               	xor	r14d, r14d
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x80]
               	xor	r15d, r15d
               	jmp	 <L33>
               	nop	word ptr cs:[rax + rax]
<L35>:
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
               	je	 <L34>
<L33>:
               	bt	r11, rdi
               	jae	 <L35>
               	xor	r15, rsi
               	xor	r14, rdx
               	xor	rbx, rcx
               	xor	r13, rax
               	jmp	 <L35>
<L34>:
               	xor	edi, edi
               	mov	r9, r13
               	jmp	 <L36>
               	nop
<L38>:
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
               	je	 <L37>
<L36>:
               	bt	r12, rdi
               	jae	 <L38>
               	xor	r15, rsi
               	xor	r14, rdx
               	xor	rbx, rcx
               	xor	r9, rax
               	jmp	 <L38>
<L37>:
               	xor	edi, edi
               	jmp	 <L39>
               	nop	dword ptr [rax + rax]
<L41>:
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
               	je	 <L40>
<L39>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L41>
               	xor	r15, rsi
               	xor	r14, rdx
               	xor	rbx, rcx
               	xor	r9, rax
               	jmp	 <L41>
<L40>:
               	xor	edi, edi
               	jmp	 <L42>
               	nop	word ptr cs:[rax + rax]
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
               	je	 <L43>
<L42>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L44>
               	xor	r15, rsi
               	xor	r14, rdx
               	xor	rbx, rcx
               	xor	r9, rax
               	jmp	 <L44>
<L43>:
               	mov	r12, r11
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	mov	rax, r9
               	xor	r8d, r8d
               	mov	rcx, rbx
               	mov	rdx, r14
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x190], rdx
               	mov	qword ptr [rsp + 0x188], r15
               	mov	rsi, r15
               	xor	r15d, r15d
               	jmp	 <L45>
               	nop	word ptr cs:[rax + rax]
<L47>:
               	xor	r15, rsi
               	mov	r11, r15
               	xor	r14, rdx
               	mov	r15, r14
               	xor	r8, rcx
               	mov	r14, r8
               	xor	qword ptr [rsp + 0x78], rax
<L48>:
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
               	mov	r8, r14
               	mov	r14, r15
               	mov	r15, r11
               	je	 <L46>
<L45>:
               	bt	r12, rdi
               	jb	 <L47>
               	mov	r11, r15
               	mov	r15, r14
               	mov	r14, r8
               	jmp	 <L48>
<L46>:
               	xor	edi, edi
               	jmp	 <L49>
               	nop	dword ptr [rax + rax]
<L51>:
               	xor	r15, rsi
               	mov	r11, r15
               	xor	r14, rdx
               	mov	r15, r14
               	xor	r8, rcx
               	mov	r14, r8
               	xor	qword ptr [rsp + 0x78], rax
<L52>:
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
               	mov	r8, r14
               	mov	r14, r15
               	mov	r15, r11
               	je	 <L50>
<L49>:
               	movabs	r11, -0x2a59ed990f36c6d4
               	bt	r11, rdi
               	jb	 <L51>
               	mov	r11, r15
               	mov	r15, r14
               	mov	r14, r8
               	jmp	 <L52>
<L50>:
               	xor	edi, edi
               	jmp	 <L53>
               	nop	word ptr cs:[rax + rax]
<L55>:
               	xor	r15, rsi
               	mov	r11, r15
               	xor	r14, rdx
               	mov	r15, r14
               	xor	r8, rcx
               	mov	r14, r8
               	xor	qword ptr [rsp + 0x78], rax
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
               	mov	r8, r14
               	mov	r14, r15
               	mov	r15, r11
               	je	 <L54>
<L53>:
               	movabs	r11, -0x56a7d9e71fc03656
               	bt	r11, rdi
               	jb	 <L55>
               	mov	r11, r15
               	mov	r15, r14
               	mov	r14, r8
               	jmp	 <L56>
<L54>:
               	xor	edi, edi
               	movabs	r13, -0x2a59ed990f36c6d4
               	movabs	r12, 0x39abdc4529b1661c
               	jmp	 <L57>
               	nop	word ptr cs:[rax + rax]
<L59>:
               	xor	r15, rsi
               	xor	r14, rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x78], rax
<L60>:
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
               	mov	r8, qword ptr [rsp + 0x98]
               	je	 <L58>
<L57>:
               	bt	r12, rdi
               	jb	 <L59>
               	mov	qword ptr [rsp + 0x98], r8
               	jmp	 <L60>
<L58>:
               	mov	qword ptr [rsp + 0x1a8], rbx
               	xor	edi, edi
               	xor	ebx, ebx
               	mov	rax, qword ptr [rsp + 0x78]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x38], rcx
               	mov	rcx, r8
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x100], rdx
               	mov	rdx, r14
               	mov	rsi, r15
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x70], r8
               	jmp	 <L61>
               	nop	word ptr cs:[rax + rax]
<L63>:
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
               	je	 <L62>
<L61>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	mov	r8, qword ptr [rsp + 0x100]
               	jae	 <L63>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	r8, rdx
               	mov	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0x38], rcx
               	xor	rbx, rax
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	jmp	 <L64>
               	nop	dword ptr [rax]
<L66>:
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
               	je	 <L65>
<L64>:
               	bt	r13, rdi
               	mov	r8, qword ptr [rsp + 0x38]
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x100], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x38], r8
               	xor	rbx, rax
               	jmp	 <L66>
<L65>:
               	xor	edi, edi
               	jmp	 <L67>
               	nop	dword ptr [rax]
<L69>:
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
               	je	 <L68>
<L67>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x100], rdx
               	xor	qword ptr [rsp + 0x38], rcx
               	xor	rbx, rax
               	jmp	 <L69>
<L68>:
               	xor	edi, edi
               	jmp	 <L70>
               	nop
<L72>:
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
               	je	 <L71>
<L70>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x100], rdx
               	xor	qword ptr [rsp + 0x38], rcx
               	xor	rbx, rax
               	jmp	 <L72>
<L71>:
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, rbx
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x68], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x30], rdx
               	mov	rdx, qword ptr [rsp + 0x100]
               	mov	rsi, qword ptr [rsp + 0x70]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x60], r11
               	movabs	r11, 0x180ec6d33cfd0aba
               	jmp	 <L73>
               	nop	word ptr cs:[rax + rax]
<L75>:
               	mov	qword ptr [rsp + 0xe0], r8
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
               	mov	r8, qword ptr [rsp + 0xe0]
               	je	 <L74>
<L73>:
               	bt	r11, rdi
               	jae	 <L75>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	r8, rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L77>
<L76>:
               	bt	r13, rdi
               	mov	r8, qword ptr [rsp + 0xe0]
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xe0], r8
               	jmp	 <L78>
<L77>:
               	xor	edi, edi
               	jmp	 <L79>
               	nop	word ptr cs:[rax + rax]
<L81>:
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
               	je	 <L80>
<L79>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L81>
<L80>:
               	xor	edi, edi
               	jmp	 <L82>
<L84>:
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
               	je	 <L83>
<L82>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L84>
<L83>:
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, qword ptr [rsp + 0xe0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x58], rcx
               	mov	rcx, qword ptr [rsp + 0x68]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x28], rdx
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, qword ptr [rsp + 0x60]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x50], r11
               	movabs	r11, 0x180ec6d33cfd0aba
               	jmp	 <L85>
               	nop	word ptr [rax + rax]
<L87>:
               	mov	qword ptr [rsp + 0x140], r8
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
               	mov	r8, qword ptr [rsp + 0x140]
               	je	 <L86>
<L85>:
               	bt	r11, rdi
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r8, rax
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	jmp	 <L88>
               	nop	word ptr cs:[rax + rax]
<L90>:
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
               	je	 <L89>
<L88>:
               	bt	r13, rdi
               	mov	r8, qword ptr [rsp + 0x140]
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x140], r8
               	jmp	 <L90>
<L89>:
               	xor	edi, edi
               	jmp	 <L91>
               	nop	word ptr cs:[rax + rax]
<L93>:
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
               	je	 <L92>
<L91>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L93>
<L92>:
               	xor	edi, edi
               	jmp	 <L94>
<L96>:
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
               	je	 <L95>
<L94>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L96>
<L95>:
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, qword ptr [rsp + 0x140]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x48], rcx
               	mov	rcx, qword ptr [rsp + 0x58]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0x50]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x40], r11
               	movabs	r11, 0x180ec6d33cfd0aba
               	jmp	 <L97>
               	nop	word ptr [rax + rax]
<L99>:
               	mov	qword ptr [rsp + 0x120], r8
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
               	mov	r8, qword ptr [rsp + 0x120]
               	je	 <L98>
<L97>:
               	bt	r11, rdi
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x40], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x48], rcx
               	xor	r8, rax
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	jmp	 <L100>
               	nop	word ptr cs:[rax + rax]
<L102>:
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
               	je	 <L101>
<L100>:
               	bt	r13, rdi
               	mov	r8, qword ptr [rsp + 0x120]
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x40], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x48], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x120], r8
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L104>
<L103>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x40], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x48], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L105>
<L104>:
               	xor	edi, edi
               	jmp	 <L106>
<L108>:
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
               	je	 <L107>
<L106>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x40], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x48], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L108>
<L107>:
               	mov	qword ptr [rsp + 0xc0], r9
               	xor	r9d, r9d
               	xor	r8d, r8d
               	mov	rax, qword ptr [rsp + 0x120]
               	xor	r12d, r12d
               	mov	rcx, qword ptr [rsp + 0x48]
               	xor	r13d, r13d
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rdi, qword ptr [rsp + 0x40]
               	xor	r11d, r11d
               	jmp	 <L109>
               	nop	dword ptr [rax]
<L111>:
               	mov	rsi, rdx
               	shl	rsi, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, rsi
               	rol	rax, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L110>
<L109>:
               	movabs	rsi, 0x180ec6d33cfd0aba
               	bt	rsi, r9
               	jae	 <L111>
               	xor	r11, rdi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r8, rax
               	jmp	 <L111>
<L110>:
               	xor	r9d, r9d
               	jmp	 <L112>
               	nop	word ptr cs:[rax + rax]
<L114>:
               	mov	rsi, rdx
               	shl	rsi, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, rsi
               	rol	rax, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L113>
<L112>:
               	movabs	rsi, -0x2a59ed990f36c6d4
               	bt	rsi, r9
               	jae	 <L114>
               	xor	r11, rdi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r8, rax
               	jmp	 <L114>
<L113>:
               	xor	r9d, r9d
               	jmp	 <L115>
               	nop	word ptr cs:[rax + rax]
<L117>:
               	mov	rsi, rdx
               	shl	rsi, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, rsi
               	rol	rax, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L116>
<L115>:
               	movabs	rsi, -0x56a7d9e71fc03656
               	bt	rsi, r9
               	jae	 <L117>
               	xor	r11, rdi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r8, rax
               	jmp	 <L117>
<L116>:
               	xor	r9d, r9d
               	jmp	 <L118>
               	nop	word ptr cs:[rax + rax]
<L120>:
               	mov	rsi, rdx
               	shl	rsi, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, rsi
               	rol	rax, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L119>
<L118>:
               	movabs	rsi, 0x39abdc4529b1661c
               	bt	rsi, r9
               	jae	 <L120>
               	xor	r11, rdi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r8, rax
               	jmp	 <L120>
<L119>:
               	mov	qword ptr [rsp + 0x198], rbx
               	mov	qword ptr [rsp + 0x1b0], r10
               	mov	rbx, r8
               	xor	r9d, r9d
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x170], r8
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xb8], r12
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xd8], r13
               	mov	r10, r11
               	xor	edx, edx
               	jmp	 <L121>
               	nop	dword ptr [rax]
<L123>:
               	mov	rax, r13
               	shl	rax, 0x11
               	xor	r12, r10
               	xor	rbx, r13
               	xor	r13, r12
               	xor	r10, rbx
               	xor	r12, rax
               	rol	rbx, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L122>
<L121>:
               	movabs	rax, 0x180ec6d33cfd0aba
               	bt	rax, r9
               	jae	 <L123>
               	xor	rdx, r10
               	xor	r8, r13
               	xor	rsi, r12
               	xor	rcx, rbx
               	jmp	 <L123>
<L122>:
               	xor	r9d, r9d
               	jmp	 <L124>
               	nop	word ptr cs:[rax + rax]
<L126>:
               	mov	rax, r13
               	shl	rax, 0x11
               	xor	r12, r10
               	xor	rbx, r13
               	xor	r13, r12
               	xor	r10, rbx
               	xor	r12, rax
               	rol	rbx, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L125>
<L124>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, r9
               	jae	 <L126>
               	xor	rdx, r10
               	xor	r8, r13
               	xor	rsi, r12
               	xor	rcx, rbx
               	jmp	 <L126>
<L125>:
               	xor	r9d, r9d
               	jmp	 <L127>
               	nop	word ptr cs:[rax + rax]
<L129>:
               	mov	rax, r13
               	shl	rax, 0x11
               	xor	r12, r10
               	xor	rbx, r13
               	xor	r13, r12
               	xor	r10, rbx
               	xor	r12, rax
               	rol	rbx, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L128>
<L127>:
               	movabs	rax, -0x56a7d9e71fc03656
               	bt	rax, r9
               	jae	 <L129>
               	xor	rdx, r10
               	xor	r8, r13
               	xor	rsi, r12
               	xor	rcx, rbx
               	jmp	 <L129>
<L128>:
               	xor	r9d, r9d
               	jmp	 <L130>
               	nop	word ptr cs:[rax + rax]
<L132>:
               	mov	rax, r13
               	shl	rax, 0x11
               	xor	r12, r10
               	xor	rbx, r13
               	xor	r13, r12
               	xor	r10, rbx
               	xor	r12, rax
               	rol	rbx, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L131>
<L130>:
               	movabs	rax, 0x39abdc4529b1661c
               	bt	rax, r9
               	jae	 <L132>
               	xor	rdx, r10
               	xor	r8, r13
               	xor	rsi, r12
               	xor	rcx, rbx
               	jmp	 <L132>
<L131>:
               	mov	eax, 0x40
               	nop	word ptr cs:[rax + rax]
<L133>:
               	dec	rax
               	jne	 <L133>
               	mov	eax, 0x40
               	mov	rbx, qword ptr [rsp + 0x90]
               	mov	r12, qword ptr [rsp + 0xb0]
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
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L165>:
               	dec	rax
               	jne	 <L165>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L166>:
               	dec	rax
               	jne	 <L166>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L167>:
               	dec	rax
               	jne	 <L167>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L168>:
               	dec	rax
               	jne	 <L168>
               	vxorps	xmm0, xmm0, xmm0
               	vmovaps	ymmword ptr [rsp + 0x240], ymm0
               	test	r12, r12
               	je	 <L169>
               	lea	rax, [rbx + 4*r12]
               	mov	qword ptr [rsp + 0x220], rax
               	lea	rax, [rax + 4*r12]
               	mov	qword ptr [rsp + 0x218], rax
               	lea	rax, [rax + 4*r12]
               	mov	qword ptr [rsp + 0x210], rax
               	lea	rax, [rax + 4*r12]
               	mov	qword ptr [rsp + 0x208], rax
               	lea	rax, [rax + 4*r12]
               	mov	qword ptr [rsp + 0x200], rax
               	lea	rax, [rax + 4*r12]
               	mov	qword ptr [rsp + 0x1f8], rax
               	lea	rax, [rax + 4*r12]
               	mov	qword ptr [rsp + 0x1f0], rax
               	lea	rax, [rax + 4*r12]
               	mov	qword ptr [rsp + 0x1e8], rax
               	lea	rax, [rax + 4*r12]
               	mov	qword ptr [rsp + 0x1e0], rax
               	mov	rax, qword ptr [rsp + 0x88]
               	lea	rax, [rbx + 8*rax]
               	mov	dword ptr [rsp + 0xc], 0x0
               	mov	r9, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x160], r15
               	mov	qword ptr [rsp + 0xc8], r14
               	mov	r14, qword ptr [rsp + 0x18]
               	mov	rdi, rdx
               	mov	qword ptr [rsp + 0x168], rsi
               	mov	rsi, qword ptr [rsp + 0x10]
               	mov	r10, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0xd0], r8
               	mov	rdx, r11
               	mov	qword ptr [rsp + 0x88], rax
               	nop	word ptr cs:[rax + rax]
<L170>:
               	mov	qword ptr [rsp + 0xc0], r10
               	mov	qword ptr [rsp + 0xb8], r9
               	mov	qword ptr [rsp + 0x228], rdi
               	mov	qword ptr [rsp + 0x230], rcx
               	mov	qword ptr [rsp + 0x238], rdx
               	mov	qword ptr [rsp + 0x10], rsi
               	mov	qword ptr [rsp + 0x18], r14
               	mov	r8, qword ptr [rsp + 0x180]
               	lea	rax, [r8 + 4*r8]
               	rol	rax, 0x7
               	lea	r13, [rax + 8*rax]
               	lea	rax, [r14 + 4*r14]
               	rol	rax, 0x7
               	lea	r10, [rax + 8*rax]
               	lea	rax, [rsi + 4*rsi]
               	rol	rax, 0x7
               	lea	rdi, [rax + 8*rax]
               	mov	r15, qword ptr [rsp + 0x190]
               	lea	rax, [r15 + 4*r15]
               	rol	rax, 0x7
               	lea	r9, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0xc8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r11, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x100]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rbx, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r14, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r12, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0xd8]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	vmovq	xmm0, r10
               	mov	rcx, qword ptr [rsp + 0xd0]
               	lea	r10, [rcx + 4*rcx]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	vmovq	xmm1, rdi
               	vmovq	xmm2, r9
               	vmovq	xmm3, r11
               	vmovq	xmm4, rbx
               	vmovq	xmm5, r14
               	vmovq	xmm6, r12
               	vmovq	xmm7, rax
               	vmovq	xmm8, rsi
               	vmovq	xmm9, r10
               	mov	eax, r13d
               	shr	eax, 0x8
               	mov	r14d, r13d
               	shr	r14d, 0x10
               	mov	r10d, r13d
               	shr	r10d, 0x18
               	mov	rbx, r13
               	shr	rbx, 0x20
               	mov	rdi, r13
               	shr	rdi, 0x28
               	mov	r11, r13
               	shr	r11, 0x30
               	mov	r9, r13
               	shr	r9, 0x38
               	movzx	esi, r13b
               	imul	esi, esi, 0x4f
               	shr	esi, 0xa
               	lea	r12d, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*r12]
               	sub	r13b, sil
               	movzx	r12d, al
               	imul	eax, r12d, 0x4f
               	shr	eax, 0xa
               	lea	esi, [rax + 2*rax]
               	lea	eax, [rax + 4*rsi]
               	sub	r12b, al
               	movzx	r14d, r14b
               	imul	eax, r14d, 0x4f
               	shr	eax, 0xa
               	lea	esi, [rax + 2*rax]
               	lea	eax, [rax + 4*rsi]
               	sub	r14b, al
               	imul	eax, r10d, 0x4f
               	shr	eax, 0xa
               	lea	esi, [rax + 2*rax]
               	lea	eax, [rax + 4*rsi]
               	sub	r10b, al
               	movzx	eax, bl
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	esi, [rax + 2*rax]
               	lea	eax, [rax + 4*rsi]
               	sub	bl, al
               	movzx	eax, dil
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	esi, [rax + 2*rax]
               	lea	eax, [rax + 4*rsi]
               	sub	dil, al
               	movzx	eax, r11b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	esi, [rax + 2*rax]
               	lea	eax, [rax + 4*rsi]
               	sub	r11b, al
               	imul	eax, r9d, 0x4f
               	shr	eax, 0xa
               	lea	esi, [rax + 2*rax]
               	lea	eax, [rax + 4*rsi]
               	sub	r9b, al
               	movzx	eax, r9b
               	shl	rax, 0x38
               	movzx	esi, r11b
               	mov	r9, qword ptr [rsp + 0x1c8]
               	shl	rsi, 0x30
               	or	rsi, rax
               	movzx	eax, dil
               	shl	rax, 0x28
               	or	rax, rsi
               	movzx	esi, bl
               	shl	rsi, 0x20
               	or	rsi, rax
               	movzx	eax, r10b
               	shl	eax, 0x18
               	or	rax, rsi
               	movzx	esi, r14b
               	shl	esi, 0x10
               	or	rsi, rax
               	movzx	eax, r12b
               	shl	eax, 0x8
               	or	rax, rsi
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
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
               	movzx	esi, r13b
               	mov	r11, qword ptr [rsp + 0x230]
               	mov	rdi, qword ptr [rsp + 0x78]
               	or	rsi, rax
               	mov	ebx, dword ptr [rsp + 0xc]
               	mov	eax, ebx
               	mov	rcx, qword ptr [rsp + 0x90]
               	vmovaps	ymmword ptr [rcx + 4*rax], ymm0
               	mov	r14, qword ptr [rsp + 0x220]
               	vmovaps	ymmword ptr [r14 + 4*rax], ymm1
               	mov	r14, qword ptr [rsp + 0x218]
               	vmovaps	ymmword ptr [r14 + 4*rax], ymm2
               	mov	r14, qword ptr [rsp + 0x210]
               	vmovaps	ymmword ptr [r14 + 4*rax], ymm3
               	mov	r14, qword ptr [rsp + 0x208]
               	vmovaps	ymmword ptr [r14 + 4*rax], ymm4
               	mov	r14, qword ptr [rsp + 0x200]
               	vmovaps	ymmword ptr [r14 + 4*rax], ymm5
               	mov	r14, qword ptr [rsp + 0x1f8]
               	vmovaps	ymmword ptr [r14 + 4*rax], ymm6
               	mov	r14, qword ptr [rsp + 0x1f0]
               	vmovaps	ymmword ptr [r14 + 4*rax], ymm7
               	mov	r14, qword ptr [rsp + 0x1e8]
               	vmovaps	ymmword ptr [r14 + 4*rax], ymm8
               	mov	r14, qword ptr [rsp + 0x1e0]
               	vmovaps	ymmword ptr [r14 + 4*rax], ymm9
               	mov	rcx, qword ptr [rsp + 0x88]
               	mov	qword ptr [rcx + rax], rsi
               	mov	rsi, qword ptr [rsp + 0x10]
               	mov	r14, qword ptr [rsp + 0x18]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	r12, qword ptr [rsp + 0x1c0]
               	xor	r12, r9
               	mov	rcx, qword ptr [rsp + 0x178]
               	xor	rcx, r8
               	xor	r8, r12
               	mov	qword ptr [rsp + 0x180], r8
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x1c8], r9
               	mov	r9, qword ptr [rsp + 0xb8]
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x1c0], r12
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x178], rcx
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	r12, qword ptr [rsp + 0xa8]
               	mov	r10, qword ptr [rsp + 0x1b0]
               	xor	r12, r10
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	xor	rcx, r14
               	xor	r14, r12
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x1b0], r10
               	mov	r10, qword ptr [rsp + 0xc0]
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1b8], rcx
               	xor	r12, rax
               	mov	qword ptr [rsp + 0xa8], r12
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x80]
               	mov	rdx, qword ptr [rsp + 0xa0]
               	xor	rdx, rcx
               	mov	r12, qword ptr [rsp + 0x1a0]
               	xor	r12, rsi
               	xor	rsi, rdx
               	xor	rcx, r12
               	mov	qword ptr [rsp + 0x80], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xa0], rdx
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x1a0], r12
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	r12, qword ptr [rsp + 0x188]
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	xor	rcx, r12
               	xor	r10, r15
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x190], r15
               	xor	r12, r10
               	mov	qword ptr [rsp + 0x188], r12
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x1a8], rcx
               	rol	r10, 0x2d
               	mov	rdx, qword ptr [rsp + 0xc8]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r12, qword ptr [rsp + 0x160]
               	mov	rcx, qword ptr [rsp + 0x98]
               	xor	rcx, r12
               	xor	rdi, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0xc8], rdx
               	xor	r12, rdi
               	mov	qword ptr [rsp + 0x160], r12
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x98], rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x78], rdi
               	mov	rdi, qword ptr [rsp + 0x228]
               	mov	r13, qword ptr [rsp + 0x100]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r12, qword ptr [rsp + 0x38]
               	mov	rcx, qword ptr [rsp + 0x70]
               	xor	r12, rcx
               	mov	rdx, qword ptr [rsp + 0x198]
               	xor	rdx, r13
               	xor	r13, r12
               	mov	qword ptr [rsp + 0x100], r13
               	xor	rcx, rdx
               	mov	qword ptr [rsp + 0x70], rcx
               	mov	rcx, r11
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x198], rdx
               	mov	rdx, qword ptr [rsp + 0xe0]
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x38], r12
               	mov	r13, qword ptr [rsp + 0x30]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x68]
               	mov	r12, qword ptr [rsp + 0x60]
               	xor	r11, r12
               	xor	rdx, r13
               	xor	r13, r11
               	mov	qword ptr [rsp + 0x30], r13
               	xor	r12, rdx
               	mov	qword ptr [rsp + 0x60], r12
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x68], r11
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0xe0], rdx
               	mov	rax, qword ptr [rsp + 0x28]
               	mov	r8, rax
               	shl	r8, 0x11
               	mov	r11, qword ptr [rsp + 0x58]
               	mov	r12, qword ptr [rsp + 0x50]
               	xor	r11, r12
               	mov	r13, qword ptr [rsp + 0x140]
               	xor	r13, rax
               	xor	rax, r11
               	mov	qword ptr [rsp + 0x28], rax
               	xor	r12, r13
               	mov	qword ptr [rsp + 0x50], r12
               	xor	r11, r8
               	mov	qword ptr [rsp + 0x58], r11
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x140], r13
               	mov	r12, qword ptr [rsp + 0x20]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x48]
               	mov	r13, qword ptr [rsp + 0x40]
               	xor	r11, r13
               	mov	r15, qword ptr [rsp + 0x120]
               	xor	r15, r12
               	xor	r12, r11
               	mov	qword ptr [rsp + 0x20], r12
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x48], r11
               	mov	r11, qword ptr [rsp + 0xd8]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x238]
               	xor	r9, rdx
               	mov	r8, qword ptr [rsp + 0x170]
               	xor	r8, r11
               	xor	r11, r9
               	mov	qword ptr [rsp + 0xd8], r11
               	xor	r9, rax
               	mov	r11, qword ptr [rsp + 0xd0]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	r12, qword ptr [rsp + 0x168]
               	xor	r12, rdi
               	xor	rcx, r11
               	xor	r11, r12
               	mov	qword ptr [rsp + 0xd0], r11
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x168], r12
               	mov	r12, qword ptr [rsp + 0xb0]
               	xor	r13, r15
               	mov	qword ptr [rsp + 0x40], r13
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x120], r15
               	add	ebx, 0x8
               	xor	rdx, r8
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x170], r8
               	xor	rdi, rcx
               	rol	rcx, 0x2d
               	mov	dword ptr [rsp + 0xc], ebx
               	cmp	r12d, ebx
               	mov	rbx, qword ptr [rsp + 0x90]
               	jne	 <L170>
               	mov	eax, dword ptr [rsp + 0xc]
               	test	eax, eax
               	je	 <L169>
               	shr	eax, 0x3
               	lea	rdi, [rsp + 0x260]
               	mov	r14, rbx
               	xor	ebx, ebx
               	mov	edx, 0x400
               	mov	r15d, eax
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	esi, r15d
               	mov	r10, qword ptr [rsp + 0x88]
               	lea	rax, [r12 + 8*r12]
               	mov	rdx, r14
               	lea	r14, [rax + 2*rax]
               	add	r14, rdx
               	add	r14, r12
               	mov	r13, r12
               	shl	r13, 0x5
               	add	r13, rdx
               	lea	r15, [rdx + 4*rax]
               	vmovdqa	ymm5, ymmword ptr  <memset+0x1340>
               	vmovdqa	ymm6, ymmword ptr  <memset+0x1360>
               	vpbroadcastd	ymm7, dword ptr  <memset+0x1390>
               	vpbroadcastd	ymm8, dword ptr  <memset+0x1380>
               	vpbroadcastd	ymm9, dword ptr  <memset+0x138c>
               	vpbroadcastd	ymm10, dword ptr  <memset+0x1384>
               	vmovdqa	ymmword ptr [rsp + 0xe0], ymm7
               	vmovdqa	ymmword ptr [rsp + 0x140], ymm8
               	vmovdqa	ymmword ptr [rsp + 0x120], ymm9
               	vmovdqa	ymmword ptr [rsp + 0x100], ymm10
               	nop	dword ptr [rax]
<L179>:
               	mov	eax, esi
               	neg	eax
               	mov	dword ptr [rsp + 0xc], esi
               	and	eax, esi
               	lea	r12, [rax + rbx]
               	test	eax, eax
               	je	 <L171>
               	mov	edx, 0x1
               	xor	esi, esi
               	mov	edi, 0x1
               	jmp	 <L172>
               	nop	word ptr cs:[rax + rax]
<L174>:
               	mov	edi, ecx
               	movsxd	rsi, ecx
               	shl	rsi, 0x5
               	vmovaps	ymmword ptr [rsp + rsi + 0x260], ymm0
               	inc	rbx
               	mov	esi, 0xfffffffe
               	sub	esi, edx
               	inc	edx
               	bsr	r8d, edx
               	xor	r8d, 0x1f
               	popcnt	esi, esi
               	sub	esi, r8d
               	cmp	rbx, r12
               	je	 <L173>
<L172>:
               	vpmovzxbd	ymm0, qword ptr [r10 + 8*rbx]
               	mov	ecx, esi
               	vpermd	ymm1, ymm0, ymm5
               	vpermd	ymm2, ymm0, ymm6
               	vpslld	ymm3, ymm0, 0x1c
               	vblendvps	ymm1, ymm1, ymm2, ymm3
               	vpsllvd	ymm2, ymm7, ymm0
               	mov	rsi, rbx
               	shl	rsi, 0x5
               	vmaskmovps	ymm2, ymm2, ymmword ptr [r14 + rsi]
               	vpsllvd	ymm3, ymm8, ymm0
               	vmaskmovps	ymm4, ymm3, ymmword ptr [r13 + rsi]
               	vmulps	ymm1, ymm2, ymm1
               	vblendvps	ymm3, ymm2, ymm4, ymm3
               	vmulps	ymm1, ymm1, ymm3
               	vpsllvd	ymm3, ymm9, ymm0
               	vmaskmovps	ymm4, ymm3, ymmword ptr [r15 + rsi]
               	vblendvps	ymm2, ymm2, ymm4, ymm3
               	vmulps	ymm2, ymm2, ymm1
               	vpsllvd	ymm0, ymm10, ymm0
               	vblendvps	ymm0, ymm1, ymm2, ymm0
               	mov	r8d, ecx
               	sub	r8d, edi
               	jl	 <L174>
               	movsxd	rsi, edi
               	lea	r9d, [r8 + 0x1]
               	and	r9d, 0x3
               	je	 <L175>
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
<L176>:
               	vaddps	ymm0, ymm0, ymmword ptr [r10 + r11]
               	add	r11, 0x20
               	cmp	edi, r11d
               	jne	 <L176>
               	add	rsi, r9
               	inc	rsi
               	mov	r10, qword ptr [rsp + 0x88]
<L175>:
               	cmp	r8d, 0x3
               	jb	 <L174>
               	mov	edi, ecx
               	sub	edi, esi
               	inc	edi
               	shl	rsi, 0x5
               	lea	r8, [rsp + 0x2c0]
               	add	rsi, r8
               	nop	dword ptr [rax]
<L177>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi - 0x60]
               	vaddps	ymm0, ymm0, ymmword ptr [rsi - 0x40]
               	vaddps	ymm0, ymm0, ymmword ptr [rsi - 0x20]
               	vaddps	ymm0, ymm0, ymmword ptr [rsi]
               	sub	rsi, -0x80
               	add	edi, -0x4
               	jne	 <L177>
               	jmp	 <L174>
               	nop	word ptr cs:[rax + rax]
<L171>:
               	mov	ecx, 0x1
<L173>:
               	movsxd	rdx, ecx
               	shl	rdx, 0x5
               	add	rdx, rsp
               	add	rdx, 0x260
               	mov	esi, dword ptr [rsp + 0xc]
               	sub	esi, eax
               	je	 <L178>
               	vmovaps	ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx + 0x20], ymm0
               	mov	rbx, r12
               	test	ecx, ecx
               	js	 <L179>
               	mov	edx, ecx
               	shl	rdx, 0x5
               	add	rdx, 0x20
               	lea	rdi, [rsp + 0x260]
               	mov	ebx, esi
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovdqa	ymm10, ymmword ptr [rsp + 0x100]
               	vmovdqa	ymm9, ymmword ptr [rsp + 0x120]
               	vmovdqa	ymm8, ymmword ptr [rsp + 0x140]
               	vmovdqa	ymm7, ymmword ptr [rsp + 0xe0]
               	vmovdqa	ymm6, ymmword ptr  <memset+0x1360>
               	vmovdqa	ymm5, ymmword ptr  <memset+0x1340>
               	mov	esi, ebx
               	mov	r10, qword ptr [rsp + 0x88]
               	mov	rbx, r12
               	jmp	 <L179>
<L178>:
               	vmovaps	ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rsp + 0x240], ymm0
               	mov	r12, qword ptr [rsp + 0xb0]
               	mov	rbx, qword ptr [rsp + 0x90]
<L169>:
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	test	rdi, rdi
               	je	 <L180>
               	vzeroupper
               	call	 <free@plt>
<L180>:
               	test	rbx, rbx
               	mov	rdi, rbx
               	mov	rbx, qword ptr [rsp + 0x1d8]
               	je	 <L181>
               	vzeroupper
               	call	 <free@plt>
<L181>:
               	cmp	ebx, 0x2a
               	jne	 <L182>
               	cmp	r12d, 0x186a0
               	jne	 <L182>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x240]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <memset+0x1388>
               	jne	 <L183>
<L182>:
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
<L183>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0xe0], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0xe0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x80d0>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x80b0>
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
