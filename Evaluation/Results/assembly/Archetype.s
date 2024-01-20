
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
               	call	qword ptr  <__libc_start_main+0x90a8>
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
               	mov	rax, qword ptr  <__libc_start_main+0x90b8>
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
               	mov	rax, qword ptr  <__libc_start_main+0x90c0>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x90c8>
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
               	call	 <initializer for module Meta.Math.Random>
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
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	jmp	 <initializer for module Std>
               	int3
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW9ArchetypeW7Product__in_chrg>
               	call	 <initializer for module ATR.Dependency>
               	pop	rax
               	jmp	 <initializer for module ATR.Erase>
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
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.Archetype.ComputeVolume>
               	call	 <initializer for module Evaluation.Archetype.Product>
               	call	 <initializer for module ATR.Address>
               	call	 <initializer for module ATR.Dependency>
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
               	call	 <initializer for module Meta.Auto.Ref.StaticCountArray>
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
               	sub	rsp, 0x6c0
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	ebx, byte ptr [rcx]
               	add	ebx, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
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
               	mov	qword ptr [rsp + 0x298], rdx
               	movsxd	rax, edx
               	shl	rax, 0x3
               	lea	rdi, [rax + 8*rax]
               	mov	rsi, qword ptr  <__libc_start_main+0x90d0>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	r9, rax
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
               	mov	r11, rdi
               	shr	r11, 0x1f
               	xor	r11, rdi
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
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b8], rax
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	rax, rcx
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x2d8], r11
               	mov	rcx, r11
               	xor	r11d, r11d
               	mov	rdx, r8
               	mov	qword ptr [rsp + 0x238], r8
               	mov	qword ptr [rsp + 0x2e0], r10
               	mov	rsi, r10
               	xor	r10d, r10d
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
<L6>:
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
               	je	 <L5>
<L4>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L6>
               	xor	r10, rsi
               	xor	r11, rdx
               	xor	r14, rcx
               	xor	qword ptr [rsp + 0x1b8], rax
               	jmp	 <L6>
<L5>:
               	xor	edi, edi
               	jmp	 <L7>
               	nop	word ptr [rax + rax]
<L9>:
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
               	je	 <L8>
<L7>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L9>
               	xor	r10, rsi
               	xor	r11, rdx
               	xor	r14, rcx
               	xor	qword ptr [rsp + 0x1b8], rax
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	word ptr [rax + rax]
<L12>:
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
               	je	 <L11>
<L10>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L12>
               	xor	r10, rsi
               	xor	r11, rdx
               	xor	r14, rcx
               	xor	qword ptr [rsp + 0x1b8], rax
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop	word ptr [rax + rax]
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
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	r10, rsi
               	xor	r11, rdx
               	xor	r14, rcx
               	xor	qword ptr [rsp + 0x1b8], rax
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	xor	r12d, r12d
               	mov	rax, qword ptr [rsp + 0x1b8]
               	xor	r15d, r15d
               	mov	rcx, r14
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x220], rdx
               	mov	rdx, r11
               	mov	rsi, r10
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x188], r8
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
<L18>:
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
               	je	 <L17>
<L16>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	r15, rcx
               	xor	r12, rax
               	jmp	 <L18>
<L17>:
               	xor	edi, edi
               	jmp	 <L19>
               	nop
<L21>:
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
               	je	 <L20>
<L19>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	r15, rcx
               	xor	r12, rax
               	jmp	 <L21>
<L20>:
               	xor	edi, edi
               	jmp	 <L22>
               	nop
<L24>:
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
               	je	 <L23>
<L22>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L24>
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	r15, rcx
               	xor	r12, rax
               	jmp	 <L24>
<L23>:
               	xor	edi, edi
               	jmp	 <L25>
               	nop
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
               	je	 <L26>
<L25>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L27>
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	r15, rcx
               	xor	r12, rax
               	jmp	 <L27>
<L26>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b0], rax
               	mov	rax, r12
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x1a8], rcx
               	mov	rcx, r15
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x260], rdx
               	mov	rdx, qword ptr [rsp + 0x220]
               	mov	rsi, qword ptr [rsp + 0x188]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1a0], r8
               	jmp	 <L28>
               	nop
<L30>:
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
               	je	 <L29>
<L28>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x260], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
               	jmp	 <L30>
<L29>:
               	xor	edi, edi
               	jmp	 <L31>
               	nop	dword ptr [rax]
<L33>:
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
               	je	 <L32>
<L31>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x260], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
               	jmp	 <L33>
<L32>:
               	xor	edi, edi
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
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
               	je	 <L35>
<L34>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L36>
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x260], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
               	jmp	 <L36>
<L35>:
               	xor	edi, edi
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
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
               	je	 <L38>
<L37>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L39>
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x260], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x198], rax
               	mov	rax, qword ptr [rsp + 0x1b0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x190], rcx
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x200], rdx
               	mov	rdx, qword ptr [rsp + 0x260]
               	mov	rsi, qword ptr [rsp + 0x1a0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x180], r8
               	jmp	 <L40>
               	nop	word ptr cs:[rax + rax]
<L42>:
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
               	je	 <L41>
<L40>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x198], rax
               	jmp	 <L42>
<L41>:
               	xor	edi, edi
               	jmp	 <L43>
               	nop	dword ptr [rax]
<L45>:
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
               	je	 <L44>
<L43>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x198], rax
               	jmp	 <L45>
<L44>:
               	xor	edi, edi
               	jmp	 <L46>
               	nop	dword ptr [rax]
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
               	je	 <L47>
<L46>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L48>
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x198], rax
               	jmp	 <L48>
<L47>:
               	xor	edi, edi
               	jmp	 <L49>
               	nop	dword ptr [rax]
<L51>:
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
               	je	 <L50>
<L49>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L51>
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x198], rax
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x178], rax
               	mov	rax, qword ptr [rsp + 0x198]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x170], rcx
               	mov	rcx, qword ptr [rsp + 0x190]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x1f0], rdx
               	mov	rdx, qword ptr [rsp + 0x200]
               	mov	rsi, qword ptr [rsp + 0x180]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x168], r8
               	jmp	 <L52>
               	nop	word ptr cs:[rax + rax]
<L54>:
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
               	je	 <L53>
<L52>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L54>
<L53>:
               	xor	edi, edi
               	jmp	 <L55>
               	nop	dword ptr [rax]
<L57>:
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
               	je	 <L56>
<L55>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L57>
<L56>:
               	xor	edi, edi
               	jmp	 <L58>
               	nop	dword ptr [rax]
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
               	je	 <L59>
<L58>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L60>
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L60>
<L59>:
               	xor	edi, edi
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L62>
<L61>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L63>
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x160], rax
               	mov	rax, qword ptr [rsp + 0x178]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x158], rcx
               	mov	rcx, qword ptr [rsp + 0x170]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x1e0], rdx
               	mov	rdx, qword ptr [rsp + 0x1f0]
               	mov	rsi, qword ptr [rsp + 0x168]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x150], r8
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L65>
<L64>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x1e0], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x160], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x1e0], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L69>
<L68>:
               	xor	edi, edi
               	jmp	 <L70>
               	nop	dword ptr [rax]
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
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x1e0], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L72>
<L71>:
               	xor	edi, edi
               	jmp	 <L73>
               	nop	dword ptr [rax]
<L75>:
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
               	je	 <L74>
<L73>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L75>
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x1e0], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x148], rax
               	mov	rax, qword ptr [rsp + 0x160]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x140], rcx
               	mov	rcx, qword ptr [rsp + 0x158]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x1d0], rdx
               	mov	rdx, qword ptr [rsp + 0x1e0]
               	mov	rsi, qword ptr [rsp + 0x150]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x138], r8
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x1d0], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L78>
<L77>:
               	xor	edi, edi
               	jmp	 <L79>
               	nop	dword ptr [rax]
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x1d0], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L81>
<L80>:
               	xor	edi, edi
               	jmp	 <L82>
               	nop	dword ptr [rax]
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
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x1d0], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L84>
<L83>:
               	xor	edi, edi
               	jmp	 <L85>
               	nop	dword ptr [rax]
<L87>:
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
               	je	 <L86>
<L85>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x1d0], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x130], rax
               	mov	rax, qword ptr [rsp + 0x148]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x128], rcx
               	mov	rcx, qword ptr [rsp + 0x140]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x1c0], rdx
               	mov	rdx, qword ptr [rsp + 0x1d0]
               	mov	rsi, qword ptr [rsp + 0x138]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x120], r8
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x120], rsi
               	xor	qword ptr [rsp + 0x1c0], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x130], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L92>
<L91>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x120], rsi
               	xor	qword ptr [rsp + 0x1c0], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x130], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L95>
<L94>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x120], rsi
               	xor	qword ptr [rsp + 0x1c0], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x130], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L98>
<L97>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x120], rsi
               	xor	qword ptr [rsp + 0x1c0], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x130], rax
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x118], rax
               	mov	rax, qword ptr [rsp + 0x130]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x110], rcx
               	mov	rcx, qword ptr [rsp + 0x128]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x40], rdx
               	mov	rdx, qword ptr [rsp + 0x1c0]
               	mov	rsi, qword ptr [rsp + 0x120]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x108], r8
               	jmp	 <L100>
               	nop
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x118], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x118], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L107>
<L106>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x118], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L110>
<L109>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L111>
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x118], rax
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x100], rax
               	mov	rax, qword ptr [rsp + 0x118]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xf8], rcx
               	mov	rcx, qword ptr [rsp + 0x110]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x38], rdx
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0x108]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xf0], r8
               	jmp	 <L112>
               	nop	dword ptr [rax]
<L114>:
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
               	je	 <L113>
<L112>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L114>
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0x100], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L116>
<L115>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L117>
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0x100], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L119>
<L118>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L120>
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0x100], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L122>
<L121>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L123>
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0x100], rax
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe8], rax
               	mov	rax, qword ptr [rsp + 0x100]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xe0], rcx
               	mov	rcx, qword ptr [rsp + 0xf8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x30], rdx
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0xf0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xd8], r8
               	jmp	 <L124>
               	nop	dword ptr [rax]
<L126>:
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
               	je	 <L125>
<L124>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L126>
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L128>
<L127>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L129>
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L131>
<L130>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L132>
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L134>
<L133>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L135>
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd0], rax
               	mov	rax, qword ptr [rsp + 0xe8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xc8], rcx
               	mov	rcx, qword ptr [rsp + 0xe0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x28], rdx
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, qword ptr [rsp + 0xd8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xc0], r8
               	jmp	 <L136>
               	nop	dword ptr [rax]
<L138>:
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
               	je	 <L137>
<L136>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L138>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xd0], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L140>
<L139>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L141>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xd0], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L143>
<L142>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L144>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xd0], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L146>
<L145>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L147>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xd0], rax
               	jmp	 <L147>
<L146>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb8], rax
               	mov	rax, qword ptr [rsp + 0xd0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	rcx, qword ptr [rsp + 0xc8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa8], r8
               	jmp	 <L148>
               	nop	dword ptr [rax]
<L150>:
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
               	je	 <L149>
<L148>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L150>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L150>
<L149>:
               	xor	edi, edi
               	jmp	 <L151>
               	nop	word ptr cs:[rax + rax]
<L153>:
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
               	je	 <L152>
<L151>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L153>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L153>
<L152>:
               	xor	edi, edi
               	jmp	 <L154>
               	nop	word ptr cs:[rax + rax]
<L156>:
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
               	je	 <L155>
<L154>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L156>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L156>
<L155>:
               	xor	edi, edi
               	jmp	 <L157>
               	nop	word ptr cs:[rax + rax]
<L159>:
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
               	je	 <L158>
<L157>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L159>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa0], rax
               	mov	rax, qword ptr [rsp + 0xb8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x98], rcx
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x18], rdx
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x90], r8
               	jmp	 <L160>
               	nop	dword ptr [rax]
<L162>:
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
               	je	 <L161>
<L160>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L162>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0xa0], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L164>
<L163>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L165>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0xa0], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L167>
<L166>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L168>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0xa0], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L170>
<L169>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L171>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0xa0], rax
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	mov	rax, qword ptr [rsp + 0xa0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x80], rcx
               	mov	rcx, qword ptr [rsp + 0x98]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x10], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x90]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	jmp	 <L172>
               	nop	word ptr cs:[rax + rax]
<L174>:
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
               	je	 <L173>
<L172>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L176>
<L175>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L179>
<L178>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L180>
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L182>
<L181>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L183>
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x70], rax
               	mov	rax, qword ptr [rsp + 0x88]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x68], rcx
               	mov	rcx, qword ptr [rsp + 0x80]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x8], rdx
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x78]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r8
               	jmp	 <L184>
               	nop	word ptr [rax + rax]
<L186>:
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
               	je	 <L185>
<L184>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0x70], rax
               	jmp	 <L186>
<L185>:
               	xor	edi, edi
               	jmp	 <L187>
               	nop	dword ptr [rax]
<L189>:
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
               	je	 <L188>
<L187>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L189>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0x70], rax
               	jmp	 <L189>
<L188>:
               	xor	edi, edi
               	jmp	 <L190>
               	nop	dword ptr [rax]
<L192>:
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
               	je	 <L191>
<L190>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L192>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0x70], rax
               	jmp	 <L192>
<L191>:
               	xor	edi, edi
               	jmp	 <L193>
               	nop	dword ptr [rax]
<L195>:
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
               	je	 <L194>
<L193>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L195>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0x70], rax
               	jmp	 <L195>
<L194>:
               	xor	edi, edi
               	xor	r13d, r13d
               	mov	rax, qword ptr [rsp + 0x70]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x58], rcx
               	mov	rcx, qword ptr [rsp + 0x68]
               	xor	edx, edx
               	mov	qword ptr [rsp], rdx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0x60]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
               	jmp	 <L196>
               	nop	dword ptr [rax]
<L198>:
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
               	je	 <L197>
<L196>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r13, rax
               	jmp	 <L198>
<L197>:
               	xor	edi, edi
               	jmp	 <L199>
               	nop	word ptr [rax + rax]
<L201>:
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
               	je	 <L200>
<L199>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r13, rax
               	jmp	 <L201>
<L200>:
               	xor	edi, edi
               	jmp	 <L202>
               	nop	word ptr [rax + rax]
<L204>:
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
               	je	 <L203>
<L202>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L204>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r13, rax
               	jmp	 <L204>
<L203>:
               	xor	edi, edi
               	jmp	 <L205>
               	nop	word ptr [rax + rax]
<L207>:
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
               	je	 <L206>
<L205>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L207>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r13, rax
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x2b8], r12
               	mov	qword ptr [rsp + 0x2c0], r10
               	mov	qword ptr [rsp + 0x230], r11
               	mov	qword ptr [rsp + 0x210], r9
               	xor	r11d, r11d
               	xor	r8d, r8d
               	mov	rdx, r13
               	xor	r9d, r9d
               	mov	rsi, qword ptr [rsp + 0x58]
               	xor	r12d, r12d
               	mov	rdi, qword ptr [rsp]
               	mov	rax, qword ptr [rsp + 0x50]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x48], rcx
               	movabs	rcx, 0x180ec6d33cfd0aba
               	jmp	 <L208>
               	nop	word ptr cs:[rax + rax]
<L210>:
               	mov	r10, rdi
               	shl	r10, 0x11
               	xor	rsi, rax
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	rax, rdx
               	xor	rsi, r10
               	rol	rdx, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L209>
<L208>:
               	bt	rcx, r11
               	jae	 <L210>
               	xor	qword ptr [rsp + 0x48], rax
               	xor	r12, rdi
               	xor	r9, rsi
               	xor	r8, rdx
               	jmp	 <L210>
<L209>:
               	xor	r11d, r11d
               	movabs	rcx, -0x2a59ed990f36c6d4
               	jmp	 <L211>
               	nop	dword ptr [rax + rax]
<L213>:
               	mov	r10, rdi
               	shl	r10, 0x11
               	xor	rsi, rax
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	rax, rdx
               	xor	rsi, r10
               	rol	rdx, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L212>
<L211>:
               	bt	rcx, r11
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x48], rax
               	xor	r12, rdi
               	xor	r9, rsi
               	xor	r8, rdx
               	jmp	 <L213>
<L212>:
               	xor	r10d, r10d
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L214>
               	nop	dword ptr [rax + rax]
<L216>:
               	mov	r11, rdi
               	shl	r11, 0x11
               	xor	rsi, rax
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	rax, rdx
               	xor	rsi, r11
               	rol	rdx, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L215>
<L214>:
               	bt	rcx, r10
               	jae	 <L216>
               	xor	qword ptr [rsp + 0x48], rax
               	xor	r12, rdi
               	xor	r9, rsi
               	xor	r8, rdx
               	jmp	 <L216>
<L215>:
               	xor	r10d, r10d
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop	dword ptr [rax + rax]
<L219>:
               	mov	r11, rdi
               	shl	r11, 0x11
               	xor	rsi, rax
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	rax, rdx
               	xor	rsi, r11
               	rol	rdx, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L218>
<L217>:
               	bt	rcx, r10
               	jae	 <L219>
               	xor	qword ptr [rsp + 0x48], rax
               	xor	r12, rdi
               	xor	r9, rsi
               	xor	r8, rdx
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x2b0], r15
               	mov	qword ptr [rsp + 0x2c8], r14
               	mov	qword ptr [rsp + 0x290], rbx
               	xor	r10d, r10d
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x2a8], r8
               	mov	rsi, r8
               	xor	edx, edx
               	mov	rdi, r9
               	xor	ebx, ebx
               	mov	r8, r12
               	mov	r11, qword ptr [rsp + 0x48]
               	xor	r14d, r14d
               	jmp	 <L220>
               	nop	word ptr cs:[rax + rax]
<L222>:
               	mov	rax, r8
               	shl	rax, 0x11
               	xor	rdi, r11
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r11, rsi
               	xor	rdi, rax
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L221>
<L220>:
               	movabs	rax, 0x180ec6d33cfd0aba
               	bt	rax, r10
               	jae	 <L222>
               	xor	r14, r11
               	xor	rbx, r8
               	xor	rdx, rdi
               	xor	rcx, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	jmp	 <L223>
               	nop	word ptr cs:[rax + rax]
<L225>:
               	mov	rax, r8
               	shl	rax, 0x11
               	xor	rdi, r11
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r11, rsi
               	xor	rdi, rax
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L224>
<L223>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, r10
               	jae	 <L225>
               	xor	r14, r11
               	xor	rbx, r8
               	xor	rdx, rdi
               	xor	rcx, rsi
               	jmp	 <L225>
<L224>:
               	xor	r10d, r10d
               	jmp	 <L226>
               	nop	word ptr cs:[rax + rax]
<L228>:
               	mov	rax, r8
               	shl	rax, 0x11
               	xor	rdi, r11
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r11, rsi
               	xor	rdi, rax
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L227>
<L226>:
               	movabs	rax, -0x56a7d9e71fc03656
               	bt	rax, r10
               	jae	 <L228>
               	xor	r14, r11
               	xor	rbx, r8
               	xor	rdx, rdi
               	xor	rcx, rsi
               	jmp	 <L228>
<L227>:
               	xor	r10d, r10d
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rax, r8
               	shl	rax, 0x11
               	xor	rdi, r11
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r11, rsi
               	xor	rdi, rax
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L230>
<L229>:
               	movabs	rax, 0x39abdc4529b1661c
               	bt	rax, r10
               	jae	 <L231>
               	xor	r14, r11
               	xor	rbx, r8
               	xor	rdx, rdi
               	xor	rcx, rsi
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x2a0], rcx
               	mov	rax, qword ptr [rsp + 0x238]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r11, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x300], r11
               	mov	rax, qword ptr [rsp + 0x230]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x308], rax
               	mov	rax, qword ptr [rsp + 0x220]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x260]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x310], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x318], rax
               	mov	rax, qword ptr [rsp + 0x200]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x320], rax
               	mov	rax, qword ptr [rsp + 0x1f0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x328], rax
               	mov	rax, qword ptr [rsp + 0x1e0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x1d0]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x330], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x338], rax
               	mov	rax, qword ptr [rsp + 0x1c0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x340], rax
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x348], rax
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x350], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x358], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x360], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x368], rax
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x370], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x378], rax
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x380], rax
               	mov	rax, qword ptr [rsp]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x388], rax
               	lea	rax, [r12 + 4*r12]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rbx + 4*rbx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x390], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x398], rax
               	mov	rsi, qword ptr [rsp + 0x298]
               	test	esi, esi
               	je	 <L232>
               	mov	esi, esi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x258], rax
               	vpbroadcastw	xmm0, word ptr  <__libc_start_main+0x1214>
               	vbroadcastss	ymm1, dword ptr  <__libc_start_main+0x11f8>
               	lea	rdi,  <__libc_start_main+0x1218>
               	mov	r10, qword ptr [rsp + 0x210]
               	mov	qword ptr [rsp + 0x2f0], rsi
               	jmp	 <L233>
               	nop	word ptr [rax + rax]
<L241>:
               	mov	rcx, qword ptr [rsp + 0x238]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	r8, qword ptr [rsp + 0x2e0]
               	mov	r11, qword ptr [rsp + 0x2d8]
               	xor	r11, r8
               	mov	qword ptr [rsp + 0x250], r13
               	mov	r15, qword ptr [rsp + 0x2d0]
               	xor	r15, rcx
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x238], rcx
               	xor	r8, r15
               	mov	qword ptr [rsp + 0x2e0], r8
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x2d0], r15
               	mov	r15, qword ptr [rsp + 0x1b8]
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x2d8], r11
               	mov	rdi, qword ptr [rsp + 0x230]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2c8]
               	mov	r11, qword ptr [rsp + 0x2c0]
               	xor	rcx, r11
               	xor	r15, rdi
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x230], rdi
               	xor	r11, r15
               	mov	qword ptr [rsp + 0x2c0], r11
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x2c8], rcx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x1b8], r15
               	mov	r8, qword ptr [rsp + 0x220]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x2b0]
               	xor	r11, qword ptr [rsp + 0x188]
               	mov	rcx, qword ptr [rsp + 0x2b8]
               	xor	rcx, r8
               	xor	r8, r11
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x2b0], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	rdi, qword ptr [rsp + 0x260]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x1a8]
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	qword ptr [rsp + 0x240], rdx
               	mov	rdx, rcx
               	xor	r11, rcx
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	xor	rcx, rdi
               	xor	rdi, r11
               	mov	qword ptr [rsp + 0x260], rdi
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x1a0], rdx
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x1a8], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1b0], rcx
               	mov	rdi, qword ptr [rsp + 0x200]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x190]
               	mov	r11, qword ptr [rsp + 0x180]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x198]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x200], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x180], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x198], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x190], rdx
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x170]
               	mov	r11, qword ptr [rsp + 0x168]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x178]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x1f0], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x168], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x170], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x178], rcx
               	mov	rdi, qword ptr [rsp + 0x1e0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x158]
               	mov	r11, qword ptr [rsp + 0x150]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x160]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x1e0], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x150], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x158], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x160], rcx
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x140]
               	mov	r11, qword ptr [rsp + 0x138]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x148]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x1d0], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x138], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x140], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x148], rcx
               	mov	rdi, qword ptr [rsp + 0x1c0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x128]
               	mov	r11, qword ptr [rsp + 0x120]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x130]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x1c0], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x120], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x130], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x128], rdx
               	mov	r13, qword ptr [rsp + 0x40]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x110]
               	mov	rsi, qword ptr [rsp + 0x108]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x118]
               	xor	rcx, r13
               	xor	r13, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x108], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x110], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x118], rcx
               	mov	r15, qword ptr [rsp + 0x38]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xf8]
               	mov	rcx, qword ptr [rsp + 0xf0]
               	mov	qword ptr [rsp + 0x248], r12
               	mov	r12, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x100]
               	xor	rcx, r15
               	xor	r15, rdx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0xf0], r12
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xf8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x100], rcx
               	mov	r12, qword ptr [rsp + 0x30]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xe0]
               	mov	rdi, qword ptr [rsp + 0xd8]
               	xor	rdx, rdi
               	mov	rcx, qword ptr [rsp + 0xe8]
               	xor	rcx, r12
               	xor	r12, rdx
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0xd8], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xe0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xe8], rcx
               	mov	qword ptr [rsp + 0x2e8], r14
               	mov	r14, qword ptr [rsp + 0x28]
               	mov	rsi, r14
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0xc8]
               	mov	rax, qword ptr [rsp + 0xc0]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0xd0]
               	xor	rcx, r14
               	xor	r14, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xc0], rax
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xd0], rcx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0xc8], rdx
               	mov	qword ptr [rsp + 0x218], rbx
               	mov	rbx, qword ptr [rsp + 0x20]
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0xb0]
               	mov	rax, qword ptr [rsp + 0xa8]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0xb8]
               	xor	rcx, rbx
               	xor	rbx, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xa8], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0xb0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xb8], rcx
               	mov	r11, qword ptr [rsp + 0x18]
               	mov	rsi, r11
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x98]
               	mov	rax, qword ptr [rsp + 0x90]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0xa0]
               	xor	rcx, r11
               	xor	r11, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x90], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x98], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xa0], rcx
               	mov	qword ptr [rsp + 0x2f8], r10
               	mov	r10, r9
               	mov	r9, qword ptr [rsp + 0x10]
               	mov	rsi, r9
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x80]
               	mov	rax, qword ptr [rsp + 0x78]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x88]
               	xor	rcx, r9
               	xor	r9, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x78], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x80], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x88], rcx
               	mov	rdi, qword ptr [rsp + 0x8]
               	mov	rsi, rdi
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	rax, qword ptr [rsp + 0x60]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x70]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x60], rax
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x70], rcx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x68], rdx
               	mov	rsi, qword ptr [rsp]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x58]
               	mov	rdx, qword ptr [rsp + 0x50]
               	xor	rcx, rdx
               	xor	qword ptr [rsp + 0x250], rsi
               	xor	rsi, rcx
               	xor	rdx, qword ptr [rsp + 0x250]
               	mov	qword ptr [rsp + 0x50], rdx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x58], rcx
               	rol	qword ptr [rsp + 0x250], 0x2d
               	mov	rax, qword ptr [rsp + 0x248]
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x48]
               	xor	r10, rdx
               	mov	rcx, qword ptr [rsp + 0x2a8]
               	xor	rcx, qword ptr [rsp + 0x248]
               	xor	qword ptr [rsp + 0x248], r10
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x48], rdx
               	xor	r10, rax
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	rax, qword ptr [rsp + 0x218]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2e8]
               	xor	qword ptr [rsp + 0x240], rcx
               	mov	rdx, qword ptr [rsp + 0x2a0]
               	xor	rdx, qword ptr [rsp + 0x218]
               	mov	rcx, qword ptr [rsp + 0x218]
               	xor	rcx, qword ptr [rsp + 0x240]
               	mov	qword ptr [rsp + 0x218], rcx
               	xor	qword ptr [rsp + 0x240], rax
               	mov	rax, qword ptr [rsp + 0x238]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rcx, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x230]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x220], r8
               	lea	r8, [r8 + 4*r8]
               	rol	r8, 0x7
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x300], rcx
               	mov	qword ptr [rsp + 0x308], rax
               	mov	rax, qword ptr [rsp + 0x260]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x310], r8
               	mov	r8, qword ptr [rsp + 0x200]
               	lea	r8, [r8 + 4*r8]
               	rol	r8, 0x7
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x318], rax
               	mov	rax, qword ptr [rsp + 0x1f0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x320], r8
               	mov	r8, qword ptr [rsp + 0x1e0]
               	lea	r8, [r8 + 4*r8]
               	rol	r8, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x328], rax
               	mov	rax, qword ptr [rsp + 0x1d0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x330], r8
               	mov	r8, qword ptr [rsp + 0x1c0]
               	lea	r8, [r8 + 4*r8]
               	rol	r8, 0x7
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x338], rax
               	mov	qword ptr [rsp + 0x40], r13
               	lea	rax, [4*r13]
               	add	rax, r13
               	mov	r13, qword ptr [rsp + 0x250]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x340], r8
               	mov	qword ptr [rsp + 0x38], r15
               	lea	r8, [r15 + 4*r15]
               	rol	r8, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x348], rax
               	mov	qword ptr [rsp + 0x30], r12
               	lea	rax, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x248]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x350], r8
               	mov	qword ptr [rsp + 0x28], r14
               	lea	r8, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x2e8]
               	rol	r8, 0x7
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x358], rax
               	mov	qword ptr [rsp + 0x20], rbx
               	lea	rax, [rbx + 4*rbx]
               	mov	rbx, qword ptr [rsp + 0x218]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x360], r8
               	mov	qword ptr [rsp + 0x18], r11
               	lea	r8, [r11 + 4*r11]
               	mov	r11, rcx
               	rol	r8, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x368], rax
               	mov	qword ptr [rsp + 0x10], r9
               	lea	rax, [r9 + 4*r9]
               	mov	r9, r10
               	mov	r10, qword ptr [rsp + 0x2f8]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x370], r8
               	mov	qword ptr [rsp + 0x8], rdi
               	lea	r8, [rdi + 4*rdi]
               	lea	rdi,  <__libc_start_main+0x1218>
               	rol	r8, 0x7
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x378], rax
               	mov	qword ptr [rsp], rsi
               	lea	rax, [rsi + 4*rsi]
               	mov	rsi, qword ptr [rsp + 0x2f0]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x380], r8
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x388], rax
               	lea	rax, [r12 + 4*r12]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x390], rax
               	lea	rax, [rbx + 4*rbx]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x398], rax
               	xor	r14, rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x2a0], rdx
               	mov	rdx, qword ptr [rsp + 0x240]
               	add	r10, 0x48
               	cmp	rsi, qword ptr [rsp + 0x258]
               	je	 <L234>
<L233>:
               	vmovups	ymm4, ymmword ptr [rsp + 0x318]
               	vmovups	ymm2, ymmword ptr [rsp + 0x328]
               	vmovdqu	xmm3, xmmword ptr [rsp + 0x348]
               	vpshufb	xmm3, xmm3, xmm0
               	movzx	eax, r11b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	r8d, [rax + 2*rax]
               	lea	eax, [rax + 4*r8]
               	sub	r11b, al
               	vperm2f128	ymm5, ymm2, ymmword ptr [rsp + 0x308], 0x2 # ymm5 = mem[0,1],ymm2[0,1]
               	vinsertf128	ymm4, ymm4, xmmword ptr [rsp + 0x338], 0x1
               	vshufps	ymm4, ymm5, ymm4, 0x88  # ymm4 = ymm5[0,2],ymm4[0,2],ymm5[4,6],ymm4[4,6]
               	vandps	ymm4, ymm4, ymm1
               	vcvtdq2ps	ymm4, ymm4
               	movzx	eax, r11b
               	movsxd	rax, dword ptr [rdi + 4*rax]
               	add	rax, rdi
               	jmp	rax
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L235>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 6l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L236>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 2l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L237>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 6l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	mov	qword ptr [r10], rax
               	vmovups	ymmword ptr [r10 + 0x8], ymm4
               	vmovups	ymm3, ymmword ptr [rsp + 0x358]
               	vmovups	ymm4, ymmword ptr [rsp + 0x368]
               	vinsertf128	ymm4, ymm4, xmmword ptr [rsp + 0x388], 0x1
               	vinsertf128	ymm3, ymm3, xmmword ptr [rsp + 0x378], 0x1
               	vshufps	ymm3, ymm3, ymm4, 0x88  # ymm3 = ymm3[0,2],ymm4[0,2],ymm3[4,6],ymm4[4,6]
               	vandps	ymm3, ymm3, ymm1
               	vcvtdq2ps	ymm3, ymm3
               	vmovups	ymmword ptr [r10 + 0x28], ymm3
               	jmp	 <L238>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L239>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L237>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L235>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 3l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L236>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
<L237>:
               	mov	qword ptr [r10], rax
               	vmovups	ymmword ptr [r10 + 0x8], ymm4
               	vpextrb	eax, xmm3, 0x0
               	jmp	 <L240>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
               	jmp	 <L235>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
<L236>:
               	mov	qword ptr [r10], rax
               	vmovups	ymmword ptr [r10 + 0x8], ymm4
               	vpmovzxbd	xmm3, xmm3      # xmm3 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero
               	vcvtdq2ps	xmm3, xmm3
               	vmovlps	qword ptr [r10 + 0x28], xmm3
               	jmp	 <L238>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 12l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
<L239>:
               	mov	qword ptr [r10], rax
               	vmovups	ymmword ptr [r10 + 0x8], ymm4
               	vpextrb	eax, xmm3, 0x1
<L240>:
               	vcvtsi2ss	xmm3, xmm7, eax
               	vmovss	dword ptr [r10 + 0x28], xmm3
               	jmp	 <L238>
               	lea	rax,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 6l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>
<L235>:
               	mov	qword ptr [r10], rax
               	vmovups	ymmword ptr [r10 + 0x8], ymm4
<L238>:
               	mov	rax, qword ptr [rsp + 0x258]
               	inc	rax
               	mov	qword ptr [rsp + 0x258], rax
               	test	al, 0x7
               	je	 <L241>
               	vblendps	ymm2, ymm2, ymmword ptr [rsp + 0x308], 0xc0 # ymm2 = ymm2[0,1,2,3,4,5],mem[6,7]
               	vpermpd	ymm2, ymm2, 0x93        # ymm2 = ymm2[3,0,1,2]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x300]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x340]
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x360]
               	vmovdqu	ymm6, ymmword ptr [rsp + 0x380]
               	vpsrlq	ymm3, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x300], ymm3
               	vpsrlq	ymm2, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x320], ymm2
               	vpsrlq	ymm2, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x340], ymm2
               	vpsrlq	ymm2, ymm5, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x360], ymm2
               	vpsrlq	ymm2, ymm6, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x380], ymm2
               	vmovq	r11, xmm3
               	add	r10, 0x48
               	cmp	rsi, qword ptr [rsp + 0x258]
               	jne	 <L233>
<L234>:
               	mov	rax, qword ptr [rsp + 0x258]
               	shl	rax, 0x3
               	lea	r14, [rax + 8*rax]
               	test	r14, r14
               	je	 <L242>
               	mov	r13, qword ptr [rsp + 0x210]
               	add	r14, r13
               	mov	r12d, 0x1
               	xor	r15d, r15d
               	mov	eax, 0x1
               	jmp	 <L243>
               	nop	word ptr cs:[rax + rax]
<L245>:
               	add	r13, 0x240
               	inc	r12d
               	popcnt	eax, r12d
               	mov	r15d, ebx
               	cmp	r13, r14
               	je	 <L244>
<L243>:
               	mov	ebx, eax
               	lea	rdi, [r13 + 0x8]
               	vzeroupper
               	call	qword ptr [r13]
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	lea	rdi, [r13 + 0x50]
               	call	qword ptr [r13 + 0x48]
               	vmovdqa	xmmword ptr [rsp + 0x200], xmm0
               	lea	rdi, [r13 + 0x98]
               	call	qword ptr [r13 + 0x90]
               	vmovdqa	xmmword ptr [rsp + 0x1f0], xmm0
               	lea	rdi, [r13 + 0xe0]
               	call	qword ptr [r13 + 0xd8]
               	vmovdqa	xmmword ptr [rsp + 0x1e0], xmm0
               	lea	rdi, [r13 + 0x128]
               	call	qword ptr [r13 + 0x120]
               	vmovdqa	xmmword ptr [rsp + 0x1d0], xmm0
               	lea	rdi, [r13 + 0x170]
               	call	qword ptr [r13 + 0x168]
               	vmovdqa	xmmword ptr [rsp + 0x1c0], xmm0
               	lea	rdi, [r13 + 0x1b8]
               	call	qword ptr [r13 + 0x1b0]
               	vmovdqa	xmmword ptr [rsp + 0x220], xmm0
               	lea	rdi, [r13 + 0x200]
               	call	qword ptr [r13 + 0x1f8]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x1d0]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x1c0], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x220], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm0, xmm1, xmm0, 0x30 # xmm0 = xmm1[0,1,2],xmm0[0]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x260]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x200], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x1f0], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x1e0], 0x30 # xmm1 = xmm1[0,1,2],mem[0]
               	movsxd	rcx, r15d
               	mov	rax, rcx
               	shl	rax, 0x5
               	vmovaps	xmmword ptr [rsp + rax + 0x300], xmm1
               	vmovaps	xmmword ptr [rsp + rax + 0x310], xmm0
               	sub	ecx, ebx
               	jb	 <L245>
               	mov	eax, r15d
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x300]
               	inc	ecx
               	and	ecx, 0x3
               	je	 <L246>
               	lea	rsi, [rsp + 0x2e0]
               	add	rdx, rsi
               	xor	esi, esi
               	nop	dword ptr [rax]
<L247>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx], ymm0
               	inc	rsi
               	add	rdx, -0x20
               	cmp	rcx, rsi
               	jne	 <L247>
               	mov	rcx, rax
               	sub	rcx, rsi
               	mov	edx, ebx
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L245>
               	jmp	 <L248>
<L246>:
               	mov	rcx, rax
               	mov	edx, ebx
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L245>
<L248>:
               	mov	rax, rcx
               	shl	rax, 0x5
               	lea	rsi, [rsp + 0x2e0]
               	add	rax, rsi
               	inc	rcx
               	nop	word ptr cs:[rax + rax]
<L249>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x40]
               	vmovaps	ymmword ptr [rax - 0x40], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x60]
               	vmovaps	ymmword ptr [rax - 0x60], ymm0
               	add	rax, -0x80
               	add	rcx, -0x4
               	cmp	rcx, rdx
               	jg	 <L249>
               	jmp	 <L245>
<L244>:
               	cmp	ebx, 0x2
               	mov	r14, qword ptr [rsp + 0x290]
               	mov	rsi, qword ptr [rsp + 0x298]
               	mov	rdi, qword ptr [rsp + 0x210]
               	jb	 <L250>
               	mov	eax, ebx
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x2e0]
               	test	bl, 0x1
               	jne	 <L251>
               	dec	rax
               	lea	rdx, [rsp + 0x300]
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L251>:
               	cmp	ebx, 0x2
               	je	 <L250>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	lea	rdx, [rsp + 0x300]
               	add	rax, rdx
               	add	rax, -0x40
               	nop	word ptr cs:[rax + rax]
<L252>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L252>
               	jmp	 <L250>
<L232>:
               	mov	r14, qword ptr [rsp + 0x290]
               	mov	rdi, qword ptr [rsp + 0x210]
<L250>:
               	vmovaps	ymm0, ymmword ptr [rsp + 0x300]
               	vmovaps	ymmword ptr [rsp + 0x260], ymm0
               	test	rdi, rdi
               	jne	 <L253>
               	cmp	r14d, 0x2a
               	je	 <L254>
               	jmp	 <L255>
<L242>:
               	mov	r14, qword ptr [rsp + 0x290]
               	mov	rdi, qword ptr [rsp + 0x210]
<L253>:
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	mov	rsi, qword ptr [rsp + 0x298]
               	cmp	r14d, 0x2a
               	jne	 <L255>
<L254>:
               	cmp	esi, 0x186a0
               	jne	 <L255>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x260]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0x120c>
               	jne	 <L256>
<L255>:
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
<L256>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x260], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x260]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x90d8>
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
               	int3
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1200>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1200>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 2l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1208>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 3l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1204>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 6l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x1210>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1200>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 12l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x11fc>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErasure@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 6l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErasure@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1210>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x90b0>
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
