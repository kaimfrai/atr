
build/Evaluation/bin/Polymorphic:	file format elf64-x86-64

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
               	call	qword ptr  <strcmp+0xa5e0>
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
               	mov	rax, qword ptr  <strcmp+0xa5f0>
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
               	mov	rax, qword ptr  <strcmp+0xa5f8>
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
               	cmp	qword ptr , 0x0 <strcmp+0xa600>
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.Polymorphic>:
<initializer for module Std>:
<polymorphic::detail::holder_interface::~holder_interface()>:
<std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>:
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.TransformReduce>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW15TransformReduce__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW15TransformReduce__in_chrg>
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Circle__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.CircularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Shape3D>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.CircularShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW13CircularShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW13CircularShape__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Shape3D>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW7Shape3D__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW7Shape3D__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.ExtendedShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW13ExtendedShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW13ExtendedShape__in_chrg>
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW7Ellipse__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.CircularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Shape3D>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Rectangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW9Rectangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW9Rectangle__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.RectangularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Shape3D>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.RectangularShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW16RectangularShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW16RectangularShape__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.Fraction>
               	int3
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Square>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW6Square__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Square__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.RectangularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Shape3D>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW8Triangle__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.TriangularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Shape3D>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.TriangularShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW15TriangularShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW15TriangularShape__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.Fraction>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Cube>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW4Cube__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW4Cube__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.Square>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.CubicBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.CubicBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW9CubicBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW9CubicBody__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.Fraction>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Cuboid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW6Cuboid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Cuboid__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.Rectangle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.CubicBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW7Pyramid__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.Triangle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.PyramidicBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.PyramidicBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW13PyramidicBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW13PyramidicBody__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.Fraction>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Sphere__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.BasicSphere>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.BasicSphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW11BasicSphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW11BasicSphere__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.SphericBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.SphericBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW11SphericBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW11SphericBody__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW8Cylinder__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW4Cone__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.ExtendedShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW9Ellipsoid__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.Ellipse>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.SphericBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW4Head__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.BasicSphere>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Sphere>
               	int3
               	int3
               	int3

<_GLOBAL__sub_I_Polymorphic.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	call	 <initializer for module Evaluation.CRTP.Ellipse>
               	call	 <initializer for module Evaluation.CRTP.Rectangle>
               	call	 <initializer for module Evaluation.CRTP.Square>
               	call	 <initializer for module Evaluation.CRTP.Triangle>
               	call	 <initializer for module Evaluation.CRTP.Shape3D>
               	call	 <initializer for module Evaluation.CRTP.Cube>
               	call	 <initializer for module Evaluation.CRTP.CubicBody>
               	call	 <initializer for module Evaluation.CRTP.Cuboid>
               	call	 <initializer for module Evaluation.CRTP.Pyramid>
               	call	 <initializer for module Evaluation.CRTP.PyramidicBody>
               	call	 <initializer for module Evaluation.CRTP.Sphere>
               	call	 <initializer for module Evaluation.CRTP.BasicSphere>
               	call	 <initializer for module Evaluation.CRTP.Cylinder>
               	call	 <initializer for module Evaluation.CRTP.Cone>
               	call	 <initializer for module Evaluation.CRTP.Ellipsoid>
               	call	 <initializer for module Evaluation.CRTP.SphericBody>
               	call	 <initializer for module Evaluation.CRTP.Head>
               	pop	rax
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3
               	int3
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
               	sub	rsp, 0x4d8
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
               	mov	qword ptr [rsp + 0x48], rdx
               	movsxd	rax, edx
               	shl	rax, 0x3
               	lea	rdi, [rax + 4*rax]
               	mov	rsi, qword ptr  <strcmp+0xa608>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x428], rbx
               	movsxd	rcx, ebx
               	vpbroadcastq	ymm0, rcx
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <strcmp+0x2400>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rdx, -0x61c8864680b583eb
               	add	rdx, rcx
               	shr	rdx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rdx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <strcmp+0x2420>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <strcmp+0x2428>
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0xb0], ymm0
               	vmovq	r8, xmm0
               	vpextrq	r10, xmm0, 0x1
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	r15, xmm0
               	vpextrq	r13, xmm0, 0x1
               	xor	edx, edx
               	xor	esi, esi
               	xor	edi, edi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
<L6>:
               	mov	rcx, r10
               	shl	rcx, 0x11
               	xor	r15, r8
               	xor	r13, r10
               	xor	r10, r15
               	xor	r8, r13
               	xor	r15, rcx
               	rorx	r13, r13, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L5>
<L4>:
               	bt	r14, rdx
               	jae	 <L6>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, r15
               	xor	rsi, r13
               	jmp	 <L6>
<L5>:
               	movabs	rbx, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop	word ptr [rax + rax]
<L9>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r15, r8
               	xor	r13, r10
               	xor	r10, r15
               	xor	r8, r13
               	xor	r15, rdx
               	rorx	r13, r13, 0x13
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L8>
<L7>:
               	bt	rbx, rcx
               	jae	 <L9>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, r15
               	xor	rsi, r13
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x8], rax
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	mov	rax, rbx
               	jmp	 <L10>
               	nop
<L12>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r15, r8
               	xor	r13, r10
               	xor	r10, r15
               	xor	r8, r13
               	xor	r15, rbx
               	rorx	r13, r13, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L11>
<L10>:
               	bt	rcx, rdx
               	jae	 <L12>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, r15
               	xor	rsi, r13
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	ebx, ebx
               	jmp	 <L13>
               	nop	word ptr [rax + rax]
<L15>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r15, r8
               	xor	r13, r10
               	xor	r10, r15
               	xor	r8, r13
               	xor	r15, r12
               	rorx	r13, r13, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L14>
<L13>:
               	bt	rdx, rbx
               	jae	 <L15>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, r15
               	xor	rsi, r13
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0xd0], r11
               	mov	qword ptr [rsp + 0xd8], r9
               	mov	qword ptr [rsp + 0xe0], rdi
               	mov	qword ptr [rsp + 0xe8], rsi
               	xor	ebx, ebx
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r13d, r13d
               	xor	ebp, ebp
               	jmp	 <L16>
               	nop	dword ptr [rax + rax]
<L18>:
               	mov	r15, r9
               	shl	r15, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r15
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L17>
<L16>:
               	bt	r14, rbx
               	jae	 <L18>
               	xor	rbp, r11
               	xor	r13, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L18>
<L17>:
               	xor	ebx, ebx
               	jmp	 <L19>
               	nop	dword ptr [rax]
<L21>:
               	mov	r15, r9
               	shl	r15, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r15
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L20>
<L19>:
               	bt	rax, rbx
               	jae	 <L21>
               	xor	rbp, r11
               	xor	r13, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L21>
<L20>:
               	xor	ebx, ebx
               	jmp	 <L22>
               	nop	dword ptr [rax]
<L24>:
               	mov	r15, r9
               	shl	r15, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r15
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L23>
<L22>:
               	bt	rcx, rbx
               	jae	 <L24>
               	xor	rbp, r11
               	xor	r13, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L24>
<L23>:
               	xor	ebx, ebx
               	jmp	 <L25>
               	nop	dword ptr [rax]
<L27>:
               	mov	r15, r9
               	shl	r15, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r15
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L26>
<L25>:
               	bt	rdx, rbx
               	jae	 <L27>
               	xor	rbp, r11
               	xor	r13, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0xf0], rbp
               	mov	qword ptr [rsp + 0xf8], r13
               	mov	qword ptr [rsp + 0x100], r10
               	mov	qword ptr [rsp + 0x108], r8
               	xor	edi, edi
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L28>
               	nop	dword ptr [rax + rax]
<L30>:
               	mov	rbx, r13
               	shl	rbx, 0x11
               	xor	r10, rbp
               	xor	r8, r13
               	xor	r13, r10
               	xor	rbp, r8
               	xor	r10, rbx
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L29>
<L28>:
               	bt	r14, rdi
               	jae	 <L30>
               	xor	r15, rbp
               	xor	r11, r13
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L30>
<L29>:
               	xor	edi, edi
               	jmp	 <L31>
               	nop	dword ptr [rax]
<L33>:
               	mov	rbx, r13
               	shl	rbx, 0x11
               	xor	r10, rbp
               	xor	r8, r13
               	xor	r13, r10
               	xor	rbp, r8
               	xor	r10, rbx
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L32>
<L31>:
               	bt	rax, rdi
               	jae	 <L33>
               	xor	r15, rbp
               	xor	r11, r13
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L33>
<L32>:
               	xor	edi, edi
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
               	mov	rbx, r13
               	shl	rbx, 0x11
               	xor	r10, rbp
               	xor	r8, r13
               	xor	r13, r10
               	xor	rbp, r8
               	xor	r10, rbx
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L35>
<L34>:
               	bt	rcx, rdi
               	jae	 <L36>
               	xor	r15, rbp
               	xor	r11, r13
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L36>
<L35>:
               	xor	edi, edi
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
               	mov	rbx, r13
               	shl	rbx, 0x11
               	xor	r10, rbp
               	xor	r8, r13
               	xor	r13, r10
               	xor	rbp, r8
               	xor	r10, rbx
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L38>
<L37>:
               	bt	rdx, rdi
               	jae	 <L39>
               	xor	r15, rbp
               	xor	r11, r13
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L39>
<L38>:
               	mov	qword ptr [rsp + 0x110], r15
               	mov	qword ptr [rsp + 0x118], r11
               	mov	qword ptr [rsp + 0x120], r9
               	mov	qword ptr [rsp + 0x128], rsi
               	xor	ebx, ebx
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r13d, r13d
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
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L41>
<L40>:
               	bt	r14, rbx
               	jae	 <L42>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L42>
<L41>:
               	xor	ebx, ebx
               	jmp	 <L43>
               	nop	dword ptr [rax]
<L45>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L44>
<L43>:
               	bt	rax, rbx
               	jae	 <L45>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L45>
<L44>:
               	xor	ebx, ebx
               	jmp	 <L46>
               	nop	dword ptr [rax]
<L48>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L47>
<L46>:
               	bt	rcx, rbx
               	jae	 <L48>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L48>
<L47>:
               	xor	ebx, ebx
               	jmp	 <L49>
               	nop	dword ptr [rax]
<L51>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L50>
<L49>:
               	bt	rdx, rbx
               	jae	 <L51>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L51>
<L50>:
               	mov	qword ptr [rsp + 0x130], r13
               	mov	qword ptr [rsp + 0x138], r10
               	mov	qword ptr [rsp + 0x140], r8
               	mov	qword ptr [rsp + 0x148], rdi
               	xor	ebx, ebx
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L52>
               	nop	dword ptr [rax + rax]
<L54>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L53>
<L52>:
               	bt	r14, rbx
               	jae	 <L54>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L54>
<L53>:
               	xor	ebx, ebx
               	jmp	 <L55>
               	nop	dword ptr [rax]
<L57>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L56>
<L55>:
               	bt	rax, rbx
               	jae	 <L57>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L57>
<L56>:
               	xor	ebx, ebx
               	jmp	 <L58>
               	nop	dword ptr [rax]
<L60>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L59>
<L58>:
               	bt	rcx, rbx
               	jae	 <L60>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L60>
<L59>:
               	xor	ebx, ebx
               	jmp	 <L61>
               	nop	dword ptr [rax]
<L63>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L62>
<L61>:
               	bt	rdx, rbx
               	jae	 <L63>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L63>
<L62>:
               	mov	qword ptr [rsp + 0x150], r15
               	mov	qword ptr [rsp + 0x158], r11
               	mov	qword ptr [rsp + 0x160], r9
               	mov	qword ptr [rsp + 0x168], rsi
               	xor	ebx, ebx
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r13d, r13d
               	jmp	 <L64>
               	nop	dword ptr [rax + rax]
<L66>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L65>
<L64>:
               	bt	r14, rbx
               	jae	 <L66>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L66>
<L65>:
               	xor	ebx, ebx
               	jmp	 <L67>
               	nop	dword ptr [rax]
<L69>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L68>
<L67>:
               	bt	rax, rbx
               	jae	 <L69>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L69>
<L68>:
               	xor	ebx, ebx
               	jmp	 <L70>
               	nop	dword ptr [rax]
<L72>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L71>
<L70>:
               	bt	rcx, rbx
               	jae	 <L72>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L72>
<L71>:
               	xor	ebx, ebx
               	jmp	 <L73>
               	nop	dword ptr [rax]
<L75>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L74>
<L73>:
               	bt	rdx, rbx
               	jae	 <L75>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L75>
<L74>:
               	mov	qword ptr [rsp + 0x170], r13
               	mov	qword ptr [rsp + 0x178], r10
               	mov	qword ptr [rsp + 0x180], r8
               	mov	qword ptr [rsp + 0x188], rdi
               	xor	ebx, ebx
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L76>
               	nop	dword ptr [rax + rax]
<L78>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L77>
<L76>:
               	bt	r14, rbx
               	jae	 <L78>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L78>
<L77>:
               	xor	ebx, ebx
               	jmp	 <L79>
               	nop	dword ptr [rax]
<L81>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L80>
<L79>:
               	bt	rax, rbx
               	jae	 <L81>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L81>
<L80>:
               	xor	ebx, ebx
               	jmp	 <L82>
               	nop	dword ptr [rax]
<L84>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L83>
<L82>:
               	bt	rcx, rbx
               	jae	 <L84>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L84>
<L83>:
               	xor	ebx, ebx
               	jmp	 <L85>
               	nop	dword ptr [rax]
<L87>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L86>
<L85>:
               	bt	rdx, rbx
               	jae	 <L87>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L87>
<L86>:
               	mov	qword ptr [rsp + 0x190], r15
               	mov	qword ptr [rsp + 0x198], r11
               	mov	qword ptr [rsp + 0x1a0], r9
               	mov	qword ptr [rsp + 0x1a8], rsi
               	xor	ebx, ebx
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r13d, r13d
               	jmp	 <L88>
               	nop	dword ptr [rax + rax]
<L90>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L89>
<L88>:
               	bt	r14, rbx
               	jae	 <L90>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L90>
<L89>:
               	xor	ebx, ebx
               	jmp	 <L91>
               	nop	dword ptr [rax]
<L93>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L92>
<L91>:
               	bt	rax, rbx
               	jae	 <L93>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L93>
<L92>:
               	xor	ebx, ebx
               	jmp	 <L94>
               	nop	dword ptr [rax]
<L96>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L95>
<L94>:
               	bt	rcx, rbx
               	jae	 <L96>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L96>
<L95>:
               	xor	ebx, ebx
               	jmp	 <L97>
               	nop	dword ptr [rax]
<L99>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L98>
<L97>:
               	bt	rdx, rbx
               	jae	 <L99>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L99>
<L98>:
               	mov	qword ptr [rsp + 0x1b0], r13
               	mov	qword ptr [rsp + 0x1b8], r10
               	mov	qword ptr [rsp + 0x1c0], r8
               	mov	qword ptr [rsp + 0x1c8], rdi
               	xor	ebx, ebx
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L100>
               	nop	dword ptr [rax + rax]
<L102>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L101>
<L100>:
               	bt	r14, rbx
               	jae	 <L102>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L102>
<L101>:
               	xor	ebx, ebx
               	jmp	 <L103>
               	nop	dword ptr [rax]
<L105>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L104>
<L103>:
               	bt	rax, rbx
               	jae	 <L105>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L105>
<L104>:
               	xor	ebx, ebx
               	jmp	 <L106>
               	nop	dword ptr [rax]
<L108>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L107>
<L106>:
               	bt	rcx, rbx
               	jae	 <L108>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L108>
<L107>:
               	xor	ebx, ebx
               	jmp	 <L109>
               	nop	dword ptr [rax]
<L111>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L110>
<L109>:
               	bt	rdx, rbx
               	jae	 <L111>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L111>
<L110>:
               	mov	qword ptr [rsp + 0x1d0], r15
               	mov	qword ptr [rsp + 0x1d8], r11
               	mov	qword ptr [rsp + 0x1e0], r9
               	mov	qword ptr [rsp + 0x1e8], rsi
               	xor	ebx, ebx
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r13d, r13d
               	jmp	 <L112>
               	nop	dword ptr [rax + rax]
<L114>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L113>
<L112>:
               	bt	r14, rbx
               	jae	 <L114>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L114>
<L113>:
               	xor	ebx, ebx
               	jmp	 <L115>
               	nop	dword ptr [rax]
<L117>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L116>
<L115>:
               	bt	rax, rbx
               	jae	 <L117>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L117>
<L116>:
               	xor	ebx, ebx
               	jmp	 <L118>
               	nop	dword ptr [rax]
<L120>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L119>
<L118>:
               	bt	rcx, rbx
               	jae	 <L120>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L120>
<L119>:
               	xor	ebx, ebx
               	jmp	 <L121>
               	nop	dword ptr [rax]
<L123>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L122>
<L121>:
               	bt	rdx, rbx
               	jae	 <L123>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L123>
<L122>:
               	mov	qword ptr [rsp + 0x1f0], r13
               	mov	qword ptr [rsp + 0x1f8], r10
               	mov	qword ptr [rsp + 0x200], r8
               	mov	qword ptr [rsp + 0x208], rdi
               	xor	ebx, ebx
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L124>
               	nop	dword ptr [rax + rax]
<L126>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L125>
<L124>:
               	bt	r14, rbx
               	jae	 <L126>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L126>
<L125>:
               	xor	ebx, ebx
               	jmp	 <L127>
               	nop	dword ptr [rax]
<L129>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L128>
<L127>:
               	bt	rax, rbx
               	jae	 <L129>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L129>
<L128>:
               	xor	ebx, ebx
               	jmp	 <L130>
               	nop	dword ptr [rax]
<L132>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L131>
<L130>:
               	bt	rcx, rbx
               	jae	 <L132>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L132>
<L131>:
               	xor	ebx, ebx
               	jmp	 <L133>
               	nop	dword ptr [rax]
<L135>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L134>
<L133>:
               	bt	rdx, rbx
               	jae	 <L135>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L135>
<L134>:
               	mov	qword ptr [rsp + 0x210], r15
               	mov	qword ptr [rsp + 0x218], r11
               	mov	qword ptr [rsp + 0x220], r9
               	mov	qword ptr [rsp + 0x228], rsi
               	xor	ebx, ebx
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r13d, r13d
               	jmp	 <L136>
               	nop	dword ptr [rax + rax]
<L138>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L137>
<L136>:
               	bt	r14, rbx
               	jae	 <L138>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L138>
<L137>:
               	xor	ebx, ebx
               	jmp	 <L139>
               	nop	dword ptr [rax]
<L141>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L140>
<L139>:
               	bt	rax, rbx
               	jae	 <L141>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L141>
<L140>:
               	xor	ebx, ebx
               	jmp	 <L142>
               	nop	dword ptr [rax]
<L144>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L143>
<L142>:
               	bt	rcx, rbx
               	jae	 <L144>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L144>
<L143>:
               	xor	ebx, ebx
               	jmp	 <L145>
               	nop	dword ptr [rax]
<L147>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L146>
<L145>:
               	bt	rdx, rbx
               	jae	 <L147>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L147>
<L146>:
               	mov	qword ptr [rsp + 0x230], r13
               	mov	qword ptr [rsp + 0x238], r10
               	mov	qword ptr [rsp + 0x240], r8
               	mov	qword ptr [rsp + 0x248], rdi
               	xor	ebx, ebx
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L148>
               	nop	dword ptr [rax + rax]
<L150>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L149>
<L148>:
               	bt	r14, rbx
               	jae	 <L150>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L150>
<L149>:
               	xor	ebx, ebx
               	jmp	 <L151>
               	nop	dword ptr [rax]
<L153>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L152>
<L151>:
               	bt	rax, rbx
               	jae	 <L153>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L153>
<L152>:
               	xor	ebx, ebx
               	jmp	 <L154>
               	nop	dword ptr [rax]
<L156>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L155>
<L154>:
               	bt	rcx, rbx
               	jae	 <L156>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L156>
<L155>:
               	xor	ebx, ebx
               	jmp	 <L157>
               	nop	dword ptr [rax]
<L159>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L158>
<L157>:
               	bt	rdx, rbx
               	jae	 <L159>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L159>
<L158>:
               	mov	qword ptr [rsp + 0x250], r15
               	mov	qword ptr [rsp + 0x258], r11
               	mov	qword ptr [rsp + 0x260], r9
               	mov	qword ptr [rsp + 0x268], rsi
               	xor	ebx, ebx
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	r13d, r13d
               	jmp	 <L160>
               	nop	dword ptr [rax + rax]
<L162>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L161>
<L160>:
               	bt	r14, rbx
               	jae	 <L162>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L162>
<L161>:
               	xor	ebx, ebx
               	jmp	 <L163>
               	nop	dword ptr [rax]
<L165>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L164>
<L163>:
               	bt	rax, rbx
               	jae	 <L165>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L165>
<L164>:
               	xor	ebx, ebx
               	jmp	 <L166>
               	nop	dword ptr [rax]
<L168>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L167>
<L166>:
               	bt	rcx, rbx
               	jae	 <L168>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L168>
<L167>:
               	xor	ebx, ebx
               	jmp	 <L169>
               	nop	dword ptr [rax]
<L171>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L170>
<L169>:
               	bt	rdx, rbx
               	jae	 <L171>
               	xor	r13, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L171>
<L170>:
               	mov	qword ptr [rsp + 0x270], r13
               	mov	qword ptr [rsp + 0x278], r10
               	mov	qword ptr [rsp + 0x280], r8
               	mov	qword ptr [rsp + 0x288], rdi
               	xor	ebx, ebx
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L172>
               	nop	dword ptr [rax + rax]
<L174>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L173>
<L172>:
               	bt	r14, rbx
               	jae	 <L174>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L174>
<L173>:
               	xor	ebx, ebx
               	jmp	 <L175>
               	nop	dword ptr [rax]
<L177>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L176>
<L175>:
               	bt	rax, rbx
               	jae	 <L177>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L177>
<L176>:
               	xor	ebx, ebx
               	jmp	 <L178>
               	nop	dword ptr [rax]
<L180>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L179>
<L178>:
               	bt	rcx, rbx
               	jae	 <L180>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L180>
<L179>:
               	xor	ebx, ebx
               	jmp	 <L181>
               	nop	dword ptr [rax]
<L183>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, r13
               	xor	rdi, r10
               	xor	r10, r8
               	xor	r13, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L182>
<L181>:
               	bt	rdx, rbx
               	jae	 <L183>
               	xor	r15, r13
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L183>
<L182>:
               	mov	qword ptr [rsp + 0x290], r15
               	mov	qword ptr [rsp + 0x298], r11
               	mov	qword ptr [rsp + 0x2a0], r9
               	mov	qword ptr [rsp + 0x2a8], rsi
               	xor	r8d, r8d
               	xor	edi, edi
               	xor	r10d, r10d
               	xor	r13d, r13d
               	xor	ebp, ebp
               	jmp	 <L184>
               	nop	dword ptr [rax + rax]
<L186>:
               	mov	rbx, r11
               	shl	rbx, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L185>
<L184>:
               	bt	r14, r8
               	jae	 <L186>
               	xor	rbp, r15
               	xor	r13, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L186>
<L185>:
               	xor	r8d, r8d
               	jmp	 <L187>
               	nop
<L189>:
               	mov	rbx, r11
               	shl	rbx, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L188>
<L187>:
               	bt	rax, r8
               	jae	 <L189>
               	xor	rbp, r15
               	xor	r13, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L189>
<L188>:
               	xor	r8d, r8d
               	jmp	 <L190>
               	nop
<L192>:
               	mov	rbx, r11
               	shl	rbx, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L191>
<L190>:
               	bt	rcx, r8
               	jae	 <L192>
               	xor	rbp, r15
               	xor	r13, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L192>
<L191>:
               	xor	r8d, r8d
               	jmp	 <L193>
               	nop
<L195>:
               	mov	rbx, r11
               	shl	rbx, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L194>
<L193>:
               	bt	rdx, r8
               	jae	 <L195>
               	xor	rbp, r15
               	xor	r13, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L195>
<L194>:
               	mov	qword ptr [rsp + 0x2b0], rbp
               	mov	qword ptr [rsp + 0x2b8], r13
               	mov	qword ptr [rsp + 0x2c0], r10
               	mov	qword ptr [rsp + 0x2c8], rdi
               	xor	r9d, r9d
               	xor	r8d, r8d
               	xor	r11d, r11d
               	xor	esi, esi
               	xor	r15d, r15d
               	jmp	 <L196>
               	nop	dword ptr [rax]
<L198>:
               	mov	rbx, r13
               	shl	rbx, 0x11
               	xor	r10, rbp
               	xor	rdi, r13
               	xor	r13, r10
               	xor	rbp, rdi
               	xor	r10, rbx
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L197>
<L196>:
               	bt	r14, r9
               	jae	 <L198>
               	xor	r15, rbp
               	xor	rsi, r13
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L198>
<L197>:
               	xor	r9d, r9d
               	jmp	 <L199>
               	nop
<L201>:
               	mov	rbx, r13
               	shl	rbx, 0x11
               	xor	r10, rbp
               	xor	rdi, r13
               	xor	r13, r10
               	xor	rbp, rdi
               	xor	r10, rbx
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L200>
<L199>:
               	bt	rax, r9
               	jae	 <L201>
               	xor	r15, rbp
               	xor	rsi, r13
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L201>
<L200>:
               	xor	r9d, r9d
               	jmp	 <L202>
               	nop
<L204>:
               	mov	rbx, r13
               	shl	rbx, 0x11
               	xor	r10, rbp
               	xor	rdi, r13
               	xor	r13, r10
               	xor	rbp, rdi
               	xor	r10, rbx
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L203>
<L202>:
               	bt	rcx, r9
               	jae	 <L204>
               	xor	r15, rbp
               	xor	rsi, r13
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L204>
<L203>:
               	xor	r9d, r9d
               	jmp	 <L205>
               	nop
<L207>:
               	mov	rbx, r13
               	shl	rbx, 0x11
               	xor	r10, rbp
               	xor	rdi, r13
               	xor	r13, r10
               	xor	rbp, rdi
               	xor	r10, rbx
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L206>
<L205>:
               	bt	rdx, r9
               	jae	 <L207>
               	xor	r15, rbp
               	xor	rsi, r13
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x2d0], r15
               	mov	qword ptr [rsp + 0x2d8], rsi
               	mov	qword ptr [rsp + 0x2e0], r11
               	mov	qword ptr [rsp + 0x2e8], r8
               	xor	ebx, ebx
               	xor	r9d, r9d
               	xor	r10d, r10d
               	xor	edx, edx
               	mov	rbp, rsi
               	xor	r13d, r13d
               	jmp	 <L208>
               	nop	dword ptr [rax + rax]
<L210>:
               	mov	r12, rbp
               	shl	r12, 0x11
               	xor	r11, r15
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	r15, r8
               	xor	r11, r12
               	rorx	r8, r8, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L209>
<L208>:
               	bt	r14, rbx
               	jae	 <L210>
               	xor	r13, r15
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L210>
<L209>:
               	xor	ebx, ebx
               	jmp	 <L211>
               	nop	dword ptr [rax]
<L213>:
               	mov	r12, rbp
               	shl	r12, 0x11
               	xor	r11, r15
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	r15, r8
               	xor	r11, r12
               	rorx	r8, r8, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L212>
<L211>:
               	bt	rax, rbx
               	jae	 <L213>
               	xor	r13, r15
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L213>
<L212>:
               	xor	ebx, ebx
               	jmp	 <L214>
               	nop	dword ptr [rax]
<L216>:
               	mov	r12, rbp
               	shl	r12, 0x11
               	xor	r11, r15
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	r15, r8
               	xor	r11, r12
               	rorx	r8, r8, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L215>
<L214>:
               	bt	rcx, rbx
               	jae	 <L216>
               	xor	r13, r15
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L216>
<L215>:
               	xor	ebx, ebx
               	movabs	rdi, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop	word ptr [rax + rax]
<L219>:
               	mov	r12, rbp
               	shl	r12, 0x11
               	xor	r11, r15
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	r15, r8
               	xor	r11, r12
               	rorx	r8, r8, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L218>
<L217>:
               	bt	rdi, rbx
               	jae	 <L219>
               	xor	r13, r15
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x2f0], r13
               	mov	qword ptr [rsp + 0x2f8], rdx
               	mov	qword ptr [rsp + 0x300], r10
               	mov	qword ptr [rsp + 0x308], r9
               	xor	ebx, ebx
               	xor	r11d, r11d
               	xor	r15d, r15d
               	xor	r8d, r8d
               	mov	rdi, rdx
               	xor	r12d, r12d
               	jmp	 <L220>
               	nop	dword ptr [rax]
<L222>:
               	mov	rbp, rdi
               	shl	rbp, 0x11
               	xor	r10, r13
               	xor	r9, rdi
               	xor	rdi, r10
               	xor	r13, r9
               	xor	r10, rbp
               	rorx	r9, r9, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L221>
<L220>:
               	bt	r14, rbx
               	jae	 <L222>
               	xor	r12, r13
               	xor	r8, rdi
               	xor	r15, r10
               	xor	r11, r9
               	jmp	 <L222>
<L221>:
               	xor	ebx, ebx
               	jmp	 <L223>
               	nop	dword ptr [rax]
<L225>:
               	mov	r14, rdi
               	shl	r14, 0x11
               	xor	r10, r13
               	xor	r9, rdi
               	xor	rdi, r10
               	xor	r13, r9
               	xor	r10, r14
               	rorx	r9, r9, 0x13
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L224>
<L223>:
               	bt	rax, rbx
               	jae	 <L225>
               	xor	r12, r13
               	xor	r8, rdi
               	xor	r15, r10
               	xor	r11, r9
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	jmp	 <L226>
               	nop	dword ptr [rax]
<L228>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	r10, r13
               	xor	r9, rdi
               	xor	rdi, r10
               	xor	r13, r9
               	xor	r10, rbx
               	rorx	r9, r9, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L227>
<L226>:
               	bt	rcx, rax
               	jae	 <L228>
               	xor	r12, r13
               	xor	r8, rdi
               	xor	r15, r10
               	xor	r11, r9
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	mov	rbx, qword ptr [rsp + 0x8]
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	xor	r10, r13
               	xor	r9, rdi
               	xor	rdi, r10
               	xor	r13, r9
               	xor	r10, rcx
               	rorx	r9, r9, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L230>
<L229>:
               	movabs	rcx, 0x39abdc4529b1661c
               	bt	rcx, rax
               	jae	 <L231>
               	xor	r12, r13
               	xor	r8, rdi
               	xor	r15, r10
               	xor	r11, r9
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x310], r12
               	mov	qword ptr [rsp + 0x318], r8
               	mov	qword ptr [rsp + 0x320], r15
               	mov	qword ptr [rsp + 0x328], r11
               	mov	dword ptr [rsp + 0x330], 0x0
               	lea	rax, [rsp + 0xb0]
               	kxnorw	k1, k0, k0
               	vpmovzxbd	ymm0, qword ptr  <strcmp+0x2430>
               	vpxor	xmm1, xmm1, xmm1
               	kxnorw	k2, k0, k0
               	vpxor	xmm2, xmm2, xmm2
               	vpgatherdq	zmm2 {k2}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm2, 0x2
               	vpaddq	zmm0, zmm0, zmm2
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm2, zmm0, 0x3
               	vpaddq	zmm3, zmm2, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x338], zmm3
               	vpmovsxwd	ymm0, xmmword ptr  <strcmp+0x24d0>
               	vpgatherdq	zmm1 {k1}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm1, 0x2
               	vpaddq	zmm0, zmm0, zmm1
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm2, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x378], zmm2
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x2b8]
               	vpinsrq	xmm0, xmm0, rsi, 0x1
               	vpbroadcastq	ymm1, rdx
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, r8
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm4, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x3b8], ymm4
               	mov	r13, qword ptr [rsp + 0x48]
               	test	r13d, r13d
               	je	 <L232>
               	vpbroadcastq	zmm0, rax
               	vpaddq	zmm1, zmm0, zmmword ptr  <strcmp+0x2440>
               	vmovdqu64	zmmword ptr [rsp + 0x490], zmm1
               	vpaddq	zmm0, zmm0, zmmword ptr  <strcmp+0x2480>
               	vmovdqu64	zmmword ptr [rsp + 0x450], zmm0
               	vextracti32x4	xmm0, zmm2, 0x2
               	vmovq	r14, xmm0
               	vextracti128	xmm1, ymm2, 0x1
               	vpextrq	r12, xmm1, 0x1
               	vpextrq	rcx, xmm2, 0x1
               	vmovq	rdx, xmm1
               	vmovq	rax, xmm3
               	vextracti128	xmm1, ymm4, 0x1
               	vpblendd	xmm5, xmm1, xmm0, 0xc   # xmm5 = xmm1[0,1],xmm0[2,3]
               	xor	esi, esi
               	xor	r15d, r15d
               	xor	ebp, ebp
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L237>:
               	vpsrlq	zmm3, zmm3, 0x8
               	vmovdqu64	zmmword ptr [rsp + 0x338], zmm3
               	vpsrlq	zmm2, zmm2, 0x8
               	vpsrlq	ymm4, ymm4, 0x8
               	vmovq	rax, xmm3
               	vpextrq	rcx, xmm2, 0x1
               	vextracti128	xmm0, ymm2, 0x1
               	vmovq	rdx, xmm0
               	vextracti32x4	xmm1, zmm2, 0x2
               	vmovq	r14, xmm1
               	vpextrq	r12, xmm0, 0x1
<L238>:
               	vextracti128	xmm0, ymm4, 0x1
               	vpblendd	xmm5, xmm0, xmm1, 0xc   # xmm5 = xmm0[0,1],xmm1[2,3]
               	vmovdqu64	zmmword ptr [rsp + 0x378], zmm2
               	vmovdqu	ymmword ptr [rsp + 0x3b8], ymm4
               	add	rsi, 0x28
               	inc	rbp
               	cmp	r15d, r13d
               	je	 <L234>
<L233>:
               	vmovdqu	ymmword ptr [rsp + 0x20], ymm4
               	vmovdqu64	zmmword ptr [rsp + 0x3e0], zmm2
               	vmovdqu64	zmmword ptr [rsp + 0x70], zmm3
               	vmovq	xmm0, rcx
               	vmovq	xmm1, rdx
               	vpunpcklqdq	xmm0, xmm0, xmm1 # xmm0 = xmm0[0],xmm1[0]
               	vmovdqu64	zmm1, zmmword ptr [rsp + 0x340]
               	vpmovqd	ymm1, zmm1
               	vpandd	ymm1, ymm1, dword ptr {1to8} <strcmp+0x24e0>
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [rsp + 0x50], ymm1
               	vpshufb	xmm0, xmm0, xmmword ptr  <strcmp+0x24c0>
               	vcvtdq2ps	xmm0, xmm0
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	lea	rcx,  <strcmp+0x24fc>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Circle@Evaluation.CRTP.Circle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x40
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	add	rcx, 0x20
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x50]
               	vmovdqu	ymmword ptr [rax + 0x20], ymm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x48
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	add	rcx, 0x20
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovq	qword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Triangle@Evaluation.CRTP.Triangle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x48
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	add	rcx, 0x20
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovd	dword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle>+0x10>
               	jmp	 <L235>
               	vmovdqa	xmmword ptr [rsp + 0x10], xmm5
               	vmovups	ymm0, ymmword ptr [rsp + 0x3a8]
               	vmovups	ymmword ptr [rsp + 0x430], ymm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Head@Evaluation.CRTP.Head, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x80
               	mov	r13, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovq	xmm0, r12
               	vmovq	xmm1, r14
               	vpunpcklqdq	xmm0, xmm0, xmm1 # xmm0 = xmm0[0],xmm1[0]
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x10]
               	vpextrb	ecx, xmm1, 0x8
               	vpextrb	edx, xmm1, 0x0
               	vpshufb	xmm0, xmm0, xmmword ptr  <strcmp+0x24c0>
               	vcvtdq2ps	xmm0, xmm0
               	vcvtsi2ss	xmm1, xmm6, ecx
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x430]
               	vpmovqd	xmm2, ymm2
               	vpbroadcastd	ymm3, dword ptr  <strcmp+0x24e0>
               	vpand	xmm2, xmm2, xmm3
               	vcvtsi2ss	xmm3, xmm6, edx
               	vcvtdq2ps	xmm2, xmm2
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x50]
               	vpshufd	xmm4, xmm5, 0xff        # xmm4 = xmm5[3,3,3,3]
               	vmovdqu	ymmword ptr [rax + 0x20], ymm5
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	vmovss	dword ptr [rax + 0x48], xmm1
               	vmovd	dword ptr [rax + 0x4c], xmm4
               	vmovdqu	xmmword ptr [rax + 0x50], xmm2
               	vmovlps	qword ptr [rax + 0x60], xmm0
               	vmovss	dword ptr [rax + 0x68], xmm1
               	vmovd	dword ptr [rax + 0x6c], xmm4
               	vmovss	dword ptr [rax + 0x70], xmm3
               	vpshufd	xmm0, xmm2, 0xe9        # xmm0 = xmm2[1,2,2,3]
               	vmovq	qword ptr [rax + 0x74], xmm0
               	vextractps	dword ptr [rax + 0x7c], xmm2, 0x3
               	add	rcx, 0x20
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head>+0x10>
               	mov	qword ptr [rax + 0x10], rsi
               	mov	qword ptr [rax + 0x18], rcx
               	mov	qword ptr [rbx + r13 + 0x10], rdx
               	mov	rsi, r13
               	mov	r13, qword ptr [rsp + 0x48]
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x48
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vextractps	dword ptr [rax + 0x40], xmm0, 0x1
               	add	rcx, 0x20
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x48
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	add	rcx, 0x20
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovd	dword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>+0x10>
               	jmp	 <L235>
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Square@Evaluation.CRTP.Square, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x40
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	add	rcx, 0x20
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x50]
               	vmovdqu	ymmword ptr [rax + 0x20], ymm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x48
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	add	rcx, 0x20
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovq	qword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x48
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	add	rcx, 0x20
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovd	dword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>+0x10>
               	jmp	 <L235>
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cube@Evaluation.CRTP.Cube, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x40
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	add	rcx, 0x20
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x50]
               	vmovdqu	ymmword ptr [rax + 0x20], ymm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x48
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	add	rcx, 0x20
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vmovq	qword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cone@Evaluation.CRTP.Cone, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x48
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	vmovups	ymm0, ymmword ptr [rsp + 0x50]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	vextractps	dword ptr [rax + 0x40], xmm0, 0x1
               	add	rcx, 0x20
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone>+0x10>
               	jmp	 <L235>
               	mov	rbx, qword ptr [rsp + 0x8]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Sphere@Evaluation.CRTP.Sphere, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rbx + rsi], rax
               	mov	byte ptr [rbx + rsi + 0x8], 0x0
               	mov	edi, 0x40
               	mov	r14, rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	add	rcx, 0x20
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x50]
               	vmovdqu	ymmword ptr [rax + 0x20], ymm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere>+0x10>
               	nop	word ptr [rax + rax]
<L235>:
               	mov	qword ptr [rax + 0x10], rsi
               	mov	qword ptr [rax + 0x18], rcx
               	mov	qword ptr [rbx + r14 + 0x10], rdx
               	mov	rsi, r14
<L236>:
               	vmovdqu64	zmm3, zmmword ptr [rsp + 0x70]
               	vmovdqu64	zmm2, zmmword ptr [rsp + 0x3e0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x20]
               	mov	qword ptr [rbx + rsi + 0x18], rax
               	mov	qword ptr [rbx + rsi + 0x20], rcx
               	inc	r15d
               	mov	dword ptr [rsp + 0x330], r15d
               	test	r15b, 0x7
               	jne	 <L237>
               	mov	rax, qword ptr [rsp + 0xb0]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	mov	rdx, rcx
               	mov	r10, rsi
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0xc8]
               	shl	rdx, 0x11
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0xc0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0xc8], rax
               	mov	rax, qword ptr [rsp + 0xd8]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0xd0]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	rsi, rdx
               	mov	rdi, rsi
               	xor	rdi, rax
               	xor	rax, qword ptr [rsp + 0xe8]
               	mov	qword ptr [rsp + 0xd8], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xd0], rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xe0], rsi
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0xe8], rax
               	mov	rax, qword ptr [rsp + 0xf8]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0xf0]
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	rsi, rdx
               	mov	rdi, rsi
               	xor	rdi, rax
               	xor	rax, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0xf8], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xf0], rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x100], rsi
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0x108], rax
               	mov	rax, qword ptr [rsp + 0x110]
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x120]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x128]
               	mov	qword ptr [rsp + 0x118], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x110], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x120], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x128], rax
               	mov	rax, qword ptr [rsp + 0x130]
               	mov	rcx, qword ptr [rsp + 0x138]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x140]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x148]
               	shl	rdx, 0x11
               	mov	qword ptr [rsp + 0x138], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x130], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x140], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x148], rax
               	mov	rax, qword ptr [rsp + 0x150]
               	mov	rcx, qword ptr [rsp + 0x158]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x160]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x168]
               	mov	qword ptr [rsp + 0x158], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x150], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x160], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x168], rax
               	mov	rax, qword ptr [rsp + 0x170]
               	mov	rcx, qword ptr [rsp + 0x178]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x180]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x188]
               	mov	qword ptr [rsp + 0x178], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x170], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x180], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x188], rax
               	mov	rax, qword ptr [rsp + 0x190]
               	mov	rcx, qword ptr [rsp + 0x198]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x1a0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x1a8]
               	mov	qword ptr [rsp + 0x198], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x190], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x1a0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x1a8], rax
               	mov	rax, qword ptr [rsp + 0x1b0]
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x1c8]
               	shl	rdx, 0x11
               	mov	qword ptr [rsp + 0x1b8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x1b0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x1c0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x1c8], rax
               	mov	rax, qword ptr [rsp + 0x1d0]
               	mov	rcx, qword ptr [rsp + 0x1d8]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x1e8]
               	mov	qword ptr [rsp + 0x1d8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x1d0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x1e0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x1e8], rax
               	mov	rax, qword ptr [rsp + 0x1f0]
               	mov	rcx, qword ptr [rsp + 0x1f8]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x200]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x208]
               	mov	qword ptr [rsp + 0x1f8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x1f0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x200], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x208], rax
               	mov	rax, qword ptr [rsp + 0x210]
               	mov	rcx, qword ptr [rsp + 0x218]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x220]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x228]
               	mov	qword ptr [rsp + 0x218], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x210], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x220], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x228], rax
               	mov	rax, qword ptr [rsp + 0x230]
               	mov	rcx, qword ptr [rsp + 0x238]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x240]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x248]
               	shl	rdx, 0x11
               	mov	qword ptr [rsp + 0x238], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x230], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x240], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x248], rax
               	mov	rax, qword ptr [rsp + 0x250]
               	mov	rcx, qword ptr [rsp + 0x258]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x260]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x268]
               	mov	qword ptr [rsp + 0x258], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x250], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x260], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x268], rax
               	mov	rax, qword ptr [rsp + 0x270]
               	mov	rcx, qword ptr [rsp + 0x278]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x280]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x288]
               	mov	qword ptr [rsp + 0x278], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x270], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x280], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x288], rax
               	mov	rax, qword ptr [rsp + 0x290]
               	mov	rcx, qword ptr [rsp + 0x298]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x2a0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x2a8]
               	mov	qword ptr [rsp + 0x298], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x290], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x2a0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x2a8], rax
               	mov	rax, qword ptr [rsp + 0x2b0]
               	mov	rcx, qword ptr [rsp + 0x2b8]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x2c0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x2c8]
               	shl	rdx, 0x11
               	mov	qword ptr [rsp + 0x2b8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x2b0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x2c0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x2c8], rax
               	mov	rcx, qword ptr [rsp + 0x2d0]
               	mov	rdx, qword ptr [rsp + 0x2d8]
               	mov	rsi, rdx
               	shl	rsi, 0x11
               	mov	rdi, qword ptr [rsp + 0x2e0]
               	xor	rdi, rcx
               	mov	rax, rdi
               	xor	rax, rdx
               	xor	rdx, qword ptr [rsp + 0x2e8]
               	mov	qword ptr [rsp + 0x2d8], rax
               	xor	rcx, rdx
               	mov	qword ptr [rsp + 0x2d0], rcx
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x2e0], rdi
               	rorx	rcx, rdx, 0x13
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	rdx, qword ptr [rsp + 0x2f0]
               	mov	rsi, qword ptr [rsp + 0x2f8]
               	mov	rdi, rsi
               	shl	rdi, 0x11
               	mov	r8, qword ptr [rsp + 0x300]
               	xor	r8, rdx
               	mov	rcx, r8
               	xor	rcx, rsi
               	xor	rsi, qword ptr [rsp + 0x308]
               	mov	qword ptr [rsp + 0x2f8], rcx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x2f0], rdx
               	xor	r8, rdi
               	mov	qword ptr [rsp + 0x300], r8
               	rorx	rdx, rsi, 0x13
               	mov	qword ptr [rsp + 0x308], rdx
               	mov	rsi, qword ptr [rsp + 0x310]
               	mov	rdi, qword ptr [rsp + 0x318]
               	mov	r8, rdi
               	shl	r8, 0x11
               	mov	r9, qword ptr [rsp + 0x320]
               	xor	r9, rsi
               	mov	rdx, r9
               	xor	rdx, rdi
               	xor	rdi, qword ptr [rsp + 0x328]
               	mov	qword ptr [rsp + 0x318], rdx
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0x310], rsi
               	xor	r9, r8
               	mov	qword ptr [rsp + 0x320], r9
               	rorx	rsi, rdi, 0x13
               	mov	qword ptr [rsp + 0x328], rsi
               	mov	rsi, r10
               	kxnorw	k1, k0, k0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu64	zmm1, zmmword ptr [rsp + 0x490]
               	vpgatherqq	zmm0 {k1}, zmmword ptr [1*zmm1]
               	vpsllq	zmm1, zmm0, 0x2
               	vpaddq	zmm0, zmm1, zmm0
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm3, zmm1, zmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x2b8]
               	vmovdqu64	zmmword ptr [rsp + 0x338], zmm3
               	kxnorw	k1, k0, k0
               	vpxor	xmm1, xmm1, xmm1
               	vmovdqu64	zmm2, zmmword ptr [rsp + 0x450]
               	vpgatherqq	zmm1 {k1}, zmmword ptr [1*zmm2]
               	vpsllq	zmm2, zmm1, 0x2
               	vpaddq	zmm1, zmm2, zmm1
               	vprolq	zmm1, zmm1, 0x7
               	vpsllq	zmm2, zmm1, 0x3
               	vpaddq	zmm2, zmm2, zmm1
               	vpinsrq	xmm0, xmm0, rax, 0x1
               	vpbroadcastq	ymm1, rcx
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, rdx
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm4, ymm1, ymm0
               	vmovq	rax, xmm3
               	vpextrq	rcx, xmm2, 0x1
               	vextracti128	xmm0, ymm2, 0x1
               	vmovq	rdx, xmm0
               	vextracti32x4	xmm1, zmm2, 0x2
               	vpextrq	r12, xmm0, 0x1
               	vmovq	r14, xmm1
               	mov	r15d, dword ptr [rsp + 0x330]
               	jmp	 <L238>
<L234>:
               	shl	rbp, 0x3
               	lea	rcx, [4*rbp]
               	add	rcx, rbp
               	mov	rax, rcx
               	shr	rax, 0x3
               	imul	ebp, eax, 0xcccccccd
               	test	ebp, ebp
               	je	 <L239>
               	mov	qword ptr [rsp + 0x20], rcx
               	mov	qword ptr [rsp + 0x3e0], rsi
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu64	zmmword ptr [rsp + 0xf0], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0xb0], zmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	jmp	 <L240>
               	nop	word ptr cs:[rax + rax]
<L241>:
               	vmovss	xmm0, dword ptr [rsp + 0xb4]
               	vmovss	dword ptr [rsp + 0xb8], xmm0
               	mov	r15d, 0x1
<L253>:
               	mov	eax, r15d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0xb0]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	rbx, r14
<L240>:
               	blsi	ecx, ebp
               	lea	rax, [rcx + 4*rcx]
               	lea	r14, [rbx + 8*rax]
               	je	 <L241>
               	mov	qword ptr [rsp + 0x70], rcx
               	mov	r13d, 0x1
               	xor	ecx, ecx
               	mov	r12d, 0x1
               	jmp	 <L242>
               	nop	dword ptr [rax]
<L244>:
               	mov	r12d, r15d
               	movsxd	rax, r15d
               	vmovss	dword ptr [rsp + 4*rax + 0xb0], xmm0
               	add	rbx, 0x28
               	mov	ecx, 0xfffffffe
               	sub	ecx, r13d
               	lea	edx, [r13 + 0x1]
               	lzcnt	esi, edx
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r13d, edx
               	cmp	rbx, r14
               	je	 <L243>
<L242>:
               	mov	r15d, ecx
               	mov	rax, qword ptr [rbx]
               	mov	rdi, qword ptr [rbx + 0x20]
               	movzx	ecx, byte ptr [rbx + 0x8]
               	vzeroupper
               	call	qword ptr [rax + 8*rcx]
               	mov	edx, r15d
               	sub	edx, r12d
               	jl	 <L244>
               	movsxd	rax, r12d
               	cmp	edx, 0x7
               	jb	 <L245>
               	lea	rcx, [rdx + 0x1]
               	cmp	edx, 0x3f
               	jae	 <L246>
               	xor	edx, edx
               	jmp	 <L247>
<L246>:
               	mov	rdx, rcx
               	movabs	rsi, 0x1ffffffc0
               	and	rdx, rsi
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	lea	rsi, [rsp + 0x170]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	word ptr cs:[rax + rax]
<L248>:
               	vaddps	zmm0, zmm0, zmmword ptr [rsi + 4*rdi - 0xc0]
               	vaddps	zmm1, zmm1, zmmword ptr [rsi + 4*rdi - 0x80]
               	vaddps	zmm2, zmm2, zmmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	zmm3, zmm3, zmmword ptr [rsi + 4*rdi]
               	add	rdi, 0x40
               	cmp	rdx, rdi
               	jne	 <L248>
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
               	je	 <L244>
               	test	cl, 0x38
               	je	 <L249>
<L247>:
               	movabs	rsi, 0x1ffffffc0
               	add	rsi, 0x38
               	and	rsi, rcx
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	lea	rdi, [rsp + 4*rax]
               	add	rdi, 0xb0
               	nop	word ptr cs:[rax + rax]
<L250>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
               	add	rdx, 0x8
               	cmp	rsi, rdx
               	jne	 <L250>
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rsi
               	je	 <L244>
               	add	rax, rsi
               	jmp	 <L245>
<L249>:
               	add	rax, rdx
               	nop	word ptr [rax + rax]
<L245>:
               	mov	ecx, r15d
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0xb0
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L251>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L251>
               	jmp	 <L244>
               	nop	word ptr cs:[rax + rax]
<L243>:
               	sub	ebp, dword ptr [rsp + 0x70]
               	mov	r13, qword ptr [rsp + 0x48]
               	je	 <L252>
               	vmovss	dword ptr [rsp + 4*rax + 0xb4], xmm0
               	mov	rbx, r14
               	test	r15d, r15d
               	jns	 <L253>
               	jmp	 <L240>
<L252>:
               	mov	rbx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0x3e0]
               	mov	rcx, qword ptr [rsp + 0x20]
               	test	rcx, rcx
               	jne	 <L254>
               	jmp	 <L255>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	jmp	 <L255>
<L239>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	test	rcx, rcx
               	je	 <L255>
<L254>:
               	add	rbx, 0x18
               	mov	r15, qword ptr  <strcmp+0xa618>
               	vmovdqa	xmmword ptr [rsp + 0x70], xmm0
               	jmp	 <L256>
               	nop
<L259>:
               	mov	qword ptr [r14 + 0x8], 0x0
               	mov	rax, qword ptr [r14]
               	mov	rdi, r14
               	mov	r12, rsi
               	vzeroupper
               	call	qword ptr [rax + 0x10]
               	mov	rax, qword ptr [r14]
               	mov	rdi, r14
               	call	qword ptr [rax + 0x18]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x70]
               	mov	rsi, r12
<L258>:
               	add	rbx, 0x28
               	add	rsi, -0x28
               	je	 <L257>
<L256>:
               	mov	r14, qword ptr [rbx]
               	test	r14, r14
               	je	 <L258>
               	mov	rax, qword ptr [r14 + 0x8]
               	movabs	rcx, 0x100000001
               	cmp	rax, rcx
               	je	 <L259>
               	cmp	byte ptr [r15], 0x0
               	je	 <L260>
               	lea	ecx, [rax - 0x1]
               	mov	dword ptr [r14 + 0x8], ecx
               	cmp	eax, 0x1
               	jne	 <L258>
               	jmp	 <L261>
<L260>:
               	mov	eax, 0xffffffff
               	lock
               	xadd	dword ptr [r14 + 0x8], eax
               	cmp	eax, 0x1
               	jne	 <L258>
<L261>:
               	mov	rdi, r14
               	mov	r14, rsi
               	vzeroupper
               	call	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release_last_use_cold()>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x70]
               	mov	rsi, r14
               	jmp	 <L258>
<L257>:
               	mov	rbx, qword ptr [rsp + 0x8]
<L255>:
               	test	rbx, rbx
               	mov	rdi, rbx
               	mov	rbx, qword ptr [rsp + 0x428]
               	je	 <L262>
               	vmovdqa	xmmword ptr [rsp + 0x70], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x70]
<L262>:
               	cmp	ebx, 0x2a
               	jne	 <L263>
               	cmp	r13d, 0x186a0
               	jne	 <L263>
               	vucomiss	xmm0, dword ptr  <strcmp+0x24f4>
               	jne	 <L264>
<L263>:
               	xor	eax, eax
               	add	rsp, 0x4d8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L264>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x70], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x70]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <strcmp+0xa610>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<__clang_call_terminate>:
               	push	rax
               	call	 <__cxa_begin_catch@plt>
               	call	 <_ZSt9terminatev@plt>
               	int3
               	int3
               	int3
               	int3
               	int3

<std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release_last_use_cold()>:
               	push	rbx
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	call	qword ptr [rax + 0x10]
               	mov	rax, qword ptr  <strcmp+0xa618>
               	cmp	byte ptr [rax], 0x0
               	je	 <L0>
               	mov	eax, dword ptr [rbx + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	dword ptr [rbx + 0xc], ecx
               	cmp	eax, 0x1
               	jne	 <L1>
<L2>:
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	pop	rbx
               	jmp	qword ptr [rax + 0x18]
<L0>:
               	mov	eax, 0xffffffff
               	lock
               	xadd	dword ptr [rbx + 0xc], eax
               	cmp	eax, 0x1
               	je	 <L2>
<L1>:
               	pop	rbx
               	ret
               	int3

<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x70
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	zmm0, zmmword ptr [rbx + 0x10]
               	vmovups	zmm1, zmmword ptr [rbx + 0x30]
               	vmovups	zmmword ptr [rax + 0x10], zmm0
               	vmovups	zmmword ptr [rax + 0x30], zmm1
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
               	ret
               	int3

<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head>::~holder_impl()>:
               	mov	esi, 0x70
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
               	mov	esi, 0x80
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
               	mov	rax, qword ptr [rdi + 0x10]
               	add	rdi, 0x10
               	jmp	qword ptr [rax + 0x8]
               	int3
               	int3
               	int3
               	int3
               	int3

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
               	mov	rax, rdi
               	add	rax, 0x10
               	lea	rcx,  <std::_Sp_make_shared_tag::_S_ti()::__tag>
               	cmp	rsi, rcx
               	je	 <L0>
               	mov	rdi, qword ptr [rsi + 0x8]
               	lea	rcx,  <typeinfo name for std::_Sp_make_shared_tag>
               	cmp	rdi, rcx
               	je	 <L0>
               	cmp	byte ptr [rdi], 0x2a
               	je	 <L1>
               	push	rbx
               	lea	rsi,  <typeinfo name for std::_Sp_make_shared_tag>
               	mov	rbx, rax
               	call	 <strcmp@plt>
               	mov	ecx, eax
               	mov	rax, rbx
               	test	ecx, ecx
               	pop	rbx
               	je	 <L0>
<L1>:
               	xor	eax, eax
<L0>:
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

<polymorphic::detail::trampoline<Bodies3D::Head@Evaluation.CRTP.Head, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
<polymorphic::detail::trampoline<Bodies3D::Sphere@Evaluation.CRTP.Sphere, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <strcmp+0x24f8>
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

<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x38
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	mov	rdx, qword ptr [rbx + 0x30]
               	mov	qword ptr [rax + 0x30], rdx
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>::~holder_impl()>:
               	mov	esi, 0x38
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
               	mov	esi, 0x48
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<polymorphic::detail::trampoline<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x24f8>
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

<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x38
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	mov	edx, dword ptr [rbx + 0x30]
               	mov	dword ptr [rax + 0x30], edx
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<polymorphic::detail::trampoline<Bodies3D::Cone@Evaluation.CRTP.Cone, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x24e4>
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

<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x38
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	mov	edx, dword ptr [rbx + 0x30]
               	mov	dword ptr [rax + 0x30], edx
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<polymorphic::detail::trampoline<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x24e8>
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

<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x30
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square>::~holder_impl()>:
               	mov	esi, 0x30
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
               	mov	esi, 0x40
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x38
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	mov	rdx, qword ptr [rbx + 0x30]
               	mov	qword ptr [rax + 0x30], rdx
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<polymorphic::detail::trampoline<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x24ec>
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

<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x38
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	mov	rdx, qword ptr [rbx + 0x30]
               	mov	qword ptr [rax + 0x30], rdx
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<polymorphic::detail::trampoline<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x30
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<polymorphic::detail::trampoline<Bodies3D::Cube@Evaluation.CRTP.Cube, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x38
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	mov	edx, dword ptr [rbx + 0x30]
               	mov	dword ptr [rax + 0x30], edx
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<polymorphic::detail::trampoline<Bodies3D::Triangle@Evaluation.CRTP.Triangle, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x24f0>
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

<polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x30
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<polymorphic::detail::trampoline<Bodies3D::Square@Evaluation.CRTP.Square, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x38
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	mov	edx, dword ptr [rbx + 0x30]
               	mov	dword ptr [rax + 0x30], edx
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<polymorphic::detail::trampoline<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x38
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	mov	edx, dword ptr [rbx + 0x30]
               	mov	dword ptr [rax + 0x30], edx
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<polymorphic::detail::trampoline<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x24e8>
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

<polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle>::clone() const>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rsi
               	mov	r14, rdi
               	mov	edi, 0x30
               	call	 <_Znwm@plt>
               	lea	rcx, [rax + 0x10]
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle>+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x8], rcx
               	mov	qword ptr [r14], rax
               	mov	rax, r14
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<polymorphic::detail::trampoline<Bodies3D::Circle@Evaluation.CRTP.Circle, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x24e8>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <strcmp+0xa5e8>
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

<_Znwm@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>

<_ZSt9terminatev@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
               	push	0x5
               	jmp	 <.plt>

<__cxa_begin_catch@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x48>
               	push	0x6
               	jmp	 <.plt>

<_ZdlPvm@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x50>
               	push	0x7
               	jmp	 <.plt>

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x58>
               	push	0x8
               	jmp	 <.plt>

<strcmp@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x60>
               	push	0x9
               	jmp	 <.plt>

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x68>
               	push	0xa
               	jmp	 <.plt>
