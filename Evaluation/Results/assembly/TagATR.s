
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
               	call	qword ptr  <memset+0x9330>
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
               	mov	rax, qword ptr  <memset+0x9340>
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
               	mov	rax, qword ptr  <memset+0x9348>
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
               	cmp	qword ptr , 0x0 <memset+0x9350>
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
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW3BitW5Field__in_chrg>
               	jmp	 <initializer for module Std>
               	int3
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
               	call	 <initializer for module Meta.Math.Random>
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
               	sub	rsp, 0x398
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
               	movsx	r14d, byte ptr [rax]
               	add	r14d, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	word ptr [rax + rax]
<L3>:
               	lea	edx, [r14 + 4*r14]
               	movsx	ecx, cl
               	lea	r14d, [rcx + 2*rdx]
               	add	r14d, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	mov	ecx, r14d
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x260], rcx
               	lea	rdi, [rcx + 8*rax]
               	mov	rsi, qword ptr  <memset+0x9358>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x280], rax
               	movsxd	rdx, ebx
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
               	mov	r10, rdi
               	shr	r10, 0x1f
               	xor	r10, rdi
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
               	mov	r8, rsi
               	shr	r8, 0x1f
               	xor	r8, rsi
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
               	mov	r9, rdi
               	shr	r9, 0x1f
               	xor	r9, rdi
               	mov	rdx, rsi
               	shr	rdx, 0x1e
               	xor	rdx, rsi
               	imul	rdx, rax
               	mov	rax, rdx
               	shr	rax, 0x1b
               	xor	rax, rdx
               	imul	rax, rcx
               	mov	rsi, rax
               	shr	rsi, 0x1f
               	xor	rsi, rax
               	xor	eax, eax
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x290], rsi
               	xor	ebp, ebp
               	mov	qword ptr [rsp + 0x248], r9
               	mov	rdi, r9
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x268], r8
               	mov	qword ptr [rsp + 0x360], r10
               	mov	r9, r10
               	xor	r10d, r10d
               	jmp	 <L4>
               	nop	dword ptr [rax + rax]
<L6>:
               	mov	rcx, r8
               	shl	rcx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rcx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L5>
<L4>:
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rax
               	jae	 <L6>
               	xor	r10, r9
               	xor	r12, r8
               	xor	rbp, rdi
               	xor	r15, rsi
               	jmp	 <L6>
<L5>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop
<L9>:
               	mov	rdx, r8
               	shl	rdx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rdx
               	rol	rsi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L8>
<L7>:
               	bt	rax, rcx
               	jae	 <L9>
               	xor	r10, r9
               	xor	r12, r8
               	xor	rbp, rdi
               	xor	r15, rsi
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x258], r10
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	dword ptr [rax]
<L12>:
               	mov	r10, r8
               	shl	r10, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r10
               	rol	rsi, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L11>
<L10>:
               	bt	rcx, rdx
               	jae	 <L12>
               	mov	r10, r12
               	xor	qword ptr [rsp + 0x258], r9
               	xor	r10, r8
               	mov	r12, r10
               	xor	rbp, rdi
               	xor	r15, rsi
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r10d, r10d
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
<L15>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L14>
<L13>:
               	bt	rdx, r10
               	jae	 <L15>
               	xor	qword ptr [rsp + 0x258], r9
               	xor	r12, r8
               	xor	rbp, rdi
               	xor	r15, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x228], rsi
               	mov	rsi, r15
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x220], rdi
               	mov	rdi, rbp
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x38], r8
               	mov	r8, r12
               	mov	r9, qword ptr [rsp + 0x258]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x218], r11
               	jmp	 <L16>
               	nop	dword ptr [rax]
<L18>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L17>
<L16>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L18>
<L17>:
               	xor	r10d, r10d
               	jmp	 <L19>
               	nop	word ptr [rax + rax]
<L21>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L20>
<L19>:
               	bt	rax, r10
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
               	nop	dword ptr [rax]
<L24>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L23>
<L22>:
               	bt	rcx, r10
               	jae	 <L24>
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
               	nop	dword ptr [rax]
<L27>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L26>
<L25>:
               	bt	rdx, r10
               	jae	 <L27>
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x210], rsi
               	mov	rsi, qword ptr [rsp + 0x228]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x208], rdi
               	mov	rdi, qword ptr [rsp + 0x220]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x30], r8
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	r9, qword ptr [rsp + 0x218]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x200], r11
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
<L30>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L29>
<L28>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
               	jmp	 <L30>
<L29>:
               	xor	r10d, r10d
               	jmp	 <L31>
               	nop	word ptr [rax + rax]
<L33>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L32>
<L31>:
               	bt	rax, r10
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
               	jmp	 <L33>
<L32>:
               	xor	r10d, r10d
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L35>
<L34>:
               	bt	rcx, r10
               	jae	 <L36>
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
               	jmp	 <L36>
<L35>:
               	xor	r10d, r10d
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L38>
<L37>:
               	bt	rdx, r10
               	jae	 <L39>
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1f8], rsi
               	mov	rsi, qword ptr [rsp + 0x210]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f0], rdi
               	mov	rdi, qword ptr [rsp + 0x208]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x28], r8
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	r9, qword ptr [rsp + 0x200]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1e8], r11
               	jmp	 <L40>
               	nop	word ptr cs:[rax + rax]
<L42>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L41>
<L40>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L42>
<L41>:
               	xor	r10d, r10d
               	jmp	 <L43>
               	nop	word ptr [rax + rax]
<L45>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L44>
<L43>:
               	bt	rax, r10
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L45>
<L44>:
               	xor	r10d, r10d
               	jmp	 <L46>
               	nop	dword ptr [rax]
<L48>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L47>
<L46>:
               	bt	rcx, r10
               	jae	 <L48>
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L48>
<L47>:
               	xor	r10d, r10d
               	jmp	 <L49>
               	nop	dword ptr [rax]
<L51>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L50>
<L49>:
               	bt	rdx, r10
               	jae	 <L51>
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1e0], rsi
               	mov	rsi, qword ptr [rsp + 0x1f8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x20], r8
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x1e8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1d0], r11
               	jmp	 <L52>
               	nop	word ptr cs:[rax + rax]
<L54>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L53>
<L52>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L54>
<L53>:
               	xor	r10d, r10d
               	jmp	 <L55>
               	nop	word ptr [rax + rax]
<L57>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L56>
<L55>:
               	bt	rax, r10
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L57>
<L56>:
               	xor	r10d, r10d
               	jmp	 <L58>
               	nop	dword ptr [rax]
<L60>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L59>
<L58>:
               	bt	rcx, r10
               	jae	 <L60>
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L60>
<L59>:
               	xor	r10d, r10d
               	jmp	 <L61>
               	nop	dword ptr [rax]
<L63>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L62>
<L61>:
               	bt	rdx, r10
               	jae	 <L63>
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L63>
<L62>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1c8], rsi
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	mov	rdi, qword ptr [rsp + 0x1d8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x18], r8
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x1d0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1b8], r11
               	jmp	 <L64>
               	nop	word ptr cs:[rax + rax]
<L66>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L65>
<L64>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L66>
<L65>:
               	xor	r10d, r10d
               	jmp	 <L67>
               	nop	word ptr [rax + rax]
<L69>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L68>
<L67>:
               	bt	rax, r10
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L69>
<L68>:
               	xor	r10d, r10d
               	jmp	 <L70>
               	nop	dword ptr [rax]
<L72>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L71>
<L70>:
               	bt	rcx, r10
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L72>
<L71>:
               	xor	r10d, r10d
               	jmp	 <L73>
               	nop	dword ptr [rax]
<L75>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L74>
<L73>:
               	bt	rdx, r10
               	jae	 <L75>
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1b0], rsi
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	mov	rdi, qword ptr [rsp + 0x1c0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x10], r8
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	r9, qword ptr [rsp + 0x1b8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1a0], r11
               	jmp	 <L76>
               	nop	word ptr cs:[rax + rax]
<L78>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L77>
<L76>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L78>
<L77>:
               	xor	r10d, r10d
               	jmp	 <L79>
               	nop	word ptr [rax + rax]
<L81>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L80>
<L79>:
               	bt	rax, r10
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L81>
<L80>:
               	xor	r10d, r10d
               	jmp	 <L82>
               	nop	dword ptr [rax]
<L84>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L83>
<L82>:
               	bt	rcx, r10
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L84>
<L83>:
               	xor	r10d, r10d
               	jmp	 <L85>
               	nop	dword ptr [rax]
<L87>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L86>
<L85>:
               	bt	rdx, r10
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L87>
<L86>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x198], rsi
               	mov	rsi, qword ptr [rsp + 0x1b0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x8], r8
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	r9, qword ptr [rsp + 0x1a0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x188], r11
               	jmp	 <L88>
               	nop	word ptr cs:[rax + rax]
<L90>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L89>
<L88>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
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
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L92>
<L91>:
               	bt	rax, r10
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L93>
<L92>:
               	xor	r10d, r10d
               	jmp	 <L94>
               	nop	dword ptr [rax]
<L96>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L95>
<L94>:
               	bt	rcx, r10
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L96>
<L95>:
               	xor	r10d, r10d
               	jmp	 <L97>
               	nop	dword ptr [rax]
<L99>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L98>
<L97>:
               	bt	rdx, r10
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L99>
<L98>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x180], rsi
               	mov	rsi, qword ptr [rsp + 0x198]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	mov	rdi, qword ptr [rsp + 0x190]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x90], r8
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	r9, qword ptr [rsp + 0x188]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x170], r11
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
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L101>
<L100>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L102>
<L101>:
               	xor	r10d, r10d
               	jmp	 <L103>
               	nop	word ptr [rax + rax]
<L105>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L104>
<L103>:
               	bt	rax, r10
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L105>
<L104>:
               	xor	r10d, r10d
               	jmp	 <L106>
<L108>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L107>
<L106>:
               	bt	rcx, r10
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L108>
<L107>:
               	xor	r10d, r10d
               	jmp	 <L109>
<L111>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L110>
<L109>:
               	bt	rdx, r10
               	jae	 <L111>
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L111>
<L110>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x168], rsi
               	mov	rsi, qword ptr [rsp + 0x180]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	mov	rdi, qword ptr [rsp + 0x178]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x88], r8
               	mov	r8, qword ptr [rsp + 0x90]
               	mov	r9, qword ptr [rsp + 0x170]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x158], r11
               	jmp	 <L112>
               	nop	word ptr [rax + rax]
<L114>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L113>
<L112>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L114>
<L113>:
               	xor	r10d, r10d
               	jmp	 <L115>
               	nop	word ptr [rax + rax]
<L117>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L116>
<L115>:
               	bt	rax, r10
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L117>
<L116>:
               	xor	r10d, r10d
               	jmp	 <L118>
<L120>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L119>
<L118>:
               	bt	rcx, r10
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L120>
<L119>:
               	xor	r10d, r10d
               	jmp	 <L121>
<L123>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L122>
<L121>:
               	bt	rdx, r10
               	jae	 <L123>
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x150], rsi
               	mov	rsi, qword ptr [rsp + 0x168]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	mov	rdi, qword ptr [rsp + 0x160]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x80], r8
               	mov	r8, qword ptr [rsp + 0x88]
               	mov	r9, qword ptr [rsp + 0x158]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x140], r11
               	jmp	 <L124>
               	nop	word ptr [rax + rax]
<L126>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L125>
<L124>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L126>
<L125>:
               	xor	r10d, r10d
               	jmp	 <L127>
               	nop	word ptr [rax + rax]
<L129>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L128>
<L127>:
               	bt	rax, r10
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L129>
<L128>:
               	xor	r10d, r10d
               	jmp	 <L130>
<L132>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L131>
<L130>:
               	bt	rcx, r10
               	jae	 <L132>
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L132>
<L131>:
               	xor	r10d, r10d
               	jmp	 <L133>
<L135>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L134>
<L133>:
               	bt	rdx, r10
               	jae	 <L135>
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x138], rsi
               	mov	rsi, qword ptr [rsp + 0x150]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	mov	rdi, qword ptr [rsp + 0x148]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	r9, qword ptr [rsp + 0x140]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x128], r11
               	jmp	 <L136>
               	nop	word ptr [rax + rax]
<L138>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L137>
<L136>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L138>
<L137>:
               	xor	r10d, r10d
               	jmp	 <L139>
               	nop	word ptr [rax + rax]
<L141>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L140>
<L139>:
               	bt	rax, r10
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L141>
<L140>:
               	xor	r10d, r10d
               	jmp	 <L142>
               	nop	dword ptr [rax]
<L144>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L143>
<L142>:
               	bt	rcx, r10
               	jae	 <L144>
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L144>
<L143>:
               	xor	r10d, r10d
               	jmp	 <L145>
               	nop	dword ptr [rax]
<L147>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L146>
<L145>:
               	bt	rdx, r10
               	jae	 <L147>
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x98], rsi
               	mov	rsi, qword ptr [rsp + 0x138]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	mov	rdi, qword ptr [rsp + 0x130]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x70], r8
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	r9, qword ptr [rsp + 0x128]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x118], r11
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
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L149>
<L148>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x98], rsi
               	jmp	 <L150>
<L149>:
               	xor	r10d, r10d
               	jmp	 <L151>
               	nop	word ptr [rax + rax]
<L153>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L152>
<L151>:
               	bt	rax, r10
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x98], rsi
               	jmp	 <L153>
<L152>:
               	xor	r10d, r10d
               	jmp	 <L154>
               	nop	dword ptr [rax]
<L156>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L155>
<L154>:
               	bt	rcx, r10
               	jae	 <L156>
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x98], rsi
               	jmp	 <L156>
<L155>:
               	xor	r10d, r10d
               	jmp	 <L157>
               	nop	dword ptr [rax]
<L159>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L158>
<L157>:
               	bt	rdx, r10
               	jae	 <L159>
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x98], rsi
               	jmp	 <L159>
<L158>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x110], rsi
               	mov	rsi, qword ptr [rsp + 0x98]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	mov	rdi, qword ptr [rsp + 0x120]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x68], r8
               	mov	r8, qword ptr [rsp + 0x70]
               	mov	r9, qword ptr [rsp + 0x118]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x100], r11
               	jmp	 <L160>
               	nop	word ptr cs:[rax + rax]
<L162>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L161>
<L160>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L162>
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L162>
<L161>:
               	xor	r10d, r10d
               	jmp	 <L163>
               	nop	word ptr [rax + rax]
<L165>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L164>
<L163>:
               	bt	rax, r10
               	jae	 <L165>
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L167>
<L166>:
               	bt	rcx, r10
               	jae	 <L168>
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L170>
<L169>:
               	bt	rdx, r10
               	jae	 <L171>
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L171>
<L170>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xf8], rsi
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	mov	rdi, qword ptr [rsp + 0x108]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r8
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	r9, qword ptr [rsp + 0x100]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xe8], r11
               	jmp	 <L172>
               	nop	word ptr cs:[rax + rax]
<L174>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L173>
<L172>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L174>
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L174>
<L173>:
               	xor	r10d, r10d
               	jmp	 <L175>
               	nop	word ptr [rax + rax]
<L177>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L176>
<L175>:
               	bt	rax, r10
               	jae	 <L177>
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L177>
<L176>:
               	xor	r10d, r10d
               	jmp	 <L178>
               	nop	dword ptr [rax]
<L180>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L179>
<L178>:
               	bt	rcx, r10
               	jae	 <L180>
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L180>
<L179>:
               	xor	r10d, r10d
               	jmp	 <L181>
               	nop	dword ptr [rax]
<L183>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L182>
<L181>:
               	bt	rdx, r10
               	jae	 <L183>
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xe0], rsi
               	mov	rsi, qword ptr [rsp + 0xf8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], rdi
               	mov	rdi, qword ptr [rsp + 0xf0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x58], r8
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r9, qword ptr [rsp + 0xe8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xd0], r11
               	jmp	 <L184>
               	nop	word ptr cs:[rax + rax]
<L186>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L185>
<L184>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L186>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L186>
<L185>:
               	xor	r10d, r10d
               	jmp	 <L187>
               	nop	word ptr [rax + rax]
<L189>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L188>
<L187>:
               	bt	rax, r10
               	jae	 <L189>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L189>
<L188>:
               	xor	r10d, r10d
               	jmp	 <L190>
               	nop	dword ptr [rax]
<L192>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L191>
<L190>:
               	bt	rcx, r10
               	jae	 <L192>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L192>
<L191>:
               	xor	r10d, r10d
               	jmp	 <L193>
               	nop	dword ptr [rax]
<L195>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L194>
<L193>:
               	bt	rdx, r10
               	jae	 <L195>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xc8], rsi
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	mov	rdi, qword ptr [rsp + 0xd8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	r9, qword ptr [rsp + 0xd0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xb8], r11
               	jmp	 <L196>
               	nop	word ptr cs:[rax + rax]
<L198>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L197>
<L196>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L198>
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L198>
<L197>:
               	xor	r10d, r10d
               	jmp	 <L199>
               	nop	word ptr [rax + rax]
<L201>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L200>
<L199>:
               	bt	rax, r10
               	jae	 <L201>
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L201>
<L200>:
               	xor	r10d, r10d
               	jmp	 <L202>
               	nop	dword ptr [rax]
<L204>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L203>
<L202>:
               	bt	rcx, r10
               	jae	 <L204>
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L204>
<L203>:
               	xor	r10d, r10d
               	jmp	 <L205>
               	nop	dword ptr [rax]
<L207>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L206>
<L205>:
               	bt	rdx, r10
               	jae	 <L207>
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L207>
<L206>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xb0], rsi
               	mov	rsi, qword ptr [rsp + 0xc8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], rdi
               	mov	rdi, qword ptr [rsp + 0xc0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x48], r8
               	mov	r8, qword ptr [rsp + 0x50]
               	mov	r9, qword ptr [rsp + 0xb8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xa0], r11
               	jmp	 <L208>
               	nop	word ptr cs:[rax + rax]
<L210>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L209>
<L208>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L210>
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L210>
<L209>:
               	xor	r10d, r10d
               	jmp	 <L211>
               	nop	word ptr [rax + rax]
<L213>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L212>
<L211>:
               	bt	rax, r10
               	jae	 <L213>
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L213>
<L212>:
               	xor	r10d, r10d
               	jmp	 <L214>
               	nop	dword ptr [rax]
<L216>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L215>
<L214>:
               	bt	rcx, r10
               	jae	 <L216>
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L216>
<L215>:
               	xor	r10d, r10d
               	jmp	 <L217>
               	nop	dword ptr [rax]
<L219>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L218>
<L217>:
               	bt	rdx, r10
               	jae	 <L219>
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x350], rbp
               	mov	qword ptr [rsp + 0x358], r15
               	mov	qword ptr [rsp + 0x278], rbx
               	xor	r10d, r10d
               	xor	r15d, r15d
               	mov	rsi, qword ptr [rsp + 0xb0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x230], rdi
               	mov	rdi, qword ptr [rsp + 0xa8]
               	xor	ebx, ebx
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	r9, qword ptr [rsp + 0xa0]
               	xor	ebp, ebp
               	jmp	 <L220>
               	nop	word ptr cs:[rax + rax]
<L222>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L221>
<L220>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L222>
               	xor	rbp, r9
               	xor	rbx, r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	r15, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	jmp	 <L223>
               	nop	dword ptr [rax + rax]
<L225>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L224>
<L223>:
               	bt	rax, r10
               	jae	 <L225>
               	xor	rbp, r9
               	xor	rbx, r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	r15, rsi
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	jmp	 <L226>
<L228>:
               	mov	r10, r8
               	shl	r10, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r10
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L227>
<L226>:
               	bt	rcx, rax
               	jae	 <L228>
               	xor	rbp, r9
               	xor	rbx, r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	r15, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	mov	r10, r12
               	mov	r12, qword ptr [rsp + 0x280]
               	jmp	 <L229>
               	nop	dword ptr [rax + rax]
<L231>:
               	mov	rcx, r8
               	shl	rcx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rcx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L230>
<L229>:
               	bt	rdx, rax
               	jae	 <L231>
               	xor	rbp, r9
               	xor	rbx, r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	r15, rsi
               	jmp	 <L231>
<L230>:
               	mov	rdx, qword ptr [rsp + 0x268]
               	lea	rax, [rdx + 4*rdx]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x40], rax
               	mov	qword ptr [rsp + 0x2a0], rax
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2a8], rax
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2b0], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b8], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2c0], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2c8], rax
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2d0], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d8], rax
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2e0], rax
               	mov	rax, qword ptr [rsp + 0x90]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2e8], rax
               	mov	rax, qword ptr [rsp + 0x88]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x80]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2f0], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f8], rax
               	mov	rax, qword ptr [rsp + 0x78]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x300], rax
               	mov	rax, qword ptr [rsp + 0x70]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x308], rax
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x310], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x318], rax
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x320], rax
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x328], rax
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rbx + 4*rbx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x330], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x338], rax
               	test	r14d, r14d
               	je	 <L232>
               	mov	r9, r10
               	mov	qword ptr [rsp + 0x348], r14
               	mov	r8, qword ptr [rsp + 0x260]
               	lea	rax, [8*r8]
               	lea	rax, [rax + 4*rax]
               	mov	r13, r12
               	mov	qword ptr [rsp + 0x368], rax
               	add	r12, rax
               	neg	r8
               	mov	edx, 0x1
               	vbroadcastss	ymm5, dword ptr  <memset+0x1350>
               	vmovdqa	xmm6, xmmword ptr  <memset+0x1340>
               	lea	rsi,  <memset+0x136c>
               	mov	r11, qword ptr [rsp + 0x248]
               	mov	r10, qword ptr [rsp + 0x290]
               	mov	r14, qword ptr [rsp + 0x40]
               	mov	qword ptr [rsp + 0x260], r8
               	jmp	 <L233>
               	nop
<L235>:
               	vpermpd	ymm0, ymm2, 0x93        # ymm0 = ymm2[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x2a0]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x2e0]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x300]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x320]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2a0], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2c0], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2e0], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x300], ymm0
               	vpsrlq	ymm0, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x320], ymm0
               	vmovq	r14, xmm1
<L237>:
               	add	r13, 0x28
               	lea	rax, [r8 + rdx]
               	inc	rax
               	inc	rdx
               	cmp	rax, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x2e8]
               	vmovups	ymm1, ymmword ptr [rsp + 0x2b8]
               	vmovups	ymm2, ymmword ptr [rsp + 0x2c8]
               	vperm2f128	ymm3, ymm2, ymmword ptr [rsp + 0x2a8], 0x2 # ymm3 = mem[0,1],ymm2[0,1]
               	vinsertf128	ymm1, ymm1, xmmword ptr [rsp + 0x2d8], 0x1
               	vpshufb	xmm0, xmm0, xmm6
               	vshufps	ymm1, ymm3, ymm1, 0x88  # ymm1 = ymm3[0,2],ymm1[0,2],ymm3[4,6],ymm1[4,6]
               	vandps	ymm1, ymm1, ymm5
               	vcvtdq2ps	ymm1, ymm1
               	vcvtdq2ps	xmm0, xmm0
               	movzx	eax, r14b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	vblendps	ymm2, ymm2, ymmword ptr [rsp + 0x2a8], 0xc0 # ymm2 = ymm2[0,1,2,3,4,5],mem[6,7]
               	sub	r14b, al
               	movzx	eax, r14b
               	movsxd	rax, dword ptr [rsi + 4*rax]
               	add	rax, rsi
               	jmp	rax
               	vmovups	ymmword ptr [r13], ymm1
               	mov	byte ptr [r12 + rdx - 0x1], r14b
               	test	dl, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	nop	dword ptr [rax + rax]
               	vmovups	ymmword ptr [r13], ymm1
               	vmovss	dword ptr [r13 + 0x20], xmm0
               	mov	byte ptr [r12 + rdx - 0x1], r14b
               	test	dl, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	nop
               	vmovups	ymmword ptr [r13], ymm1
               	vmovlps	qword ptr [r13 + 0x20], xmm0
               	mov	byte ptr [r12 + rdx - 0x1], r14b
               	test	dl, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	vmovups	ymmword ptr [r13], ymm1
               	vextractps	dword ptr [r13 + 0x20], xmm0, 0x1
               	mov	byte ptr [r12 + rdx - 0x1], r14b
               	test	dl, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	vmovups	ymmword ptr [r13 + 0x8], ymm1
               	mov	qword ptr [rsp + 0x248], r11
               	mov	qword ptr [rsp + 0x298], r13
               	mov	edi, 0x20
               	mov	rsi, qword ptr  <memset+0x9358>
               	mov	qword ptr [rsp + 0x270], rbp
               	mov	rbp, r10
               	mov	qword ptr [rsp + 0x250], r9
               	mov	qword ptr [rsp + 0x40], r14
               	mov	r14, rdx
               	vmovups	ymmword ptr [rsp + 0x370], ymm2
               	vzeroupper
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vmovups	ymm2, ymmword ptr [rsp + 0x370]
               	mov	r13, qword ptr [rsp + 0x298]
               	lea	rsi,  <memset+0x136c>
               	vmovdqa	xmm6, xmmword ptr  <memset+0x1340>
               	vbroadcastss	ymm5, dword ptr  <memset+0x1350>
               	mov	rdx, r14
               	mov	r14, qword ptr [rsp + 0x40]
               	mov	r9, qword ptr [rsp + 0x250]
               	mov	r10, rbp
               	mov	rbp, qword ptr [rsp + 0x270]
               	mov	r11, qword ptr [rsp + 0x248]
               	mov	r8, qword ptr [rsp + 0x260]
               	vmovups	ymm0, ymmword ptr [rsp + 0x308]
               	vinsertf128	ymm0, ymm0, xmmword ptr [rsp + 0x328], 0x1
               	vmovups	ymm1, ymmword ptr [rsp + 0x2f8]
               	vinsertf128	ymm1, ymm1, xmmword ptr [rsp + 0x318], 0x1
               	vshufps	ymm0, ymm1, ymm0, 0x88  # ymm0 = ymm1[0,2],ymm0[0,2],ymm1[4,6],ymm0[4,6]
               	vandps	ymm0, ymm0, ymm5
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rax], ymm0
               	mov	qword ptr [r13], rax
               	mov	byte ptr [r12 + rdx - 0x1], r14b
               	test	dl, 0x7
               	jne	 <L235>
               	nop	dword ptr [rax]
<L236>:
               	mov	rsi, qword ptr [rsp + 0x268]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x360]
               	xor	r11, rcx
               	xor	r10, rsi
               	xor	rsi, r11
               	mov	qword ptr [rsp + 0x268], rsi
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x360], rcx
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x290], r10
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x248], r11
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	qword ptr [rsp + 0x250], r9
               	mov	r9, qword ptr [rsp + 0x350]
               	mov	r11, qword ptr [rsp + 0x258]
               	xor	r9, r11
               	mov	rcx, qword ptr [rsp + 0x358]
               	xor	rcx, qword ptr [rsp + 0x250]
               	xor	qword ptr [rsp + 0x250], r9
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x258], r11
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x350], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x358], rcx
               	mov	rsi, qword ptr [rsp + 0x38]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x220]
               	mov	rcx, qword ptr [rsp + 0x218]
               	mov	qword ptr [rsp + 0x40], rbx
               	mov	rbx, rcx
               	xor	r9, rcx
               	mov	rcx, qword ptr [rsp + 0x228]
               	xor	rcx, rsi
               	xor	rsi, r9
               	mov	qword ptr [rsp + 0x38], rsi
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x218], rbx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x220], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x228], rcx
               	mov	rsi, qword ptr [rsp + 0x30]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x208]
               	xor	r9, qword ptr [rsp + 0x200]
               	mov	rcx, qword ptr [rsp + 0x210]
               	xor	rcx, rsi
               	xor	rsi, r9
               	mov	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x200], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x208], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x210], rcx
               	mov	rsi, qword ptr [rsp + 0x28]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x1f0]
               	mov	rbx, qword ptr [rsp + 0x1e8]
               	xor	r9, rbx
               	mov	rcx, qword ptr [rsp + 0x1f8]
               	xor	rcx, rsi
               	xor	rsi, r9
               	mov	qword ptr [rsp + 0x28], rsi
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x1e8], rbx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1f8], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x1f0], r9
               	mov	rsi, qword ptr [rsp + 0x20]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x1d8]
               	mov	rbx, qword ptr [rsp + 0x1d0]
               	xor	r9, rbx
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	xor	rcx, rsi
               	xor	rsi, r9
               	mov	qword ptr [rsp + 0x20], rsi
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x1d0], rbx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x1d8], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1e0], rcx
               	mov	rsi, qword ptr [rsp + 0x18]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x1c0]
               	mov	rbx, qword ptr [rsp + 0x1b8]
               	xor	r9, rbx
               	mov	rcx, qword ptr [rsp + 0x1c8]
               	xor	rcx, rsi
               	xor	rsi, r9
               	mov	qword ptr [rsp + 0x18], rsi
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x1b8], rbx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x1c0], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1c8], rcx
               	mov	rsi, qword ptr [rsp + 0x10]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x1a8]
               	mov	rbx, qword ptr [rsp + 0x1a0]
               	xor	r9, rbx
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	xor	rcx, rsi
               	xor	rsi, r9
               	mov	qword ptr [rsp + 0x10], rsi
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x1a0], rbx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x1a8], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1b0], rcx
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x190]
               	mov	rbx, qword ptr [rsp + 0x188]
               	xor	r9, rbx
               	mov	rcx, qword ptr [rsp + 0x198]
               	xor	rcx, rsi
               	xor	rsi, r9
               	mov	qword ptr [rsp + 0x8], rsi
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x188], rbx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x198], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x190], r9
               	mov	qword ptr [rsp + 0x270], rbp
               	mov	rbp, qword ptr [rsp + 0x90]
               	mov	rax, rbp
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x178]
               	mov	rbx, qword ptr [rsp + 0x170]
               	xor	r9, rbx
               	mov	rcx, qword ptr [rsp + 0x180]
               	xor	rcx, rbp
               	xor	rbp, r9
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x170], rbx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x178], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x180], rcx
               	mov	qword ptr [rsp + 0x370], r15
               	mov	r15, qword ptr [rsp + 0x88]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x160]
               	mov	rbx, qword ptr [rsp + 0x158]
               	xor	r9, rbx
               	mov	rcx, qword ptr [rsp + 0x168]
               	xor	rcx, r15
               	xor	r15, r9
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x158], rbx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x160], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x168], rcx
               	mov	r14, qword ptr [rsp + 0x80]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x148]
               	mov	rbx, qword ptr [rsp + 0x140]
               	xor	r9, rbx
               	mov	rcx, qword ptr [rsp + 0x150]
               	xor	rcx, r14
               	xor	r14, r9
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x140], rbx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x148], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x150], rcx
               	mov	rbx, qword ptr [rsp + 0x78]
               	mov	qword ptr [rsp + 0x288], rdx
               	mov	rdx, rbx
               	shl	rdx, 0x11
               	mov	r9, qword ptr [rsp + 0x130]
               	mov	rax, qword ptr [rsp + 0x128]
               	xor	r9, rax
               	mov	rcx, qword ptr [rsp + 0x138]
               	xor	rcx, rbx
               	xor	rbx, r9
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x128], rax
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x138], rcx
               	xor	r9, rdx
               	mov	qword ptr [rsp + 0x130], r9
               	mov	r11, qword ptr [rsp + 0x70]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x120]
               	mov	r9, qword ptr [rsp + 0x118]
               	xor	rcx, r9
               	xor	qword ptr [rsp + 0x98], r11
               	xor	r11, rcx
               	xor	r9, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x118], r9
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x120], rcx
               	rol	qword ptr [rsp + 0x98], 0x2d
               	mov	r10, qword ptr [rsp + 0x68]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x108]
               	xor	r9, qword ptr [rsp + 0x100]
               	mov	rcx, qword ptr [rsp + 0x110]
               	xor	rcx, r10
               	xor	r10, r9
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x108], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x110], rcx
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0xf0]
               	xor	r9, qword ptr [rsp + 0xe8]
               	mov	rcx, qword ptr [rsp + 0xf8]
               	xor	rcx, r8
               	xor	r8, r9
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0xf0], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xf8], rcx
               	mov	qword ptr [rsp + 0x298], r13
               	mov	r13, qword ptr [rsp + 0x58]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0xd8]
               	xor	r9, qword ptr [rsp + 0xd0]
               	mov	rcx, qword ptr [rsp + 0xe0]
               	xor	rcx, r13
               	xor	r13, r9
               	xor	qword ptr [rsp + 0xd0], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xe0], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0xd8], r9
               	mov	rsi, qword ptr [rsp + 0x50]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0xc0]
               	xor	r9, qword ptr [rsp + 0xb8]
               	mov	rcx, qword ptr [rsp + 0xc8]
               	xor	rcx, rsi
               	xor	rsi, r9
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0xc0], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xc8], rcx
               	mov	rdi, qword ptr [rsp + 0x48]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0xa8]
               	xor	r9, qword ptr [rsp + 0xa0]
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, rdi
               	xor	rdi, r9
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0xa8], r9
               	mov	rdx, qword ptr [rsp + 0x250]
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	rax, qword ptr [rsp + 0x40]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x230]
               	xor	rcx, qword ptr [rsp + 0x270]
               	mov	qword ptr [rsp + 0x230], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	xor	qword ptr [rsp + 0x370], rcx
               	mov	rcx, qword ptr [rsp + 0x230]
               	xor	qword ptr [rsp + 0x40], rcx
               	xor	qword ptr [rsp + 0x230], rax
               	mov	rax, qword ptr [rsp + 0x268]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r9, [rax + 8*rax]
               	lea	rax, [rdx + 4*rdx]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a0], r9
               	mov	qword ptr [rsp + 0x2a8], rax
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2b0], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b8], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2c0], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c8], rax
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	rcx, qword ptr [rsp + 0x8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d8], rax
               	mov	qword ptr [rsp + 0x90], rbp
               	lea	rax, [4*rbp]
               	add	rax, rbp
               	mov	rbp, qword ptr [rsp + 0x270]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2e0], rcx
               	mov	qword ptr [rsp + 0x88], r15
               	lea	rcx, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0x370]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2e8], rax
               	mov	qword ptr [rsp + 0x80], r14
               	lea	rax, [r14 + 4*r14]
               	mov	r14, r9
               	mov	r9, rdx
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f0], rcx
               	mov	qword ptr [rsp + 0x78], rbx
               	lea	rcx, [rbx + 4*rbx]
               	mov	rbx, qword ptr [rsp + 0x40]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f8], rax
               	mov	qword ptr [rsp + 0x70], r11
               	lea	rax, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x248]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x300], rcx
               	mov	qword ptr [rsp + 0x68], r10
               	lea	rcx, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x290]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x308], rax
               	mov	qword ptr [rsp + 0x60], r8
               	lea	rax, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x260]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x310], rcx
               	mov	qword ptr [rsp + 0x58], r13
               	lea	rcx, [4*r13]
               	add	rcx, r13
               	mov	r13, qword ptr [rsp + 0x298]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x318], rax
               	mov	qword ptr [rsp + 0x50], rsi
               	lea	rax, [rsi + 4*rsi]
               	lea	rsi,  <memset+0x136c>
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x320], rcx
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x328], rax
               	mov	qword ptr [rsp + 0x48], rdi
               	lea	rax, [rdi + 4*rdi]
               	mov	rdx, qword ptr [rsp + 0x288]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x330], rax
               	lea	rax, [rbx + 4*rbx]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x338], rax
               	xor	rbp, r15
               	rol	r15, 0x2d
               	jmp	 <L237>
<L234>:
               	mov	rax, qword ptr [rsp + 0x348]
               	test	eax, eax
               	je	 <L238>
               	mov	qword ptr [rsp + 0x288], rdx
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x300], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x2e0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x2c0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x2a0], ymm0
               	lea	rbx, [rsp + 0x300]
               	lea	r15,  <memset+0x13a0>
               	vmovss	xmm4, dword ptr  <memset+0x1358>
               	vxorps	xmm5, xmm5, xmm5
               	vmovss	xmm6, dword ptr  <memset+0x1360>
               	vmovss	xmm7, dword ptr  <memset+0x135c>
               	vmovss	xmm8, dword ptr  <memset+0x1368>
               	vmovss	xmm9, dword ptr  <memset+0x1354>
               	mov	ebp, eax
               	mov	rax, qword ptr [rsp + 0x280]
               	jmp	 <L239>
<L240>:
               	vmovss	xmm0, dword ptr [rsp + 0x2a4]
               	vmovss	dword ptr [rsp + 0x2a8], xmm0
               	mov	edx, 0x1
<L252>:
               	mov	eax, edx
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x2a0]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovss	xmm9, dword ptr  <memset+0x1354>
               	vmovss	xmm8, dword ptr  <memset+0x1368>
               	vmovss	xmm7, dword ptr  <memset+0x135c>
               	vmovss	xmm6, dword ptr  <memset+0x1360>
               	vxorps	xmm5, xmm5, xmm5
               	vmovss	xmm4, dword ptr  <memset+0x1358>
               	mov	rax, r14
               	mov	r12, r13
<L239>:
               	mov	ecx, ebp
               	neg	ecx
               	and	ecx, ebp
               	lea	rdx, [rcx + 4*rcx]
               	lea	r14, [rax + 8*rdx]
               	lea	r13, [r12 + rcx]
               	test	ecx, ecx
               	je	 <L240>
               	mov	esi, 0x1
               	xor	r9d, r9d
               	mov	edi, 0x1
               	jmp	 <L241>
               	nop	word ptr [rax + rax]
<L247>:
               	mov	edi, edx
               	movsxd	r8, edx
               	vmovss	dword ptr [rsp + 4*r8 + 0x2a0], xmm0
               	add	rax, 0x28
               	inc	r12
               	mov	r9d, 0xfffffffe
               	sub	r9d, esi
               	inc	esi
               	bsr	r10d, esi
               	xor	r10d, 0x1f
               	popcnt	r9d, r9d
               	sub	r9d, r10d
               	cmp	rax, r14
               	je	 <L242>
<L241>:
               	mov	edx, r9d
               	movzx	r8d, byte ptr [r12]
               	movsxd	r8, dword ptr [r15 + 4*r8]
               	add	r8, r15
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
               	mov	r8d, edx
               	sub	r8d, edi
               	jl	 <L247>
               	movsxd	rdi, edi
               	cmp	r8d, 0x1f
               	jb	 <L248>
               	inc	r8
               	mov	r9, r8
               	and	r9, -0x20
               	vblendps	xmm0, xmm5, xmm0, 0x1   # xmm0 = xmm0[0],xmm5[1,2,3]
               	lea	r10, [rbx + 4*rdi]
               	vpxor	xmm1, xmm1, xmm1
               	xor	r11d, r11d
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	dword ptr [rax]
<L249>:
               	vaddps	ymm0, ymm0, ymmword ptr [r10 + 4*r11 - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [r10 + 4*r11 - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [r10 + 4*r11 - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [r10 + 4*r11]
               	add	r11, 0x20
               	cmp	r9, r11
               	jne	 <L249>
               	vaddps	ymm0, ymm1, ymm0
               	vaddps	ymm1, ymm3, ymm2
               	vaddps	ymm0, ymm1, ymm0
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	r8, r9
               	je	 <L247>
               	add	rdi, r9
<L248>:
               	mov	r8d, edx
               	sub	r8d, edi
               	inc	r8d
               	lea	rdi, [rsp + 4*rdi]
               	add	rdi, 0x2a0
               	xor	r9d, r9d
               	nop
<L250>:
               	vaddss	xmm0, xmm0, dword ptr [rdi + 4*r9]
               	inc	r9
               	cmp	r8d, r9d
               	jne	 <L250>
               	jmp	 <L247>
               	nop	word ptr cs:[rax + rax]
<L242>:
               	sub	ebp, ecx
               	je	 <L251>
               	vmovss	dword ptr [rsp + 4*r8 + 0x2a4], xmm0
               	mov	rax, r14
               	mov	r12, r13
               	test	edx, edx
               	jns	 <L252>
               	jmp	 <L239>
<L251>:
               	mov	r13, qword ptr [rsp + 0x278]
               	mov	rdx, qword ptr [rsp + 0x288]
               	jmp	 <L253>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	test	r12, r12
               	mov	r13, qword ptr [rsp + 0x278]
               	jne	 <L254>
               	cmp	r13d, 0x2a
               	je	 <L255>
               	jmp	 <L256>
<L238>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r13, qword ptr [rsp + 0x278]
<L253>:
               	add	rdx, -0x2
               	mov	r12, qword ptr [rsp + 0x280]
               	mov	rbx, r12
               	add	rbx, qword ptr [rsp + 0x368]
               	mov	r14, -0x1
               	mov	r15, r12
               	vmovdqa	xmmword ptr [rsp + 0x230], xmm0
               	jmp	 <L257>
               	nop
<L259>:
               	inc	r14
               	add	r15, 0x28
               	cmp	rdx, r14
               	je	 <L258>
<L257>:
               	cmp	byte ptr [rbx + r14 + 0x1], 0xc
               	jne	 <L259>
               	mov	rdi, qword ptr [r15]
               	test	rdi, rdi
               	je	 <L259>
               	mov	rbp, rdx
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x230]
               	mov	rdx, rbp
               	mov	qword ptr [r15], 0x0
               	jmp	 <L259>
<L258>:
               	mov	r14, qword ptr [rsp + 0x348]
<L254>:
               	vmovdqa	xmmword ptr [rsp + 0x230], xmm0
               	mov	rdi, r12
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x230]
               	cmp	r13d, 0x2a
               	jne	 <L256>
<L255>:
               	cmp	r14d, 0x186a0
               	jne	 <L256>
               	vucomiss	xmm0, dword ptr  <memset+0x1364>
               	jne	 <L260>
<L256>:
               	xor	eax, eax
               	add	rsp, 0x398
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	ret
<L260>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x230], xmm0
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x230]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x9360>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x9338>
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
