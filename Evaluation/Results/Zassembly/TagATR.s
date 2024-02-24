
build/ZEvaluation/bin/TagATR:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x7100>
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
               	mov	rax, qword ptr  <memset+0x7110>
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
               	mov	rax, qword ptr  <memset+0x7118>
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
               	cmp	qword ptr , 0x0 <memset+0x7120>
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
               	call	 <initializer for module Evaluation.Dependency.RandomAccessIteratorBase>
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module ATR.Instance>
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

<initializer for module Evaluation.Dependency.RandomAccessIteratorBase>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW24RandomAccessIteratorBase__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW24RandomAccessIteratorBase__in_chrg>
               	jmp	 <initializer for module Std>
               	int3
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
               	call	 <initializer for module Meta.Auto.Ref.RArray>
               	call	 <initializer for module Meta.Auto.Ref.XArray>
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

<initializer for module Meta.Auto.Ref.XArray>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW3RefW6XArray__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW3RefW6XArray__in_chrg>
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

<initializer for module ATR.Instance>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW8Instance__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW8Instance__in_chrg>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module ATR.Layout.Create>
               	call	 <initializer for module ATR.Layout.Offset>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module ATR.Member.Storage>
               	call	 <initializer for module Meta.ID>
               	pop	rax
               	jmp	 <initializer for module Meta.String.Hash>
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
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module ATR.Member.Constants>
               	call	 <initializer for module ATR.Member.Info>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.String.Hash>
               	call	 <initializer for module Meta.Token.Type>
               	call	 <initializer for module Meta.Token.TypeID>
               	pop	rax
               	jmp	 <initializer for module Std>

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

<initializer for module ATR.Layout.Offset>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW6LayoutW6Offset__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW6LayoutW6Offset__in_chrg>
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module ATR.Layout.TypeIndex>
               	call	 <initializer for module ATR.Member.Info>
               	call	 <initializer for module Meta.Auto.Ref.DataRange>
               	call	 <initializer for module Meta.Auto.Ref.PledgeCount>
               	call	 <initializer for module Meta.Auto.Ref.RArray>
               	call	 <initializer for module Meta.Bit.Array>
               	call	 <initializer for module Meta.Bit.Field>
               	call	 <initializer for module Meta.Bit.Index>
               	call	 <initializer for module Meta.Bit.Reference>
               	call	 <initializer for module Meta.Memory.Constraint>
               	call	 <initializer for module Meta.Memory.PointerCast>
               	call	 <initializer for module Meta.Memory.Size.Arithmetic>
               	call	 <initializer for module Meta.Memory.Size.Cast>
               	call	 <initializer for module Meta.Memory.Size.Compare>
               	call	 <initializer for module Meta.Memory.Size.PointerArithmetic>
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

<initializer for module Meta.Memory.PointerCast>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW11PointerCast__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW11PointerCast__in_chrg>
               	jmp	 <initializer for module Std>
               	int3
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
               	call	 <initializer for module ATR.Member.FlatComposition>
               	call	 <initializer for module ATR.Member.PrefixGuard>
               	call	 <initializer for module ATR.Member.Constants>
               	call	 <initializer for module ATR.Member.LayoutList>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.String.Hash>
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
               	call	 <initializer for module ATR.Member.Constants>
               	call	 <initializer for module ATR.Member.CountedType>
               	call	 <initializer for module ATR.Member.Info>
               	call	 <initializer for module ATR.Member.AlignBuffer>
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

<initializer for module ATR.District.ExcludingHeap>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW8DistrictW13ExcludingHeap__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW8DistrictW13ExcludingHeap__in_chrg>
               	call	 <initializer for module ATR.District.MoveHeapGuard>
               	call	 <initializer for module ATR.Member.AlignBuffer>
               	call	 <initializer for module ATR.Member.CountedType>
               	call	 <initializer for module ATR.Member.LayoutList>
               	call	 <initializer for module Meta.String.Hash>
               	call	 <initializer for module Meta.Token.Type>
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

<initializer for module ATR.District.MoveHeapGuard>:
               	cmp	byte ptr , 0x0 <_ZGIW3ATRW8DistrictW13MoveHeapGuard__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW3ATRW8DistrictW13MoveHeapGuard__in_chrg>
               	call	 <initializer for module ATR.Layout.Create>
               	call	 <initializer for module ATR.Layout.Offset>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module ATR.Member.Info>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module Meta.String.Hash>
               	call	 <initializer for module Meta.Token.Type>
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW6TagATRW7Product__in_chrg>
               	call	 <initializer for module ATR.Dependency>
               	pop	rax
               	jmp	 <initializer for module ATR.Erase>
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
               	call	 <initializer for module ATR.Member.Composition>
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
               	call	 <initializer for module Evaluation.TagATR.Product>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.Dependency>
               	call	 <initializer for module ATR.DependencyIDMap>
               	call	 <initializer for module ATR.Instance>
               	call	 <initializer for module ATR.Layout.Create>
               	call	 <initializer for module ATR.Layout.Offset>
               	call	 <initializer for module ATR.Member.Composition>
               	call	 <initializer for module ATR.Member.Storage>
               	call	 <initializer for module Meta.ID>
               	call	 <initializer for module ATR.Virtual.Dispatch>
               	call	 <initializer for module Meta.String.Literal>
               	pop	rax
               	jmp	 <initializer for module Meta.Token.Type>
               	nop	dword ptr [rax]

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
               	sub	rsp, 0x148
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
               	mov	qword ptr [rsp + 0x50], rdx
               	mov	ecx, edx
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x58], rcx
               	lea	rdi, [rcx + 8*rax]
               	mov	rsi, qword ptr  <memset+0x7128>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	r15, rax
               	movsxd	rdx, ebx
               	movabs	rsi, -0x61c8864680b583eb
               	add	rsi, rdx
               	mov	rcx, rdx
               	shr	rcx, 0x1e
               	xor	rcx, rdx
               	movabs	r9, -0x40a7b892e31b1a47
               	imul	rcx, r9
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
               	imul	r8, r9
               	mov	rsi, r8
               	shr	rsi, 0x1b
               	xor	rsi, r8
               	imul	rsi, rcx
               	mov	rbx, rsi
               	shr	rbx, 0x1f
               	xor	rbx, rsi
               	movabs	rsi, -0x255992d382208bc1
               	add	rsi, rdx
               	mov	rdx, rdi
               	shr	rdx, 0x1e
               	xor	rdx, rdi
               	imul	rdx, r9
               	mov	rdi, rdx
               	shr	rdi, 0x1b
               	xor	rdi, rdx
               	imul	rdi, rcx
               	mov	r8, rdi
               	shr	r8, 0x1f
               	xor	r8, rdi
               	mov	rdx, rsi
               	shr	rdx, 0x1e
               	xor	rdx, rsi
               	imul	rdx, r9
               	mov	rsi, rdx
               	shr	rsi, 0x1b
               	xor	rsi, rdx
               	imul	rsi, rcx
               	mov	rcx, rsi
               	shr	rcx, 0x1f
               	xor	rcx, rsi
               	xor	edx, edx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	mov	qword ptr [rsp + 0x78], rcx
               	mov	rsi, rcx
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x80], r8
               	mov	rdi, r8
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x40], rbx
               	mov	r8, rbx
               	mov	qword ptr [rsp + 0x88], r10
               	mov	r9, r10
               	xor	ebp, ebp
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
<L6>:
               	mov	rcx, r8
               	shl	rcx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rcx
               	rol	rsi, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L5>
<L4>:
               	bt	r14, rdx
               	jae	 <L6>
               	xor	rbp, r9
               	xor	r13, r8
               	xor	r11, rdi
               	xor	qword ptr [rsp + 0x28], rsi
               	jmp	 <L6>
<L5>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop	word ptr [rax + rax]
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
               	xor	rbp, r9
               	xor	r13, r8
               	xor	r11, rdi
               	xor	qword ptr [rsp + 0x28], rsi
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x10], rbp
               	mov	qword ptr [rsp + 0x8], r13
               	mov	rcx, r11
               	movabs	rbx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
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
               	bt	rbx, rdx
               	jae	 <L12>
               	mov	r10, rcx
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	r10, rdi
               	mov	rcx, r10
               	xor	qword ptr [rsp + 0x28], rsi
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
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	rcx, rdi
               	xor	qword ptr [rsp + 0x28], rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	r12d, r12d
               	mov	rsi, qword ptr [rsp + 0x28]
               	xor	r13d, r13d
               	mov	rdi, rcx
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x18], r8
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	r9, qword ptr [rsp + 0x10]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x20], r11
               	jmp	 <L16>
               	nop	word ptr [rax + rax]
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
               	bt	r14, r10
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	r13, rdi
               	xor	r12, rsi
               	jmp	 <L18>
<L17>:
               	xor	r10d, r10d
               	jmp	 <L19>
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
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	r13, rdi
               	xor	r12, rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
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
               	bt	rbx, r10
               	jae	 <L24>
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	r13, rdi
               	xor	r12, rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
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
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	r13, rdi
               	xor	r12, rsi
               	jmp	 <L27>
<L26>:
               	mov	rax, r14
               	mov	qword ptr [rsp + 0x30], r15
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, r12
               	xor	r15d, r15d
               	mov	rdi, r13
               	xor	r14d, r14d
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	r9, qword ptr [rsp + 0x20]
               	xor	ebp, ebp
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
               	bt	rax, r10
               	jae	 <L30>
               	xor	rbp, r9
               	xor	r14, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L30>
<L29>:
               	xor	r10d, r10d
               	movabs	rax, -0x2a59ed990f36c6d4
               	jmp	 <L31>
               	nop	word ptr cs:[rax + rax]
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
               	xor	rbp, r9
               	xor	r14, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L33>
<L32>:
               	xor	eax, eax
               	jmp	 <L34>
               	nop	dword ptr [rax + rax]
<L36>:
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
               	je	 <L35>
<L34>:
               	movabs	r10, -0x56a7d9e71fc03656
               	bt	r10, rax
               	jae	 <L36>
               	xor	rbp, r9
               	xor	r14, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L36>
<L35>:
               	xor	eax, eax
               	mov	r10, rcx
               	mov	r11, qword ptr [rsp + 0x8]
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
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
               	je	 <L38>
<L37>:
               	bt	rdx, rax
               	jae	 <L39>
               	xor	rbp, r9
               	xor	r14, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L39>
<L38>:
               	mov	eax, 0x40
               	nop	dword ptr [rax]
<L40>:
               	dec	rax
               	jne	 <L40>
               	mov	eax, 0x40
               	mov	rsi, qword ptr [rsp + 0x58]
               	nop
<L41>:
               	dec	rax
               	jne	 <L41>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L42>:
               	dec	rax
               	jne	 <L42>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L43>:
               	dec	rax
               	jne	 <L43>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L44>:
               	dec	rax
               	jne	 <L44>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L45>:
               	dec	rax
               	jne	 <L45>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L46>:
               	dec	rax
               	jne	 <L46>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L47>:
               	dec	rax
               	jne	 <L47>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L48>:
               	dec	rax
               	jne	 <L48>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L49>:
               	dec	rax
               	jne	 <L49>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L50>:
               	dec	rax
               	jne	 <L50>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L51>:
               	dec	rax
               	jne	 <L51>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L52>:
               	dec	rax
               	jne	 <L52>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L53>:
               	dec	rax
               	jne	 <L53>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L54>:
               	dec	rax
               	jne	 <L54>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L55>:
               	dec	rax
               	jne	 <L55>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L56>:
               	dec	rax
               	jne	 <L56>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L57>:
               	dec	rax
               	jne	 <L57>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L58>:
               	dec	rax
               	jne	 <L58>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L59>:
               	dec	rax
               	jne	 <L59>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L60>:
               	dec	rax
               	jne	 <L60>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L61>:
               	dec	rax
               	jne	 <L61>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L62>:
               	dec	rax
               	jne	 <L62>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L63>:
               	dec	rax
               	jne	 <L63>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L64>:
               	dec	rax
               	jne	 <L64>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L65>:
               	dec	rax
               	jne	 <L65>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L66>:
               	dec	rax
               	jne	 <L66>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L67>:
               	dec	rax
               	jne	 <L67>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L68>:
               	dec	rax
               	jne	 <L68>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L69>:
               	dec	rax
               	jne	 <L69>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L70>:
               	dec	rax
               	jne	 <L70>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L71>:
               	dec	rax
               	jne	 <L71>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L72>:
               	dec	rax
               	jne	 <L72>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L73>:
               	dec	rax
               	jne	 <L73>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L74>:
               	dec	rax
               	jne	 <L74>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L75>:
               	dec	rax
               	jne	 <L75>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L76>:
               	dec	rax
               	jne	 <L76>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L77>:
               	dec	rax
               	jne	 <L77>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L78>:
               	dec	rax
               	jne	 <L78>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L79>:
               	dec	rax
               	jne	 <L79>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L80>:
               	dec	rax
               	jne	 <L80>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L81>:
               	dec	rax
               	jne	 <L81>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L82>:
               	dec	rax
               	jne	 <L82>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L83>:
               	dec	rax
               	jne	 <L83>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L84>:
               	dec	rax
               	jne	 <L84>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L85>:
               	dec	rax
               	jne	 <L85>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L86>:
               	dec	rax
               	jne	 <L86>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L87>:
               	dec	rax
               	jne	 <L87>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L88>:
               	dec	rax
               	jne	 <L88>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L89>:
               	dec	rax
               	jne	 <L89>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L90>:
               	dec	rax
               	jne	 <L90>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L91>:
               	dec	rax
               	jne	 <L91>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L92>:
               	dec	rax
               	jne	 <L92>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L93>:
               	dec	rax
               	jne	 <L93>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L94>:
               	dec	rax
               	jne	 <L94>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L95>:
               	dec	rax
               	jne	 <L95>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L96>:
               	dec	rax
               	jne	 <L96>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L97>:
               	dec	rax
               	jne	 <L97>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L98>:
               	dec	rax
               	jne	 <L98>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L99>:
               	dec	rax
               	jne	 <L99>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L100>:
               	dec	rax
               	jne	 <L100>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L101>:
               	dec	rax
               	jne	 <L101>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L102>:
               	dec	rax
               	jne	 <L102>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L103>:
               	dec	rax
               	jne	 <L103>
               	cmp	dword ptr [rsp + 0x50], 0x0
               	je	 <L104>
               	mov	qword ptr [rsp + 0x68], r15
               	mov	qword ptr [rsp + 0x70], rbx
               	mov	qword ptr [rsp + 0x60], r14
               	vmovq	xmm0, r14
               	vmovq	xmm1, qword ptr [rsp + 0x18]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	vmovq	xmm1, r11
               	vmovq	xmm2, qword ptr [rsp + 0x40]
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vinserti128	ymm0, ymm1, xmm0, 0x1
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vpsrlq	ymm1, ymm0, 0x39
               	vpsllq	ymm0, ymm0, 0x7
               	vpor	ymm0, ymm0, ymm1
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm1, ymm1, ymm0
               	lea	rax, [8*rsi]
               	lea	rax, [rax + 4*rax]
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	qword ptr [rsp + 0x90], rax
               	lea	r15, [rdx + rax]
               	xor	r8d, r8d
               	vmovd	eax, xmm1
               	movzx	ebx, al
               	imul	eax, ebx, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	bl, al
               	movzx	eax, bl
               	lea	rdi,  <memset+0x128c>
               	movsxd	rax, dword ptr [rdi + 4*rax]
               	add	rax, rdi
               	mov	r9, rdx
               	mov	rdx, qword ptr [rsp + 0x10]
               	jmp	rax
<L104>:
               	xor	ebp, ebp
               	mov	r12, qword ptr [rsp + 0x30]
<L122>:
               	test	r12, r12
               	je	 <L105>
<L124>:
               	mov	rdi, r12
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L105>:
               	mov	eax, ebp
               	add	rsp, 0x148
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L129>:
               	mov	r14, qword ptr [rsp + 0x50]
               	test	r14d, r14d
               	je	 <L106>
               	mov	qword ptr [rsp + 0x8], r8
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x100], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xe0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xc0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xa0], ymm0
               	lea	rbx, [rsp + 0x100]
               	lea	r12,  <memset+0x12c0>
               	vmovss	xmm4, dword ptr  <memset+0x127c>
               	vxorps	xmm5, xmm5, xmm5
               	vmovss	xmm6, dword ptr  <memset+0x1284>
               	vmovss	xmm7, dword ptr  <memset+0x1280>
               	vmovss	xmm8, dword ptr  <memset+0x1288>
               	vmovss	xmm9, dword ptr  <memset+0x1278>
               	mov	rax, qword ptr [rsp + 0x30]
               	jmp	 <L107>
               	nop
<L108>:
               	vmovss	xmm0, dword ptr [rsp + 0xa4]
               	vmovss	dword ptr [rsp + 0xa8], xmm0
               	mov	edx, 0x1
<L120>:
               	mov	eax, edx
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0xa0]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovss	xmm9, dword ptr  <memset+0x1278>
               	vmovss	xmm8, dword ptr  <memset+0x1288>
               	vmovss	xmm7, dword ptr  <memset+0x1280>
               	vmovss	xmm6, dword ptr  <memset+0x1284>
               	vxorps	xmm5, xmm5, xmm5
               	vmovss	xmm4, dword ptr  <memset+0x127c>
               	mov	rax, r13
               	mov	r15, rbp
<L107>:
               	mov	ecx, r14d
               	neg	ecx
               	and	ecx, r14d
               	lea	rdx, [rcx + 4*rcx]
               	lea	r13, [rax + 8*rdx]
               	lea	rbp, [r15 + rcx]
               	test	ecx, ecx
               	je	 <L108>
               	mov	esi, 0x1
               	xor	r9d, r9d
               	mov	edi, 0x1
               	jmp	 <L109>
               	nop	dword ptr [rax]
<L115>:
               	mov	edi, edx
               	movsxd	r8, edx
               	vmovss	dword ptr [rsp + 4*r8 + 0xa0], xmm0
               	add	rax, 0x28
               	inc	r15
               	mov	r9d, 0xfffffffe
               	sub	r9d, esi
               	inc	esi
               	bsr	r10d, esi
               	xor	r10d, 0x1f
               	popcnt	r9d, r9d
               	sub	r9d, r10d
               	cmp	rax, r13
               	je	 <L110>
<L109>:
               	mov	edx, r9d
               	movzx	r8d, byte ptr [r15]
               	movsxd	r8, dword ptr [r12 + 4*r8]
               	add	r8, r12
               	jmp	r8
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, xmm4
               	jmp	 <L111>
               	vmulss	xmm0, xmm8, dword ptr [rax + 0x1c]
               	jmp	 <L112>
               	vmulss	xmm0, xmm6, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L111>
               	vmovss	xmm0, dword ptr [rax + 0x24]
               	jmp	 <L113>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, xmm4
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L111>
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	jmp	 <L111>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	jmp	 <L111>
               	vmulss	xmm0, xmm7, dword ptr [rax + 0x1c]
<L112>:
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
               	jmp	 <L111>
               	vmulss	xmm0, xmm4, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L111>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	jmp	 <L114>
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
               	jmp	 <L111>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm9, xmm0
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L111>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
<L113>:
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm8, xmm1
<L114>:
               	vmulss	xmm0, xmm1, xmm0
<L111>:
               	mov	r8d, edx
               	sub	r8d, edi
               	jl	 <L115>
               	movsxd	rdi, edi
               	cmp	r8d, 0x1f
               	jb	 <L116>
               	inc	r8
               	mov	r9, r8
               	and	r9, -0x20
               	vblendps	xmm0, xmm5, xmm0, 0x1   # xmm0 = xmm0[0],xmm5[1,2,3]
               	lea	r10, [rbx + 4*rdi]
               	vpxor	xmm1, xmm1, xmm1
               	xor	r11d, r11d
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	dword ptr [rax + rax]
<L117>:
               	vaddps	ymm0, ymm0, ymmword ptr [r10 + 4*r11 - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [r10 + 4*r11 - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [r10 + 4*r11 - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [r10 + 4*r11]
               	add	r11, 0x20
               	cmp	r9, r11
               	jne	 <L117>
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
               	je	 <L115>
               	add	rdi, r9
<L116>:
               	mov	r8d, edx
               	sub	r8d, edi
               	inc	r8d
               	lea	rdi, [rsp + 4*rdi]
               	add	rdi, 0xa0
               	xor	r9d, r9d
               	nop
<L118>:
               	vaddss	xmm0, xmm0, dword ptr [rdi + 4*r9]
               	inc	r9
               	cmp	r8d, r9d
               	jne	 <L118>
               	jmp	 <L115>
               	nop	word ptr cs:[rax + rax]
<L110>:
               	sub	r14d, ecx
               	je	 <L119>
               	vmovss	dword ptr [rsp + 4*r8 + 0xa4], xmm0
               	mov	rax, r13
               	mov	r15, rbp
               	test	edx, edx
               	jns	 <L120>
               	jmp	 <L107>
<L119>:
               	vxorps	xmm1, xmm1, xmm1
               	xor	ebp, ebp
               	vucomiss	xmm0, xmm1
               	setne	bpl
               	mov	r12, qword ptr [rsp + 0x30]
               	mov	r8, qword ptr [rsp + 0x8]
               	test	r8d, r8d
               	jne	 <L121>
               	jmp	 <L122>
<L106>:
               	xor	ebp, ebp
               	mov	r12, qword ptr [rsp + 0x30]
               	test	r8d, r8d
               	je	 <L122>
<L121>:
               	dec	r8
               	mov	rbx, r12
               	add	rbx, qword ptr [rsp + 0x90]
               	mov	r14, -0x1
               	mov	r15, r12
               	jmp	 <L123>
               	nop
<L125>:
               	inc	r14
               	add	r15, 0x28
               	cmp	r8, r14
               	je	 <L124>
<L123>:
               	cmp	byte ptr [rbx + r14 + 0x1], 0xc
               	jne	 <L125>
               	mov	rdi, qword ptr [r15]
               	test	rdi, rdi
               	je	 <L125>
               	mov	r13, r8
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	mov	r8, r13
               	jmp	 <L125>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [r9], ymm0
               	mov	qword ptr [r9 + 0x20], 0x0
               	mov	byte ptr [r15 + r8], bl
               	inc	r8
               	test	r8b, 0x7
               	jne	 <L126>
               	jmp	 <L127>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [r9], ymm0
               	mov	byte ptr [r15 + r8], bl
               	inc	r8
               	test	r8b, 0x7
               	jne	 <L126>
               	jmp	 <L127>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [r9], ymm0
               	mov	dword ptr [r9 + 0x20], 0x0
               	mov	byte ptr [r15 + r8], bl
               	inc	r8
               	test	r8b, 0x7
               	je	 <L127>
<L126>:
               	vpsrlq	ymm1, ymm1, 0x8
               	cmp	rsi, r8
               	jne	 <L128>
               	jmp	 <L129>
               	vmovdqu	ymmword ptr [rsp + 0x120], ymm1
               	mov	qword ptr [rsp + 0x98], rbp
               	mov	qword ptr [rsp + 0x8], r11
               	mov	qword ptr [rsp + 0x38], r13
               	mov	qword ptr [rsp + 0x48], r12
               	mov	qword ptr [rsp + 0x10], rdx
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [r9 + 0x8], ymm0
               	mov	rsi, qword ptr  <memset+0x7128>
               	mov	edi, 0x20
               	mov	rbp, r10
               	mov	r12, r8
               	mov	r14, r9
               	vzeroupper
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x120]
               	mov	r9, r14
               	lea	rdi,  <memset+0x128c>
               	mov	r8, r12
               	mov	r10, rbp
               	mov	rbp, qword ptr [rsp + 0x98]
               	mov	r13, qword ptr [rsp + 0x38]
               	mov	r11, qword ptr [rsp + 0x8]
               	mov	r12, qword ptr [rsp + 0x48]
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x58]
               	mov	qword ptr [r14], rax
               	mov	byte ptr [r15 + r8], bl
               	inc	r8
               	test	r8b, 0x7
               	jne	 <L126>
<L127>:
               	mov	qword ptr [rsp + 0x8], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x80]
               	xor	rcx, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x38], r9
               	mov	r9, qword ptr [rsp + 0x78]
               	xor	r9, r8
               	xor	r8, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x80], rcx
               	mov	rax, r11
               	shl	rax, 0x11
               	xor	r10, rdx
               	mov	r14, qword ptr [rsp + 0x28]
               	xor	r14, r11
               	xor	r11, r10
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x10], r10
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x20]
               	xor	r13, rbx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x48], r12
               	xor	rcx, r13
               	xor	r13, rax
               	mov	rax, qword ptr [rsp + 0x60]
               	mov	r10, rax
               	shl	r10, 0x11
               	mov	r12, rdx
               	mov	rdx, r11
               	mov	r11, r13
               	mov	r13, rbp
               	mov	rbp, qword ptr [rsp + 0x68]
               	xor	rbp, r13
               	mov	rdi, qword ptr [rsp + 0x70]
               	xor	rdi, rax
               	xor	rax, rbp
               	xor	rbp, r10
               	mov	qword ptr [rsp + 0x68], rbp
               	mov	rbp, r13
               	mov	r13, r11
               	mov	r11, rdx
               	mov	rdx, r12
               	mov	qword ptr [rsp + 0x18], rcx
               	lea	r10, [rcx + 4*rcx]
               	rol	r10, 0x7
               	mov	qword ptr [rsp + 0x60], rax
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm0, rcx
               	lea	rax, [r10 + 8*r10]
               	mov	r10, qword ptr [rsp + 0x10]
               	mov	r12, qword ptr [rsp + 0x48]
               	vmovq	xmm1, rax
               	lea	rax, [r11 + 4*r11]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm2, rax
               	mov	qword ptr [rsp + 0x40], r8
               	lea	rax, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x8]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm3, rax
               	xor	qword ptr [rsp + 0x88], r9
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x78], r9
               	mov	r9, qword ptr [rsp + 0x38]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	xor	rdx, r14
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x28], r14
               	xor	rbx, r12
               	mov	qword ptr [rsp + 0x20], rbx
               	rol	r12, 0x2d
               	xor	rbp, rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x70], rdi
               	lea	rdi,  <memset+0x128c>
               	vpunpcklqdq	xmm1, xmm3, xmm2 # xmm1 = xmm3[0],xmm2[0]
               	vinserti128	ymm1, ymm1, xmm0, 0x1
               	cmp	rsi, r8
               	je	 <L129>
<L128>:
               	add	r9, 0x28
               	vmovd	eax, xmm1
               	movzx	ebx, al
               	imul	eax, ebx, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	bl, al
               	movzx	eax, bl
               	movsxd	rax, dword ptr [rdi + 4*rax]
               	add	rax, rdi
               	jmp	rax

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x7108>
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

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x30>
               	push	0x3
               	jmp	 <.plt>
