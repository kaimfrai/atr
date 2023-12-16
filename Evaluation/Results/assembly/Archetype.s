
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
               	call	qword ptr  <__libc_start_main+0x5ff8>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6008>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6010>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x6018>
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
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Meta.Memory.Size.Compare>
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
               	call	 <initializer for module ATR.Erase>
               	call	 <initializer for module ATR.Layout.ErasureView>
               	call	 <initializer for module ATR.Layout.TypeIndex>
               	call	 <initializer for module ATR.Member.Info>
               	call	 <initializer for module Meta.Auto.Ref.DataRange>
               	call	 <initializer for module Meta.Auto.Ref.PledgeCount>
               	call	 <initializer for module Meta.Auto.Ref.RArray>
               	call	 <initializer for module Meta.Auto.Ref.XArray>
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
               	int3
               	int3
               	int3
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
               	pop	rax
               	jmp	 <initializer for module ATR.Virtual.Entry>
               	int3
               	int3

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	push	rax
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r15d, byte ptr [rcx]
               	movzx	edx, byte ptr [rcx + 0x1]
               	add	r15d, -0x30
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr [rax + rax]
<L1>:
               	lea	esi, [r15 + 4*r15]
               	movsx	edx, dl
               	lea	r15d, [rdx + 2*rsi - 0x30]
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	r14d, byte ptr [rax]
               	movzx	ecx, byte ptr [rax + 0x1]
               	add	r14d, -0x30
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	word ptr [rax + rax]
<L3>:
               	lea	edx, [r14 + 4*r14]
               	movsx	ecx, cl
               	lea	r14d, [rcx + 2*rdx - 0x30]
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	mov	rsi, qword ptr  <__libc_start_main+0x6020>
               	movsxd	r12, r14d
               	lea	rax, [8*r12]
               	lea	rdi, [rax + 8*rax]
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	rbx, rax
               	test	r12d, r12d
               	je	 <L4>
               	movsxd	rdx, r15d
               	movabs	rax, -0x255992d382208bc1
               	movabs	rdi, -0x40a7b892e31b1a47
               	movabs	r8, -0x6b2fb644ecceee15
               	vxorps	xmm0, xmm0, xmm0
               	lea	r13,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 6l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
               	add	rax, rdx
               	mov	r11, rdx
               	mov	rcx, rax
               	shr	r11, 0x1e
               	shr	rcx, 0x1e
               	xor	r11, rdx
               	xor	rcx, rax
               	imul	r11, rdi
               	imul	rcx, rdi
               	mov	rsi, rcx
               	shr	rsi, 0x1b
               	xor	rsi, rcx
               	movabs	rcx, 0x3c6ef372fe94f82a
               	add	rcx, rdx
               	imul	rsi, r8
               	mov	r9, rcx
               	shr	r9, 0x1e
               	xor	r9, rcx
               	imul	r9, rdi
               	mov	rax, rsi
               	shr	rax, 0x1f
               	xor	rax, rsi
               	movabs	rsi, -0x61c8864680b583eb
               	add	rsi, rdx
               	mov	rdx, r11
               	mov	r10, r9
               	shr	rdx, 0x1b
               	shr	r10, 0x1b
               	xor	rdx, r11
               	lea	r11,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 12l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
               	xor	r10, r9
               	mov	r9, rsi
               	imul	rdx, r8
               	shr	r9, 0x1e
               	imul	r10, r8
               	xor	r9, rsi
               	imul	r9, rdi
               	mov	rdi, rdx
               	mov	rcx, r10
               	shr	rdi, 0x1f
               	shr	rcx, 0x1f
               	xor	rdi, rdx
               	mov	r15, r9
               	xor	rcx, r10
               	lea	r10,  <__libc_start_main+0x1108>
               	shr	r15, 0x1b
               	xor	r15, r9
               	movabs	r9, 0x4ec4ec4ec4ec4ec5
               	imul	r15, r8
               	xor	r8d, r8d
               	mov	rsi, r15
               	shr	rsi, 0x1f
               	xor	rsi, r15
               	lea	r15,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 6l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
<L13>:
               	lea	rdx, [rsi + 4*rsi]
               	rorx	rdx, rdx, 0x39
               	lea	rdx, [rdx + 8*rdx]
               	mulx	r12, r12, r9
               	shr	r12, 0x2
               	lea	rbp, [r12 + 2*r12]
               	lea	r12, [r12 + 4*rbp]
               	sub	rdx, r12
               	cmp	rdx, 0xc
               	ja	 <L5>
               	movsxd	rdx, dword ptr [r10 + 4*rdx]
               	add	rdx, r10
               	jmp	rdx
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
               	jmp	 <L6>
               	lea	rdx, [r8 + 8*r8]
               	mov	qword ptr [rbx + 8*rdx], r15
               	jmp	 <L7>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 2l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
               	jmp	 <L8>
               	lea	rdx, [r8 + 8*r8]
               	mov	qword ptr [rbx + 8*rdx], r13
               	vmovups	ymmword ptr [rbx + 8*rdx + 0x8], ymm0
               	vmovups	ymmword ptr [rbx + 8*rdx + 0x28], ymm0
               	jmp	 <L9>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
               	jmp	 <L8>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
               	jmp	 <L8>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
               	jmp	 <L6>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 3l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
               	jmp	 <L10>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
<L8>:
               	mov	qword ptr [rbx + 8*rdx], r12
<L12>:
               	vmovups	ymmword ptr [rbx + 8*rdx + 0x8], ymm0
               	mov	dword ptr [rbx + 8*rdx + 0x28], 0x0
               	jmp	 <L9>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
<L6>:
               	mov	qword ptr [rbx + 8*rdx], r12
               	jmp	 <L11>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErased@ATR.Erase)>
<L10>:
               	mov	qword ptr [rbx + 8*rdx], r12
<L7>:
               	vmovups	ymmword ptr [rbx + 8*rdx + 0x8], ymm0
               	mov	qword ptr [rbx + 8*rdx + 0x28], 0x0
               	jmp	 <L9>
               	lea	rdx, [r8 + 8*r8]
               	mov	qword ptr [rbx + 8*rdx], r11
               	jmp	 <L12>
               	lea	rdx, [r8 + 8*r8]
               	mov	qword ptr [rbx + 8*rdx], r13
<L11>:
               	vmovups	ymmword ptr [rbx + 8*rdx + 0x8], ymm0
<L9>:
               	inc	r8
<L5>:
               	mov	rdx, rsi
               	xor	rcx, rdi
               	xor	rax, rsi
               	shl	rdx, 0x11
               	xor	rsi, rcx
               	xor	rdi, rax
               	rorx	rax, rax, 0x13
               	xor	rcx, rdx
               	dec	r14d
               	jne	 <L13>
               	shl	r8, 0x3
               	lea	r14, [r8 + 8*r8]
               	test	r14, r14
               	je	 <L4>
               	add	r14, rbx
               	vxorps	xmm0, xmm0, xmm0
               	mov	r15, rbx
               	nop	word ptr cs:[rax + rax]
<L14>:
               	lea	rdi, [r15 + 0x8]
               	vmovss	dword ptr [rsp + 0x4], xmm0
               	vzeroupper
               	call	qword ptr [r15]
               	vmovss	xmm1, dword ptr [rsp + 0x4] # xmm1 = mem[0],zero,zero,zero
               	add	r15, 0x48
               	vaddss	xmm1, xmm0, xmm1
               	vmovss	dword ptr [rsp + 0x4], xmm1
               	vmovss	xmm0, dword ptr [rsp + 0x4] # xmm0 = mem[0],zero,zero,zero
               	cmp	r15, r14
               	jne	 <L14>
               	vcvttss2si	ebp, xmm0
               	test	rbx, rbx
               	jne	 <L15>
               	jmp	 <L16>
<L4>:
               	xor	ebp, ebp
               	test	rbx, rbx
               	je	 <L16>
<L15>:
               	mov	rdi, rbx
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L16>:
               	mov	eax, ebp
               	add	rsp, 0x8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1140>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1140>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 2l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1148>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 1l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<Fraction@Evaluation.Dependency.Fraction<1l, 3l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1144>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 6l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x114c>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 4l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x1140>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 12l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x113c>
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

<ATR::Function@ATR.Address<ATR::GlobalDependency@ATR.Dependency<Meta::String::ImplicitHash@Meta.String.Hash{Meta::String::Hash@Meta.String.Hash{11338391626011872844ul, 7ul}}>, ATR::Dependency@ATR.Dependency<ATR::CErased@ATR.Erase, ATR::Layout::Offset@ATR.Layout.Offset<PiFraction@Evaluation.Dependency.PiFraction<1l, 6l>, Meta::Memory::Size@Meta.Memory.Size<1l>{}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{224l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{256l}>{}, ATR::Layout::Offset@ATR.Layout.Offset<float, Meta::Memory::Size@Meta.Memory.Size<1l>{288l}>{}>>::operator()(ATR::CErased@ATR.Erase)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x114c>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x6000>
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
