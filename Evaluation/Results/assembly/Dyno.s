
build/Evaluation/bin/Dyno:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x7cc8>
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
               	mov	rax, qword ptr  <memset+0x7cd8>
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
               	mov	rax, qword ptr  <memset+0x7ce0>
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
               	cmp	qword ptr , 0x0 <memset+0x7ce8>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.Dyno>:
<initializer for module Std>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone&), void (Bodies3D::Cone@Evaluation.CRTP.Cone&)>, void (dyno::T&), void (Bodies3D::Cone@Evaluation.CRTP.Cone&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube&), void (Bodies3D::Cube@Evaluation.CRTP.Cube&)>, void (dyno::T&), void (Bodies3D::Cube@Evaluation.CRTP.Cube&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&), void (Bodies3D::Head@Evaluation.CRTP.Head&)>, void (dyno::T&), void (Bodies3D::Head@Evaluation.CRTP.Head&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'(Bodies3D::Circle@Evaluation.CRTP.Circle&), void (Bodies3D::Circle@Evaluation.CRTP.Circle&)>, void (dyno::T&), void (Bodies3D::Circle@Evaluation.CRTP.Circle&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&), void (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>, void (dyno::T&), void (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere&), void (Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>, void (dyno::T&), void (Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'(Bodies3D::Square@Evaluation.CRTP.Square&), void (Bodies3D::Square@Evaluation.CRTP.Square&)>, void (dyno::T&), void (Bodies3D::Square@Evaluation.CRTP.Square&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'(Bodies3D::Ellipse@Evaluation.CRTP.Ellipse&), void (Bodies3D::Ellipse@Evaluation.CRTP.Ellipse&)>, void (dyno::T&), void (Bodies3D::Ellipse@Evaluation.CRTP.Ellipse&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&), void (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>, void (dyno::T&), void (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&), void (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>, void (dyno::T&), void (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'(Bodies3D::Triangle@Evaluation.CRTP.Triangle&), void (Bodies3D::Triangle@Evaluation.CRTP.Triangle&)>, void (dyno::T&), void (Bodies3D::Triangle@Evaluation.CRTP.Triangle&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>:
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.TransformReduce>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW15TransformReduce__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW15TransformReduce__in_chrg>
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
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

<_GLOBAL__sub_I_Dyno.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
               	int3

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x708
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	rbx, byte ptr [rcx]
               	add	rbx, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	dword ptr [rax]
<L1>:
               	lea	rsi, [rbx + 4*rbx]
               	movsx	rdx, dl
               	lea	rbx, [rdx + 2*rsi]
               	add	rbx, -0x30
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
               	mov	qword ptr [rsp + 0x128], rdx
               	mov	rax, rdx
               	shl	rax, 0x7
               	lea	rdi, [rax + 4*rax]
               	mov	rsi, qword ptr  <memset+0x7cf0>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vpbroadcastq	ymm0, rbx
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0x1140>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rcx, -0x61c8864680b583eb
               	mov	qword ptr [rsp + 0x138], rbx
               	add	rcx, rbx
               	shr	rcx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rcx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x1160>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0x1168>
               	mov	qword ptr [rsp + 0x8], rax
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x280], ymm0
               	vmovq	r8, xmm0
               	vpextrq	r10, xmm0, 0x1
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	rbx, xmm0
               	vpextrq	r14, xmm0, 0x1
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
               	xor	rbx, r8
               	xor	r14, r10
               	xor	r10, rbx
               	xor	r8, r14
               	xor	rbx, rcx
               	rorx	r14, r14, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L5>
<L4>:
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rdx
               	jae	 <L6>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r14
               	jmp	 <L6>
<L5>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
<L9>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	rbx, r8
               	xor	r14, r10
               	xor	r10, rbx
               	xor	r8, r14
               	xor	rbx, rdx
               	rorx	r14, r14, 0x13
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L8>
<L7>:
               	bt	rax, rcx
               	jae	 <L9>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r14
               	jmp	 <L9>
<L8>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	word ptr [rax + rax]
<L12>:
               	mov	r15, r10
               	shl	r15, 0x11
               	xor	rbx, r8
               	xor	r14, r10
               	xor	r10, rbx
               	xor	r8, r14
               	xor	rbx, r15
               	rorx	r14, r14, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L11>
<L10>:
               	bt	rcx, rdx
               	jae	 <L12>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r14
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r15d, r15d
               	jmp	 <L13>
               	nop	dword ptr [rax + rax]
<L15>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	rbx, r8
               	xor	r14, r10
               	xor	r10, rbx
               	xor	r8, r14
               	xor	rbx, r12
               	rorx	r14, r14, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L14>
<L13>:
               	bt	rdx, r15
               	jae	 <L15>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r14
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0x2a0], r11
               	mov	qword ptr [rsp + 0x2a8], r9
               	mov	qword ptr [rsp + 0x2b0], rdi
               	mov	qword ptr [rsp + 0x2b8], rsi
               	xor	r15d, r15d
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	xor	r14d, r14d
               	jmp	 <L16>
               	nop	dword ptr [rax]
<L18>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L17>
<L16>:
               	movabs	r12, 0x180ec6d33cfd0aba
               	bt	r12, r15
               	jae	 <L18>
               	xor	r14, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L18>
<L17>:
               	xor	r15d, r15d
               	jmp	 <L19>
               	nop	dword ptr [rax + rax]
<L21>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L20>
<L19>:
               	bt	rax, r15
               	jae	 <L21>
               	xor	r14, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L21>
<L20>:
               	xor	r15d, r15d
               	jmp	 <L22>
               	nop
<L24>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L23>
<L22>:
               	bt	rcx, r15
               	jae	 <L24>
               	xor	r14, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L24>
<L23>:
               	xor	r15d, r15d
               	jmp	 <L25>
               	nop
<L27>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L26>
<L25>:
               	bt	rdx, r15
               	jae	 <L27>
               	xor	r14, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0x2c0], r14
               	mov	qword ptr [rsp + 0x2c8], rbx
               	mov	qword ptr [rsp + 0x2d0], r10
               	mov	qword ptr [rsp + 0x2d8], r8
               	xor	edi, edi
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L28>
               	nop	dword ptr [rax + rax]
<L30>:
               	mov	r12, rbx
               	shl	r12, 0x11
               	xor	r10, r14
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r14, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L29>
<L28>:
               	movabs	r12, 0x180ec6d33cfd0aba
               	bt	r12, rdi
               	jae	 <L30>
               	xor	r15, r14
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L30>
<L29>:
               	xor	edi, edi
               	jmp	 <L31>
               	nop	word ptr [rax + rax]
<L33>:
               	mov	r12, rbx
               	shl	r12, 0x11
               	xor	r10, r14
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r14, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L32>
<L31>:
               	bt	rax, rdi
               	jae	 <L33>
               	xor	r15, r14
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L33>
<L32>:
               	xor	edi, edi
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
               	mov	r12, rbx
               	shl	r12, 0x11
               	xor	r10, r14
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r14, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L35>
<L34>:
               	bt	rcx, rdi
               	jae	 <L36>
               	xor	r15, r14
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L36>
<L35>:
               	xor	edi, edi
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
               	mov	r12, rbx
               	shl	r12, 0x11
               	xor	r10, r14
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r14, r8
               	xor	r10, r12
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L38>
<L37>:
               	bt	rdx, rdi
               	jae	 <L39>
               	xor	r15, r14
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L39>
<L38>:
               	mov	qword ptr [rsp + 0x2e0], r15
               	mov	qword ptr [rsp + 0x2e8], r11
               	mov	qword ptr [rsp + 0x2f0], r9
               	mov	qword ptr [rsp + 0x2f8], rsi
               	xor	r14d, r14d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
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
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L41>
<L40>:
               	movabs	r12, 0x180ec6d33cfd0aba
               	bt	r12, r14
               	jae	 <L42>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L42>
<L41>:
               	xor	r14d, r14d
               	jmp	 <L43>
               	nop	dword ptr [rax + rax]
<L45>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L44>
<L43>:
               	bt	rax, r14
               	jae	 <L45>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L45>
<L44>:
               	xor	r14d, r14d
               	jmp	 <L46>
               	nop
<L48>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L47>
<L46>:
               	bt	rcx, r14
               	jae	 <L48>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L48>
<L47>:
               	xor	r14d, r14d
               	jmp	 <L49>
               	nop
<L51>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r15
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r15, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L50>
<L49>:
               	bt	rdx, r14
               	jae	 <L51>
               	xor	rbx, r15
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L51>
<L50>:
               	mov	qword ptr [rsp + 0x300], rbx
               	mov	qword ptr [rsp + 0x308], r10
               	mov	qword ptr [rsp + 0x310], r8
               	mov	qword ptr [rsp + 0x318], rdi
               	xor	r15d, r15d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r14d, r14d
               	jmp	 <L52>
               	nop	dword ptr [rax]
<L54>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L53>
<L52>:
               	movabs	r12, 0x180ec6d33cfd0aba
               	bt	r12, r15
               	jae	 <L54>
               	xor	r14, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L54>
<L53>:
               	xor	r15d, r15d
               	jmp	 <L55>
               	nop	dword ptr [rax + rax]
<L57>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L56>
<L55>:
               	bt	rax, r15
               	jae	 <L57>
               	xor	r14, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L57>
<L56>:
               	xor	r15d, r15d
               	jmp	 <L58>
               	nop
<L60>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L59>
<L58>:
               	bt	rcx, r15
               	jae	 <L60>
               	xor	r14, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L60>
<L59>:
               	xor	r15d, r15d
               	jmp	 <L61>
               	nop
<L63>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L62>
<L61>:
               	bt	rdx, r15
               	jae	 <L63>
               	xor	r14, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L63>
<L62>:
               	mov	qword ptr [rsp + 0x320], r14
               	mov	qword ptr [rsp + 0x328], r11
               	mov	qword ptr [rsp + 0x330], r9
               	mov	qword ptr [rsp + 0x338], rsi
               	xor	r15d, r15d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L64>
               	nop	dword ptr [rax + rax]
<L66>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r14
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r14, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L65>
<L64>:
               	movabs	r12, 0x180ec6d33cfd0aba
               	bt	r12, r15
               	jae	 <L66>
               	xor	rbx, r14
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L66>
<L65>:
               	xor	r15d, r15d
               	jmp	 <L67>
               	nop	dword ptr [rax + rax]
<L69>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r14
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r14, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L68>
<L67>:
               	bt	rax, r15
               	jae	 <L69>
               	xor	rbx, r14
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L69>
<L68>:
               	xor	r15d, r15d
               	jmp	 <L70>
               	nop
<L72>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r14
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r14, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L71>
<L70>:
               	bt	rcx, r15
               	jae	 <L72>
               	xor	rbx, r14
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L72>
<L71>:
               	xor	r15d, r15d
               	jmp	 <L73>
               	nop
<L75>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r14
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r14, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L74>
<L73>:
               	bt	rdx, r15
               	jae	 <L75>
               	xor	rbx, r14
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L75>
<L74>:
               	mov	qword ptr [rsp + 0x340], rbx
               	mov	qword ptr [rsp + 0x348], r10
               	mov	qword ptr [rsp + 0x350], r8
               	mov	qword ptr [rsp + 0x358], rdi
               	xor	esi, esi
               	xor	r15d, r15d
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x120], 0x0
               	mov	qword ptr [rsp + 0x118], 0x0
               	movabs	r13, 0x180ec6d33cfd0aba
               	jmp	 <L76>
               	nop	word ptr cs:[rax + rax]
<L78>:
               	mov	r9, r10
               	shl	r9, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r9
               	rorx	rdi, rdi, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L77>
<L76>:
               	bt	r13, rsi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x118], rbx
               	xor	qword ptr [rsp + 0x120], r10
               	xor	r12, r8
               	xor	r15, rdi
               	jmp	 <L78>
<L77>:
               	xor	esi, esi
               	jmp	 <L79>
               	nop	word ptr [rax + rax]
<L81>:
               	mov	r9, r10
               	shl	r9, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r9
               	rorx	rdi, rdi, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L80>
<L79>:
               	bt	rax, rsi
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x118], rbx
               	xor	qword ptr [rsp + 0x120], r10
               	xor	r12, r8
               	xor	r15, rdi
               	jmp	 <L81>
<L80>:
               	xor	esi, esi
               	jmp	 <L82>
               	nop	word ptr [rax + rax]
<L84>:
               	mov	r9, r10
               	shl	r9, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r9
               	rorx	rdi, rdi, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L83>
<L82>:
               	bt	rcx, rsi
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x118], rbx
               	xor	qword ptr [rsp + 0x120], r10
               	xor	r12, r8
               	xor	r15, rdi
               	jmp	 <L84>
<L83>:
               	xor	esi, esi
               	jmp	 <L85>
               	nop	word ptr [rax + rax]
<L87>:
               	mov	r9, r10
               	shl	r9, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r9
               	rorx	rdi, rdi, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L86>
<L85>:
               	bt	rdx, rsi
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x118], rbx
               	xor	qword ptr [rsp + 0x120], r10
               	xor	r12, r8
               	xor	r15, rdi
               	jmp	 <L87>
<L86>:
               	mov	r9, qword ptr [rsp + 0x118]
               	mov	qword ptr [rsp + 0x360], r9
               	mov	r8, qword ptr [rsp + 0x120]
               	mov	qword ptr [rsp + 0x368], r8
               	mov	qword ptr [rsp + 0x370], r12
               	mov	qword ptr [rsp + 0x378], r15
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, r15
               	mov	qword ptr [rsp + 0x110], 0x0
               	mov	rdi, r12
               	mov	qword ptr [rsp + 0x40], 0x0
               	mov	qword ptr [rsp + 0x20], 0x0
               	jmp	 <L88>
               	nop
<L90>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L89>
<L88>:
               	bt	r13, r10
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	rbx, rsi
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L92>
<L91>:
               	bt	rax, r10
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	rbx, rsi
               	jmp	 <L93>
<L92>:
               	xor	r10d, r10d
               	jmp	 <L94>
               	nop	word ptr [rax + rax]
<L96>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L95>
<L94>:
               	bt	rcx, r10
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	rbx, rsi
               	jmp	 <L96>
<L95>:
               	xor	r10d, r10d
               	jmp	 <L97>
               	nop	word ptr [rax + rax]
<L99>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L98>
<L97>:
               	bt	rdx, r10
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	rbx, rsi
               	jmp	 <L99>
<L98>:
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	qword ptr [rsp + 0x380], r9
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	qword ptr [rsp + 0x388], r8
               	mov	rdi, qword ptr [rsp + 0x110]
               	mov	qword ptr [rsp + 0x390], rdi
               	mov	qword ptr [rsp + 0x398], rbx
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x38], 0x0
               	mov	rsi, rbx
               	mov	qword ptr [rsp + 0x108], 0x0
               	mov	qword ptr [rsp + 0x100], 0x0
               	mov	qword ptr [rsp + 0xf8], 0x0
               	jmp	 <L100>
               	nop	dword ptr [rax]
<L102>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L101>
<L100>:
               	bt	r13, r10
               	jae	 <L102>
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	jmp	 <L102>
<L101>:
               	xor	r10d, r10d
               	jmp	 <L103>
               	nop
<L105>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L104>
<L103>:
               	bt	rax, r10
               	jae	 <L105>
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	jmp	 <L105>
<L104>:
               	xor	r10d, r10d
               	jmp	 <L106>
               	nop
<L108>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L107>
<L106>:
               	bt	rcx, r10
               	jae	 <L108>
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	jmp	 <L108>
<L107>:
               	xor	r10d, r10d
               	jmp	 <L109>
               	nop
<L111>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L110>
<L109>:
               	bt	rdx, r10
               	jae	 <L111>
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	jmp	 <L111>
<L110>:
               	mov	r9, qword ptr [rsp + 0xf8]
               	mov	qword ptr [rsp + 0x3a0], r9
               	mov	r8, qword ptr [rsp + 0x100]
               	mov	qword ptr [rsp + 0x3a8], r8
               	mov	rdi, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0x3b0], rdi
               	mov	rsi, qword ptr [rsp + 0x38]
               	mov	qword ptr [rsp + 0x3b8], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xf0], 0x0
               	mov	qword ptr [rsp + 0xe8], 0x0
               	mov	qword ptr [rsp + 0xe0], 0x0
               	mov	qword ptr [rsp + 0xd8], 0x0
               	jmp	 <L112>
               	nop	dword ptr [rax]
<L114>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L113>
<L112>:
               	bt	r13, r10
               	jae	 <L114>
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L114>
<L113>:
               	xor	r10d, r10d
               	jmp	 <L115>
               	nop	word ptr cs:[rax + rax]
<L117>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L116>
<L115>:
               	bt	rax, r10
               	jae	 <L117>
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L117>
<L116>:
               	xor	r10d, r10d
               	jmp	 <L118>
               	nop	word ptr cs:[rax + rax]
<L120>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L119>
<L118>:
               	bt	rcx, r10
               	jae	 <L120>
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L120>
<L119>:
               	xor	r10d, r10d
               	jmp	 <L121>
               	nop	word ptr cs:[rax + rax]
<L123>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L122>
<L121>:
               	bt	rdx, r10
               	jae	 <L123>
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L123>
<L122>:
               	mov	r9, qword ptr [rsp + 0xd8]
               	mov	qword ptr [rsp + 0x3c0], r9
               	mov	r8, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0x3c8], r8
               	mov	rdi, qword ptr [rsp + 0xe8]
               	mov	qword ptr [rsp + 0x3d0], rdi
               	mov	rsi, qword ptr [rsp + 0xf0]
               	mov	qword ptr [rsp + 0x3d8], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xd0], 0x0
               	mov	qword ptr [rsp + 0xc8], 0x0
               	mov	qword ptr [rsp + 0xc0], 0x0
               	mov	qword ptr [rsp + 0xb8], 0x0
               	jmp	 <L124>
               	nop	word ptr cs:[rax + rax]
<L126>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L125>
<L124>:
               	bt	r13, r10
               	jae	 <L126>
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
               	jmp	 <L126>
<L125>:
               	xor	r10d, r10d
               	jmp	 <L127>
               	nop	word ptr cs:[rax + rax]
<L129>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L128>
<L127>:
               	bt	rax, r10
               	jae	 <L129>
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
               	jmp	 <L129>
<L128>:
               	xor	r10d, r10d
               	jmp	 <L130>
               	nop	word ptr cs:[rax + rax]
<L132>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L131>
<L130>:
               	bt	rcx, r10
               	jae	 <L132>
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
               	jmp	 <L132>
<L131>:
               	xor	r10d, r10d
               	jmp	 <L133>
               	nop	word ptr cs:[rax + rax]
<L135>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L134>
<L133>:
               	bt	rdx, r10
               	jae	 <L135>
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
               	jmp	 <L135>
<L134>:
               	mov	r9, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x3e0], r9
               	mov	r8, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0x3e8], r8
               	mov	rdi, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0x3f0], rdi
               	mov	rsi, qword ptr [rsp + 0xd0]
               	mov	qword ptr [rsp + 0x3f8], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xb0], 0x0
               	mov	qword ptr [rsp + 0xa8], 0x0
               	mov	qword ptr [rsp + 0xa0], 0x0
               	mov	qword ptr [rsp + 0x98], 0x0
               	jmp	 <L136>
               	nop	word ptr cs:[rax + rax]
<L138>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L137>
<L136>:
               	bt	r13, r10
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L138>
<L137>:
               	xor	r10d, r10d
               	jmp	 <L139>
               	nop	word ptr cs:[rax + rax]
<L141>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L140>
<L139>:
               	bt	rax, r10
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L141>
<L140>:
               	xor	r10d, r10d
               	jmp	 <L142>
               	nop	word ptr cs:[rax + rax]
<L144>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L143>
<L142>:
               	bt	rcx, r10
               	jae	 <L144>
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L144>
<L143>:
               	xor	r10d, r10d
               	jmp	 <L145>
               	nop	word ptr cs:[rax + rax]
<L147>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L146>
<L145>:
               	bt	rdx, r10
               	jae	 <L147>
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L147>
<L146>:
               	mov	r9, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x400], r9
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	qword ptr [rsp + 0x408], r8
               	mov	rdi, qword ptr [rsp + 0xa8]
               	mov	qword ptr [rsp + 0x410], rdi
               	mov	rsi, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0x418], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x90], 0x0
               	mov	qword ptr [rsp + 0x88], 0x0
               	mov	qword ptr [rsp + 0x80], 0x0
               	mov	qword ptr [rsp + 0x78], 0x0
               	jmp	 <L148>
               	nop
<L150>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L149>
<L148>:
               	bt	r13, r10
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L150>
<L149>:
               	xor	r10d, r10d
               	jmp	 <L151>
               	nop
<L153>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L152>
<L151>:
               	bt	rax, r10
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L153>
<L152>:
               	xor	r10d, r10d
               	jmp	 <L154>
               	nop
<L156>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L155>
<L154>:
               	bt	rcx, r10
               	jae	 <L156>
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L156>
<L155>:
               	xor	r10d, r10d
               	jmp	 <L157>
               	nop
<L159>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L158>
<L157>:
               	bt	rdx, r10
               	jae	 <L159>
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L159>
<L158>:
               	mov	r9, qword ptr [rsp + 0x78]
               	mov	qword ptr [rsp + 0x420], r9
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	qword ptr [rsp + 0x428], r8
               	mov	rdi, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x430], rdi
               	mov	rsi, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x438], rsi
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x70], 0x0
               	mov	qword ptr [rsp + 0x68], 0x0
               	mov	qword ptr [rsp + 0x60], 0x0
               	mov	qword ptr [rsp + 0x58], 0x0
               	jmp	 <L160>
<L162>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L161>
<L160>:
               	bt	r13, r10
               	jae	 <L162>
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x70], rsi
               	jmp	 <L162>
<L161>:
               	xor	r10d, r10d
               	jmp	 <L163>
               	nop	word ptr cs:[rax + rax]
<L165>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L164>
<L163>:
               	bt	rax, r10
               	jae	 <L165>
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x70], rsi
               	jmp	 <L165>
<L164>:
               	xor	r10d, r10d
               	jmp	 <L166>
               	nop	word ptr cs:[rax + rax]
<L168>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L167>
<L166>:
               	bt	rcx, r10
               	jae	 <L168>
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x70], rsi
               	jmp	 <L168>
<L167>:
               	xor	r10d, r10d
               	jmp	 <L169>
               	nop	word ptr cs:[rax + rax]
<L171>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L170>
<L169>:
               	bt	rdx, r10
               	jae	 <L171>
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x70], rsi
               	jmp	 <L171>
<L170>:
               	mov	qword ptr [rsp + 0x270], r12
               	mov	r9, qword ptr [rsp + 0x58]
               	mov	qword ptr [rsp + 0x440], r9
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	qword ptr [rsp + 0x448], r8
               	mov	rdi, qword ptr [rsp + 0x68]
               	mov	qword ptr [rsp + 0x450], rdi
               	mov	rsi, qword ptr [rsp + 0x70]
               	mov	qword ptr [rsp + 0x458], rsi
               	xor	r10d, r10d
               	xor	r14d, r14d
               	xor	ebp, ebp
               	xor	r12d, r12d
               	xor	eax, eax
               	jmp	 <L172>
               	nop	dword ptr [rax]
<L174>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L173>
<L172>:
               	bt	r13, r10
               	jae	 <L174>
               	xor	rax, r9
               	xor	r12, r8
               	xor	rbp, rdi
               	xor	r14, rsi
               	jmp	 <L174>
<L173>:
               	xor	r10d, r10d
               	jmp	 <L175>
               	nop
<L177>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L176>
<L175>:
               	movabs	r11, -0x2a59ed990f36c6d4
               	bt	r11, r10
               	jae	 <L177>
               	xor	rax, r9
               	xor	r12, r8
               	xor	rbp, rdi
               	xor	r14, rsi
               	jmp	 <L177>
<L176>:
               	xor	r10d, r10d
               	jmp	 <L178>
               	nop	dword ptr [rax + rax]
<L180>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L179>
<L178>:
               	bt	rcx, r10
               	jae	 <L180>
               	xor	rax, r9
               	xor	r12, r8
               	xor	rbp, rdi
               	xor	r14, rsi
               	jmp	 <L180>
<L179>:
               	xor	r10d, r10d
               	jmp	 <L181>
               	nop
<L183>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L182>
<L181>:
               	bt	rdx, r10
               	jae	 <L183>
               	xor	rax, r9
               	xor	r12, r8
               	xor	rbp, rdi
               	xor	r14, rsi
               	jmp	 <L183>
<L182>:
               	mov	qword ptr [rsp + 0x268], rbx
               	mov	qword ptr [rsp + 0x278], r15
               	mov	qword ptr [rsp + 0x460], rax
               	mov	qword ptr [rsp + 0x468], r12
               	mov	qword ptr [rsp + 0x470], rbp
               	mov	qword ptr [rsp + 0x478], r14
               	mov	r9, r14
               	xor	r14d, r14d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x260], r9
               	xor	edi, edi
               	mov	r10, rbp
               	xor	r8d, r8d
               	mov	r11, r12
               	mov	rbx, rax
               	xor	r13d, r13d
               	jmp	 <L184>
               	nop	dword ptr [rax]
<L186>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r10, rbx
               	xor	r9, r11
               	xor	r11, r10
               	xor	rbx, r9
               	xor	r10, r15
               	rorx	r9, r9, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L185>
<L184>:
               	movabs	r15, 0x180ec6d33cfd0aba
               	bt	r15, r14
               	jae	 <L186>
               	xor	r13, rbx
               	xor	r8, r11
               	xor	rdi, r10
               	xor	rsi, r9
               	jmp	 <L186>
<L185>:
               	xor	r14d, r14d
               	jmp	 <L187>
               	nop	dword ptr [rax + rax]
<L189>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r10, rbx
               	xor	r9, r11
               	xor	r11, r10
               	xor	rbx, r9
               	xor	r10, r15
               	rorx	r9, r9, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L188>
<L187>:
               	movabs	r15, -0x2a59ed990f36c6d4
               	bt	r15, r14
               	jae	 <L189>
               	xor	r13, rbx
               	xor	r8, r11
               	xor	rdi, r10
               	xor	rsi, r9
               	jmp	 <L189>
<L188>:
               	xor	r14d, r14d
               	jmp	 <L190>
               	nop	dword ptr [rax + rax]
<L192>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r10, rbx
               	xor	r9, r11
               	xor	r11, r10
               	xor	rbx, r9
               	xor	r10, r15
               	rorx	r9, r9, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L191>
<L190>:
               	bt	rcx, r14
               	jae	 <L192>
               	xor	r13, rbx
               	xor	r8, r11
               	xor	rdi, r10
               	xor	rsi, r9
               	jmp	 <L192>
<L191>:
               	xor	r14d, r14d
               	jmp	 <L193>
               	nop
<L195>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r10, rbx
               	xor	r9, r11
               	xor	r11, r10
               	xor	rbx, r9
               	xor	r10, r15
               	rorx	r9, r9, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L194>
<L193>:
               	bt	rdx, r14
               	jae	 <L195>
               	xor	r13, rbx
               	xor	r8, r11
               	xor	rdi, r10
               	xor	rsi, r9
               	jmp	 <L195>
<L194>:
               	mov	qword ptr [rsp + 0x480], r13
               	mov	qword ptr [rsp + 0x488], r8
               	mov	qword ptr [rsp + 0x490], rdi
               	mov	qword ptr [rsp + 0x498], rsi
               	xor	r11d, r11d
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x50], 0x0
               	mov	qword ptr [rsp + 0x18], 0x0
               	mov	r10, r13
               	xor	r9d, r9d
               	movabs	rcx, 0x180ec6d33cfd0aba
               	jmp	 <L196>
               	nop	word ptr cs:[rax + rax]
<L198>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L197>
<L196>:
               	bt	rcx, r11
               	jae	 <L198>
               	xor	r9, r10
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x50], rdi
               	xor	r15, rsi
               	jmp	 <L198>
<L197>:
               	xor	r11d, r11d
               	jmp	 <L199>
               	nop	word ptr cs:[rax + rax]
<L201>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L200>
<L199>:
               	movabs	rbx, -0x2a59ed990f36c6d4
               	bt	rbx, r11
               	jae	 <L201>
               	xor	r9, r10
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x50], rdi
               	xor	r15, rsi
               	jmp	 <L201>
<L200>:
               	xor	r11d, r11d
               	jmp	 <L202>
               	nop	dword ptr [rax]
<L204>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L203>
<L202>:
               	movabs	rbx, -0x56a7d9e71fc03656
               	bt	rbx, r11
               	jae	 <L204>
               	xor	r9, r10
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x50], rdi
               	xor	r15, rsi
               	jmp	 <L204>
<L203>:
               	xor	r11d, r11d
               	jmp	 <L205>
               	nop	dword ptr [rax]
<L207>:
               	mov	rbx, r8
               	shl	rbx, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, rbx
               	rorx	rsi, rsi, 0x13
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L206>
<L205>:
               	bt	rdx, r11
               	jae	 <L207>
               	xor	r9, r10
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x50], rdi
               	xor	r15, rsi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x4a0], r9
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x4a8], r8
               	mov	rdi, qword ptr [rsp + 0x50]
               	mov	qword ptr [rsp + 0x4b0], rdi
               	mov	qword ptr [rsp + 0x4b8], r15
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, r15
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x10], 0x0
               	mov	qword ptr [rsp + 0x48], 0x0
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L209>
<L208>:
               	bt	rcx, r10
               	jae	 <L210>
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L210>
<L209>:
               	xor	r10d, r10d
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L211>
               	nop	dword ptr [rax]
<L213>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L212>
<L211>:
               	movabs	r11, -0x2a59ed990f36c6d4
               	bt	r11, r10
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	r14, rdi
               	xor	rbx, rsi
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L215>
<L214>:
               	bt	rcx, r10
               	jae	 <L216>
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L216>
<L215>:
               	xor	r10d, r10d
               	jmp	 <L217>
               	nop	word ptr cs:[rax + rax]
<L219>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L218>
<L217>:
               	bt	rdx, r10
               	jae	 <L219>
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x248], rax
               	mov	qword ptr [rsp + 0x250], r12
               	mov	qword ptr [rsp + 0x258], rbp
               	mov	r9, qword ptr [rsp + 0x48]
               	mov	qword ptr [rsp + 0x4c0], r9
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x4c8], r8
               	mov	qword ptr [rsp + 0x4d0], r14
               	mov	qword ptr [rsp + 0x4d8], rbx
               	xor	r10d, r10d
               	mov	rsi, rbx
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x230], rsi
               	mov	rdi, r14
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x228], rdi
               	xor	r12d, r12d
               	xor	ebp, ebp
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L220>
               	nop
<L222>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L221>
<L220>:
               	bt	rax, r10
               	jae	 <L222>
               	xor	rbp, r9
               	xor	r12, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	movabs	rax, -0x2a59ed990f36c6d4
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
               	rorx	rsi, rsi, 0x13
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L224>
<L223>:
               	bt	rax, r10
               	jae	 <L225>
               	xor	rbp, r9
               	xor	r12, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L225>
<L224>:
               	mov	qword ptr [rsp + 0x238], r15
               	mov	qword ptr [rsp + 0x240], r13
               	xor	eax, eax
               	mov	r15, qword ptr [rsp + 0x40]
               	jmp	 <L226>
               	nop	word ptr cs:[rax + rax]
<L228>:
               	mov	r10, r8
               	shl	r10, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r10
               	rorx	rsi, rsi, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L227>
<L226>:
               	bt	rcx, rax
               	jae	 <L228>
               	xor	rbp, r9
               	xor	r12, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	mov	r10, qword ptr [rsp + 0x38]
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rcx, r8
               	shl	rcx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rcx
               	rorx	rsi, rsi, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L230>
<L229>:
               	bt	rdx, rax
               	jae	 <L231>
               	xor	rbp, r9
               	xor	r12, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x4e0], rbp
               	mov	qword ptr [rsp + 0x4e8], r12
               	mov	qword ptr [rsp + 0x4f0], r14
               	mov	qword ptr [rsp + 0x4f8], rbx
               	mov	qword ptr [rsp + 0x500], 0x0
               	lea	rax, [rsp + 0x280]
               	kxnorw	k1, k0, k0
               	vpmovzxbd	ymm0, qword ptr  <memset+0x1170>
               	vpxor	xmm1, xmm1, xmm1
               	kxnorw	k2, k0, k0
               	vpxor	xmm2, xmm2, xmm2
               	vpgatherdq	zmm2 {k2}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm2, 0x2
               	vpaddq	zmm0, zmm0, zmm2
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm2, zmm0, 0x3
               	vpaddq	zmm7, zmm2, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x508], zmm7
               	vpmovsxwd	ymm0, xmmword ptr  <memset+0x1210>
               	vpgatherdq	zmm1 {k1}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm1, 0x2
               	vpaddq	zmm0, zmm0, zmm1
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm8, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x548], zmm8
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x488]
               	vpinsrq	xmm0, xmm0, qword ptr [rsp + 0x18], 0x1
               	mov	rcx, qword ptr [rsp + 0x128]
               	shl	rcx, 0x3
               	mov	rdx, qword ptr [rsp + 0x10]
               	vpbroadcastq	ymm1, rdx
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, r12
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm9, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x588], ymm9
               	mov	qword ptr [rsp + 0x128], rcx
               	test	rcx, rcx
               	je	 <L232>
               	vpbroadcastq	zmm0, rax
               	vpaddq	zmm3, zmm0, zmmword ptr  <memset+0x1180>
               	vpaddq	zmm4, zmm0, zmmword ptr  <memset+0x11c0>
               	vextracti32x4	xmm0, zmm8, 0x2
               	vextracti128	xmm1, ymm8, 0x1
               	vpextrq	rax, xmm1, 0x1
               	vpextrq	rsi, xmm8, 0x1
               	vmovq	rcx, xmm0
               	vmovq	rdi, xmm1
               	vmovq	rdx, xmm7
               	mov	r8, qword ptr [rsp + 0x280]
               	mov	qword ptr [rsp + 0x220], r8
               	mov	r8, qword ptr [rsp + 0x288]
               	mov	qword ptr [rsp + 0x218], r8
               	mov	r8, qword ptr [rsp + 0x290]
               	mov	qword ptr [rsp + 0x210], r8
               	mov	r8, qword ptr [rsp + 0x298]
               	mov	qword ptr [rsp + 0x208], r8
               	mov	r8, qword ptr [rsp + 0x2a8]
               	mov	qword ptr [rsp + 0x200], r8
               	mov	r8, qword ptr [rsp + 0x2a0]
               	mov	qword ptr [rsp + 0x1f8], r8
               	mov	r8, qword ptr [rsp + 0x2b0]
               	mov	qword ptr [rsp + 0x1f0], r8
               	mov	r8, qword ptr [rsp + 0x2b8]
               	mov	qword ptr [rsp + 0x1e8], r8
               	mov	r8, qword ptr [rsp + 0x2c8]
               	mov	qword ptr [rsp + 0x1e0], r8
               	mov	r8, qword ptr [rsp + 0x2c0]
               	mov	qword ptr [rsp + 0x1d8], r8
               	vextracti128	xmm1, ymm9, 0x1
               	vpalignr	xmm0, xmm1, xmm0, 0x8   # xmm0 = xmm0[8,9,10,11,12,13,14,15],xmm1[0,1,2,3,4,5,6,7]
               	vpbroadcastd	ymm5, dword ptr  <memset+0x1220>
               	vmovdqa	xmm6, xmmword ptr  <memset+0x1200>
               	mov	r8, qword ptr [rsp + 0x2d0]
               	mov	qword ptr [rsp + 0x1d0], r8
               	mov	r8, qword ptr [rsp + 0x2d8]
               	mov	qword ptr [rsp + 0x1c8], r8
               	mov	r8, qword ptr [rsp + 0x2e8]
               	mov	qword ptr [rsp + 0x1c0], r8
               	mov	r8, qword ptr [rsp + 0x2e0]
               	mov	qword ptr [rsp + 0x1b8], r8
               	mov	r8, qword ptr [rsp + 0x2f0]
               	mov	qword ptr [rsp + 0x1b0], r8
               	mov	r8, qword ptr [rsp + 0x2f8]
               	mov	qword ptr [rsp + 0x1a8], r8
               	mov	r8, qword ptr [rsp + 0x308]
               	mov	qword ptr [rsp + 0x1a0], r8
               	mov	r8, qword ptr [rsp + 0x300]
               	mov	qword ptr [rsp + 0x198], r8
               	mov	r8, qword ptr [rsp + 0x310]
               	mov	qword ptr [rsp + 0x190], r8
               	mov	r8, qword ptr [rsp + 0x318]
               	mov	qword ptr [rsp + 0x188], r8
               	mov	r8, qword ptr [rsp + 0x328]
               	mov	qword ptr [rsp + 0x180], r8
               	mov	r8, qword ptr [rsp + 0x320]
               	mov	qword ptr [rsp + 0x178], r8
               	mov	r8, qword ptr [rsp + 0x330]
               	mov	qword ptr [rsp + 0x170], r8
               	mov	r8, qword ptr [rsp + 0x338]
               	mov	qword ptr [rsp + 0x168], r8
               	mov	r8, qword ptr [rsp + 0x348]
               	mov	qword ptr [rsp + 0x160], r8
               	mov	r8, qword ptr [rsp + 0x340]
               	mov	qword ptr [rsp + 0x158], r8
               	mov	r8, qword ptr [rsp + 0x350]
               	mov	qword ptr [rsp + 0x150], r8
               	mov	r8, qword ptr [rsp + 0x358]
               	mov	qword ptr [rsp + 0x148], r8
               	xor	r13d, r13d
               	lea	r8,  <memset+0x1240>
               	mov	qword ptr [rsp + 0x130], 0x0
               	mov	r9, qword ptr [rsp + 0x20]
               	vmovdqu64	zmmword ptr [rsp + 0x640], zmm3
               	vmovdqu64	zmmword ptr [rsp + 0x600], zmm4
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L240>:
               	vpsrlq	zmm7, zmm7, 0x8
               	vmovdqu64	zmmword ptr [rsp + 0x508], zmm7
               	vpsrlq	zmm8, zmm8, 0x8
               	vpsrlq	ymm9, ymm9, 0x8
<L241>:
               	vmovq	rdx, xmm7
               	vpextrq	rsi, xmm8, 0x1
               	vextracti128	xmm0, ymm8, 0x1
               	vmovq	rdi, xmm0
               	vextracti32x4	xmm1, zmm8, 0x2
               	vmovq	rcx, xmm1
               	vpextrq	rax, xmm0, 0x1
               	vmovdqu64	zmmword ptr [rsp + 0x548], zmm8
               	vmovdqu	ymmword ptr [rsp + 0x588], ymm9
               	vextracti128	xmm0, ymm9, 0x1
               	vpalignr	xmm0, xmm0, xmm1, 0x8   # xmm0 = xmm1[8,9,10,11,12,13,14,15],xmm0[0,1,2,3,4,5,6,7]
               	add	r13, 0x50
               	mov	r11, qword ptr [rsp + 0x130]
               	cmp	qword ptr [rsp + 0x128], r11
               	je	 <L234>
<L233>:
               	vmovq	xmm1, rsi
               	vmovq	xmm2, rdi
               	vpunpcklqdq	xmm1, xmm1, xmm2 # xmm1 = xmm1[0],xmm2[0]
               	vmovdqu64	zmm2, zmmword ptr [rsp + 0x510]
               	vpmovqd	ymm2, zmm2
               	vpand	ymm2, ymm2, ymm5
               	vcvtdq2ps	ymm2, ymm2
               	vpshufb	xmm1, xmm1, xmm6
               	vcvtdq2ps	xmm1, xmm1
               	movzx	esi, dl
               	imul	esi, esi, 0x4f
               	shr	esi, 0xa
               	lea	edi, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*rdi]
               	sub	dl, sil
               	movzx	edx, dl
               	movsxd	rdx, dword ptr [r8 + 4*rdx]
               	add	rdx, r8
               	jmp	rdx
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Circle@Evaluation.CRTP.Circle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'(Bodies3D::Circle@Evaluation.CRTP.Circle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'(Bodies3D::Circle@Evaluation.CRTP.Circle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'()>>>>
               	jmp	 <L235>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'()>>>>
               	jmp	 <L236>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Triangle@Evaluation.CRTP.Triangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'(Bodies3D::Triangle@Evaluation.CRTP.Triangle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'(Bodies3D::Triangle@Evaluation.CRTP.Triangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'()>>>>
               	jmp	 <L237>
               	vpextrb	edx, xmm0, 0x8
               	vcvtsi2ss	xmm1, xmm11, edx
               	vmovss	dword ptr [rsp + 0x144], xmm1
               	vpextrb	edx, xmm0, 0x0
               	vmovq	xmm0, rax
               	vcvtsi2ss	xmm1, xmm11, edx
               	vmovss	dword ptr [rsp + 0x140], xmm1
               	vmovq	xmm1, rcx
               	vpunpcklqdq	xmm0, xmm0, xmm1 # xmm0 = xmm0[0],xmm1[0]
               	vmovdqa	xmmword ptr [rsp + 0x5b0], xmm0
               	mov	qword ptr [rsp + 0x40], r15
               	mov	qword ptr [rsp + 0x20], r9
               	mov	r15, qword ptr [rsp + 0x8]
               	lea	rax,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Head@Evaluation.CRTP.Head, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'()>>>>
               	mov	qword ptr [r15 + r13], rax
               	mov	byte ptr [r15 + r13 + 0x40], 0x1
               	mov	edi, 0x60
               	mov	qword ptr [rsp + 0x38], r10
               	vmovdqu64	zmmword ptr [rsp + 0x6c0], zmm7
               	vmovdqu64	zmmword ptr [rsp + 0x680], zmm8
               	vmovdqu	ymmword ptr [rsp + 0x5e0], ymm9
               	vmovups	ymmword ptr [rsp + 0x5c0], ymm2
               	vzeroupper
               	call	 <malloc@plt>
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x5e0]
               	vmovdqu64	zmm8, zmmword ptr [rsp + 0x680]
               	vmovdqu64	zmm7, zmmword ptr [rsp + 0x6c0]
               	lea	r8,  <memset+0x1240>
               	vmovdqa	xmm6, xmmword ptr  <memset+0x1200>
               	vpbroadcastd	ymm5, dword ptr  <memset+0x1220>
               	vmovdqu64	zmm4, zmmword ptr [rsp + 0x600]
               	vmovdqu64	zmm3, zmmword ptr [rsp + 0x640]
               	mov	r10, qword ptr [rsp + 0x38]
               	mov	qword ptr [r15 + r13 + 0x10], rax
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	r15, qword ptr [rsp + 0x40]
               	vmovups	ymm1, ymmword ptr [rsp + 0x5c0]
               	vshufps	xmm0, xmm1, xmm1, 0xff  # xmm0 = xmm1[3,3,3,3]
               	vmovups	ymmword ptr [rax], ymm1
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x5b0]
               	vpshufb	xmm1, xmm1, xmm6
               	vcvtdq2ps	xmm1, xmm1
               	vmovq	qword ptr [rax + 0x20], xmm1
               	vmovss	xmm10, dword ptr [rsp + 0x140]
               	vmovss	dword ptr [rax + 0x28], xmm10
               	vmovss	dword ptr [rax + 0x2c], xmm0
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x578]
               	vpmovqd	xmm2, ymm2
               	vpandd	xmm2, xmm2, dword ptr {1to4} <memset+0x1220>
               	vcvtdq2ps	xmm2, xmm2
               	vmovdqu	xmmword ptr [rax + 0x30], xmm2
               	vmovq	qword ptr [rax + 0x40], xmm1
               	vmovss	dword ptr [rax + 0x48], xmm10
               	vmovss	dword ptr [rax + 0x4c], xmm0
               	vmovss	xmm0, dword ptr [rsp + 0x144]
               	vmovss	dword ptr [rax + 0x50], xmm0
               	vpshufd	xmm0, xmm2, 0xe9        # xmm0 = xmm2[1,2,2,3]
               	vmovq	qword ptr [rax + 0x54], xmm0
               	vextractps	dword ptr [rax + 0x5c], xmm2, 0x3
               	jmp	 <L238>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'()>>>>
               	jmp	 <L239>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'()>>>>
               	jmp	 <L237>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Square@Evaluation.CRTP.Square, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'(Bodies3D::Square@Evaluation.CRTP.Square const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'(Bodies3D::Square@Evaluation.CRTP.Square&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'()>>>>
               	jmp	 <L235>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'()>>>>
               	jmp	 <L236>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'(Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'(Bodies3D::Ellipse@Evaluation.CRTP.Ellipse&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'()>>>>
<L237>:
               	mov	qword ptr [rax + r13], rcx
               	mov	byte ptr [rax + r13 + 0x40], 0x0
               	vmovdqu	ymmword ptr [rax + r13 + 0x10], ymm2
               	vmovd	dword ptr [rax + r13 + 0x30], xmm1
               	jmp	 <L238>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cube@Evaluation.CRTP.Cube, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'()>>>>
               	jmp	 <L235>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'()>>>>
<L236>:
               	mov	qword ptr [rax + r13], rcx
               	mov	byte ptr [rax + r13 + 0x40], 0x0
               	vmovdqu	ymmword ptr [rax + r13 + 0x10], ymm2
               	vmovq	qword ptr [rax + r13 + 0x30], xmm1
               	jmp	 <L238>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cone@Evaluation.CRTP.Cone, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'()>>>>
<L239>:
               	mov	qword ptr [rax + r13], rcx
               	mov	byte ptr [rax + r13 + 0x40], 0x0
               	vmovdqu	ymmword ptr [rax + r13 + 0x10], ymm2
               	vextractps	dword ptr [rax + r13 + 0x30], xmm1, 0x1
               	jmp	 <L238>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Sphere@Evaluation.CRTP.Sphere, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'()>>>>
<L235>:
               	mov	qword ptr [rax + r13], rcx
               	mov	byte ptr [rax + r13 + 0x40], 0x0
               	vmovdqu	ymmword ptr [rax + r13 + 0x10], ymm2
<L238>:
               	mov	rax, qword ptr [rsp + 0x130]
               	inc	rax
               	mov	qword ptr [rsp + 0x500], rax
               	mov	qword ptr [rsp + 0x130], rax
               	test	al, 0x7
               	jne	 <L240>
               	mov	rdx, qword ptr [rsp + 0x218]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x220]
               	mov	rsi, qword ptr [rsp + 0x210]
               	xor	rsi, rcx
               	mov	rdi, qword ptr [rsp + 0x208]
               	xor	rdi, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x218], rdx
               	mov	qword ptr [rsp + 0x288], rdx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x220], rcx
               	mov	qword ptr [rsp + 0x280], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x210], rsi
               	mov	qword ptr [rsp + 0x290], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x208], rdi
               	mov	qword ptr [rsp + 0x298], rdi
               	mov	rcx, qword ptr [rsp + 0x200]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1f8]
               	mov	rsi, qword ptr [rsp + 0x1f0]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x1e8]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x200], rcx
               	mov	qword ptr [rsp + 0x2a8], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x1f8], rdx
               	mov	qword ptr [rsp + 0x2a0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1f0], rsi
               	mov	qword ptr [rsp + 0x2b0], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x1e8], rdi
               	mov	qword ptr [rsp + 0x2b8], rdi
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1d8]
               	mov	rsi, qword ptr [rsp + 0x1d0]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x1e0], rcx
               	mov	qword ptr [rsp + 0x2c8], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x1d8], rdx
               	mov	qword ptr [rsp + 0x2c0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1d0], rsi
               	mov	qword ptr [rsp + 0x2d0], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x1c8], rdi
               	mov	qword ptr [rsp + 0x2d8], rdi
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1b8]
               	mov	rsi, qword ptr [rsp + 0x1b0]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x1c0], rcx
               	mov	qword ptr [rsp + 0x2e8], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x1b8], rdx
               	mov	qword ptr [rsp + 0x2e0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1b0], rsi
               	mov	qword ptr [rsp + 0x2f0], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x1a8], rdi
               	mov	qword ptr [rsp + 0x2f8], rdi
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x198]
               	mov	rsi, qword ptr [rsp + 0x190]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x188]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x1a0], rcx
               	mov	qword ptr [rsp + 0x308], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x198], rdx
               	mov	qword ptr [rsp + 0x300], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x190], rsi
               	mov	qword ptr [rsp + 0x310], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x188], rdi
               	mov	qword ptr [rsp + 0x318], rdi
               	mov	rcx, qword ptr [rsp + 0x180]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x178]
               	mov	rsi, qword ptr [rsp + 0x170]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x168]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x180], rcx
               	mov	qword ptr [rsp + 0x328], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x178], rdx
               	mov	qword ptr [rsp + 0x320], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x170], rsi
               	mov	qword ptr [rsp + 0x330], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x168], rdi
               	mov	qword ptr [rsp + 0x338], rdi
               	mov	rcx, qword ptr [rsp + 0x160]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x158]
               	mov	rsi, qword ptr [rsp + 0x150]
               	xor	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x148]
               	xor	rdi, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x160], rcx
               	mov	qword ptr [rsp + 0x348], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x158], rdx
               	mov	qword ptr [rsp + 0x340], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x150], rsi
               	mov	qword ptr [rsp + 0x350], rsi
               	rorx	rdi, rdi, 0x13
               	mov	qword ptr [rsp + 0x148], rdi
               	mov	qword ptr [rsp + 0x358], rdi
               	mov	rdi, qword ptr [rsp + 0x120]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x270]
               	mov	rsi, qword ptr [rsp + 0x118]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x278]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x120], rdi
               	mov	qword ptr [rsp + 0x368], rdi
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x118], rsi
               	mov	qword ptr [rsp + 0x360], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x270], rdx
               	mov	qword ptr [rsp + 0x370], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x278], rcx
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x110]
               	xor	rdx, r9
               	mov	rcx, qword ptr [rsp + 0x268]
               	xor	rcx, r15
               	xor	r15, rdx
               	mov	qword ptr [rsp + 0x388], r15
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x20], r9
               	mov	qword ptr [rsp + 0x380], r9
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x110], rdx
               	mov	qword ptr [rsp + 0x390], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x268], rcx
               	mov	qword ptr [rsp + 0x398], rcx
               	mov	rsi, qword ptr [rsp + 0x100]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x108]
               	mov	rdi, qword ptr [rsp + 0xf8]
               	xor	rcx, rdi
               	xor	r10, rsi
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x100], rsi
               	mov	qword ptr [rsp + 0x3a8], rsi
               	xor	rdi, r10
               	mov	qword ptr [rsp + 0xf8], rdi
               	mov	qword ptr [rsp + 0x3a0], rdi
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x108], rcx
               	mov	qword ptr [rsp + 0x3b0], rcx
               	rorx	r10, r10, 0x13
               	mov	qword ptr [rsp + 0x3b8], r10
               	mov	rdi, qword ptr [rsp + 0xe0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xe8]
               	mov	r11, qword ptr [rsp + 0xd8]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0xe0], rdi
               	mov	qword ptr [rsp + 0x3c8], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0xd8], r11
               	mov	qword ptr [rsp + 0x3c0], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xe8], rdx
               	mov	qword ptr [rsp + 0x3d0], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	qword ptr [rsp + 0x3d8], rcx
               	mov	rdi, qword ptr [rsp + 0xc0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc8]
               	mov	r11, qword ptr [rsp + 0xb8]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0xd0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0xc0], rdi
               	mov	qword ptr [rsp + 0x3e8], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0xb8], r11
               	mov	qword ptr [rsp + 0x3e0], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xc8], rdx
               	mov	qword ptr [rsp + 0x3f0], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0xd0], rcx
               	mov	qword ptr [rsp + 0x3f8], rcx
               	mov	rdi, qword ptr [rsp + 0xa0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xa8]
               	mov	r11, qword ptr [rsp + 0x98]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0xa0], rdi
               	mov	qword ptr [rsp + 0x408], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x98], r11
               	mov	qword ptr [rsp + 0x400], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xa8], rdx
               	mov	qword ptr [rsp + 0x410], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	qword ptr [rsp + 0x418], rcx
               	mov	rdi, qword ptr [rsp + 0x80]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x88]
               	mov	r11, qword ptr [rsp + 0x78]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x90]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x80], rdi
               	mov	qword ptr [rsp + 0x428], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x78], r11
               	mov	qword ptr [rsp + 0x420], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x88], rdx
               	mov	qword ptr [rsp + 0x430], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x90], rcx
               	mov	qword ptr [rsp + 0x438], rcx
               	mov	rdi, qword ptr [rsp + 0x60]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	r11, qword ptr [rsp + 0x58]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x70]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x60], rdi
               	mov	qword ptr [rsp + 0x448], rdi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x58], r11
               	mov	qword ptr [rsp + 0x440], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x68], rdx
               	mov	qword ptr [rsp + 0x450], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x70], rcx
               	mov	qword ptr [rsp + 0x458], rcx
               	mov	rsi, qword ptr [rsp + 0x250]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x258]
               	mov	rdi, qword ptr [rsp + 0x248]
               	xor	rdx, rdi
               	mov	rcx, qword ptr [rsp + 0x260]
               	xor	rcx, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x250], rsi
               	mov	qword ptr [rsp + 0x468], rsi
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x248], rdi
               	mov	qword ptr [rsp + 0x460], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x258], rdx
               	mov	qword ptr [rsp + 0x470], rdx
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x260], rcx
               	mov	qword ptr [rsp + 0x478], rcx
               	mov	rcx, qword ptr [rsp + 0x488]
               	mov	rax, qword ptr [rsp + 0x4a0]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x490]
               	mov	r11, qword ptr [rsp + 0x240]
               	xor	rsi, r11
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x498]
               	mov	qword ptr [rsp + 0x488], rdi
               	shl	rdx, 0x11
               	xor	rsi, rdx
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x240], r11
               	mov	qword ptr [rsp + 0x480], r11
               	mov	qword ptr [rsp + 0x490], rsi
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x498], rcx
               	mov	rdi, qword ptr [rsp + 0x18]
               	mov	rcx, rdi
               	mov	rsi, qword ptr [rsp + 0x50]
               	xor	rsi, rax
               	mov	rdx, qword ptr [rsp + 0x238]
               	xor	rdx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x4a8], rdi
               	xor	rax, rdx
               	mov	qword ptr [rsp + 0x4a0], rax
               	shl	rcx, 0x11
               	xor	rsi, rcx
               	mov	r8, r10
               	mov	r10, r13
               	mov	r13, qword ptr [rsp + 0x10]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x228]
               	mov	r9, r15
               	mov	r15, qword ptr [rsp + 0x48]
               	xor	r11, r15
               	mov	rcx, qword ptr [rsp + 0x230]
               	xor	rcx, r13
               	xor	r13, r11
               	xor	r11, rax
               	mov	rax, r12
               	shl	rax, 0x11
               	xor	r14, rbp
               	xor	rbx, r12
               	xor	r12, r14
               	xor	r14, rax
               	mov	qword ptr [rsp + 0x50], rsi
               	mov	qword ptr [rsp + 0x4b0], rsi
               	rorx	rdx, rdx, 0x13
               	mov	qword ptr [rsp + 0x238], rdx
               	mov	qword ptr [rsp + 0x4b8], rdx
               	mov	qword ptr [rsp + 0x4c8], r13
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x48], r15
               	mov	qword ptr [rsp + 0x4c0], r15
               	mov	r15, r9
               	mov	qword ptr [rsp + 0x228], r11
               	mov	qword ptr [rsp + 0x4d0], r11
               	mov	r9, qword ptr [rsp + 0x20]
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0x230], rcx
               	mov	qword ptr [rsp + 0x4d8], rcx
               	mov	qword ptr [rsp + 0x4e8], r12
               	xor	rbp, rbx
               	mov	qword ptr [rsp + 0x4e0], rbp
               	mov	qword ptr [rsp + 0x4f0], r14
               	rorx	rbx, rbx, 0x13
               	mov	qword ptr [rsp + 0x4f8], rbx
               	kxnorw	k1, k0, k0
               	vpxor	xmm0, xmm0, xmm0
               	vpgatherqq	zmm0 {k1}, zmmword ptr [1*zmm3]
               	vpsllq	zmm1, zmm0, 0x2
               	vpaddq	zmm0, zmm1, zmm0
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm7, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x508], zmm7
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x488]
               	kxnorw	k1, k0, k0
               	vpxor	xmm1, xmm1, xmm1
               	vpgatherqq	zmm1 {k1}, zmmword ptr [1*zmm4]
               	vpsllq	zmm2, zmm1, 0x2
               	vpaddq	zmm1, zmm2, zmm1
               	vprolq	zmm1, zmm1, 0x7
               	vpsllq	zmm2, zmm1, 0x3
               	vpaddq	zmm8, zmm2, zmm1
               	mov	qword ptr [rsp + 0x18], rdi
               	vpinsrq	xmm0, xmm0, rdi, 0x1
               	mov	qword ptr [rsp + 0x10], r13
               	vpbroadcastq	ymm1, r13
               	mov	r13, r10
               	mov	r10, r8
               	lea	r8,  <memset+0x1240>
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, r12
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm9, ymm1, ymm0
               	jmp	 <L241>
<L234>:
               	mov	rax, qword ptr [rsp + 0x130]
               	shl	rax, 0x4
               	lea	rcx, [rax + 4*rax]
               	mov	rax, rcx
               	shr	rax, 0x4
               	imul	ebp, eax, 0xcccccccd
               	test	ebp, ebp
               	je	 <L242>
               	mov	qword ptr [rsp + 0x10], rcx
               	mov	qword ptr [rsp + 0x18], r13
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu64	zmmword ptr [rsp + 0x2c0], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x280], zmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	jmp	 <L243>
               	nop	word ptr [rax + rax]
<L244>:
               	vmovss	xmm0, dword ptr [rsp + 0x284]
               	vmovss	dword ptr [rsp + 0x288], xmm0
               	mov	r13d, 0x1
<L258>:
               	mov	eax, r13d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x280]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	rbx, r14
<L243>:
               	blsi	eax, ebp
               	lea	r14, [rax + 4*rax]
               	shl	r14, 0x4
               	add	r14, rbx
               	test	eax, eax
               	je	 <L244>
               	mov	qword ptr [rsp + 0x20], rax
               	xor	ecx, ecx
               	mov	r12d, 0x1
               	mov	r15d, 0x1
               	jmp	 <L245>
               	nop	word ptr cs:[rax + rax]
<L249>:
               	mov	r12d, r13d
               	movsxd	rax, r13d
               	vmovss	dword ptr [rsp + 4*rax + 0x280], xmm0
               	add	rbx, 0x50
               	mov	ecx, 0xfffffffe
               	sub	ecx, r15d
               	lea	edx, [r15 + 0x1]
               	lzcnt	esi, edx
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r15d, edx
               	cmp	rbx, r14
               	je	 <L246>
<L245>:
               	mov	r13d, ecx
               	mov	rax, qword ptr [rbx]
               	mov	rax, qword ptr [rax]
               	cmp	byte ptr [rbx + 0x40], 0x0
               	je	 <L247>
               	mov	rdi, qword ptr [rbx + 0x10]
               	jmp	 <L248>
               	nop	word ptr [rax + rax]
<L247>:
               	lea	rdi, [rbx + 0x10]
<L248>:
               	vzeroupper
               	call	rax
               	mov	edx, r13d
               	sub	edx, r12d
               	jl	 <L249>
               	movsxd	rax, r12d
               	cmp	edx, 0x7
               	jb	 <L250>
               	lea	rcx, [rdx + 0x1]
               	cmp	edx, 0x3f
               	jae	 <L251>
               	xor	edx, edx
               	jmp	 <L252>
<L251>:
               	mov	rdx, rcx
               	movabs	rsi, 0x1ffffffc0
               	and	rdx, rsi
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	lea	rsi, [rsp + 0x340]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	word ptr cs:[rax + rax]
<L253>:
               	vaddps	zmm0, zmm0, zmmword ptr [rsi + 4*rdi - 0xc0]
               	vaddps	zmm1, zmm1, zmmword ptr [rsi + 4*rdi - 0x80]
               	vaddps	zmm2, zmm2, zmmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	zmm3, zmm3, zmmword ptr [rsi + 4*rdi]
               	add	rdi, 0x40
               	cmp	rdx, rdi
               	jne	 <L253>
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
               	je	 <L249>
               	test	cl, 0x38
               	je	 <L254>
<L252>:
               	movabs	rsi, 0x1ffffffc0
               	add	rsi, 0x38
               	and	rsi, rcx
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	lea	rdi, [rsp + 4*rax]
               	add	rdi, 0x280
               	nop	word ptr cs:[rax + rax]
<L255>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
               	add	rdx, 0x8
               	cmp	rsi, rdx
               	jne	 <L255>
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rsi
               	je	 <L249>
               	add	rax, rsi
               	jmp	 <L250>
<L254>:
               	add	rax, rdx
               	nop	word ptr [rax + rax]
<L250>:
               	mov	ecx, r13d
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x280
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L256>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L256>
               	jmp	 <L249>
               	nop	word ptr cs:[rax + rax]
<L246>:
               	sub	ebp, dword ptr [rsp + 0x20]
               	je	 <L257>
               	vmovss	dword ptr [rsp + 4*rax + 0x284], xmm0
               	mov	rbx, r14
               	test	r13d, r13d
               	jns	 <L258>
               	jmp	 <L243>
<L257>:
               	mov	r12, qword ptr [rsp + 0x138]
               	mov	r13, qword ptr [rsp + 0x18]
               	mov	rcx, qword ptr [rsp + 0x10]
               	test	rcx, rcx
               	mov	r15, qword ptr [rsp + 0x8]
               	jne	 <L259>
               	jmp	 <L260>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r15, qword ptr [rsp + 0x8]
               	mov	r12, qword ptr [rsp + 0x138]
               	jmp	 <L260>
<L242>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r12, qword ptr [rsp + 0x138]
               	test	rcx, rcx
               	mov	r15, qword ptr [rsp + 0x8]
               	je	 <L260>
<L259>:
               	vmovdqa	xmmword ptr [rsp + 0x20], xmm0
               	mov	rbx, r15
               	jmp	 <L261>
               	nop	word ptr cs:[rax + rax]
<L263>:
               	mov	rax, qword ptr [rbx]
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [rax + 0x8]
<L264>:
               	add	rbx, 0x50
               	add	r13, -0x50
               	je	 <L262>
<L261>:
               	lea	r14, [rbx + 0x10]
               	cmp	byte ptr [rbx + 0x40], 0x1
               	jne	 <L263>
               	mov	rdi, qword ptr [r14]
               	test	rdi, rdi
               	je	 <L264>
               	mov	rax, qword ptr [rbx]
               	vzeroupper
               	call	qword ptr [rax + 0x8]
               	mov	rdi, qword ptr [r14]
               	call	 <free@plt>
               	jmp	 <L264>
<L262>:
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x20]
<L260>:
               	test	r15, r15
               	mov	rbx, qword ptr [rsp + 0x128]
               	je	 <L265>
               	mov	rdi, r15
               	vmovdqa	xmmword ptr [rsp + 0x20], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x20]
<L265>:
               	cmp	r12, 0x2a
               	jne	 <L266>
               	cmp	rbx, 0x30d40
               	je	 <L267>
               	cmp	rbx, 0x186a0
               	jne	 <L266>
               	vucomiss	xmm0, dword ptr  <memset+0x1238>
               	jne	 <L268>
<L266>:
               	xor	eax, eax
               	add	rsp, 0x708
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L267>:
               	vucomiss	xmm0, dword ptr  <memset+0x1228>
               	je	 <L266>
<L268>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x20], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x20]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x7cf8>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
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

<__clang_call_terminate>:
               	push	rax
               	call	 <__cxa_begin_catch@plt>
               	call	 <_ZSt9terminatev@plt>
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head const&), float (Bodies3D::Head@Evaluation.CRTP.Head const&)>, float (dyno::T const&), float (Bodies3D::Head@Evaluation.CRTP.Head const&)>::apply(void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere const&), float (Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>, float (dyno::T const&), float (Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <memset+0x123c>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
               	mov	eax, 0x60
               	mov	edx, 0x4
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&), float (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, float (dyno::T const&), float (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x123c>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
               	mov	eax, 0x28
               	mov	edx, 0x4
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone const&), float (Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, float (dyno::T const&), float (Bodies3D::Cone@Evaluation.CRTP.Cone const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x1224>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
               	mov	eax, 0x24
               	mov	edx, 0x4
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&), float (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, float (dyno::T const&), float (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x122c>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
               	mov	eax, 0x20
               	mov	edx, 0x4
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&), float (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, float (dyno::T const&), float (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x1230>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&), float (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, float (dyno::T const&), float (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube const&), float (Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, float (dyno::T const&), float (Bodies3D::Cube@Evaluation.CRTP.Cube const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'(Bodies3D::Triangle@Evaluation.CRTP.Triangle const&), float (Bodies3D::Triangle@Evaluation.CRTP.Triangle const&)>, float (dyno::T const&), float (Bodies3D::Triangle@Evaluation.CRTP.Triangle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x1234>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'(Bodies3D::Square@Evaluation.CRTP.Square const&), float (Bodies3D::Square@Evaluation.CRTP.Square const&)>, float (dyno::T const&), float (Bodies3D::Square@Evaluation.CRTP.Square const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const&), float (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const&)>, float (dyno::T const&), float (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'(Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const&), float (Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const&)>, float (dyno::T const&), float (Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x122c>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'(Bodies3D::Circle@Evaluation.CRTP.Circle const&), float (Bodies3D::Circle@Evaluation.CRTP.Circle const&)>, float (dyno::T const&), float (Bodies3D::Circle@Evaluation.CRTP.Circle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x122c>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x7cd0>
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

<_ZSt9terminatev@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>

<__cxa_begin_catch@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
               	push	0x5
               	jmp	 <.plt>

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x48>
               	push	0x6
               	jmp	 <.plt>

<malloc@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x50>
               	push	0x7
               	jmp	 <.plt>

<free@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x58>
               	push	0x8
               	jmp	 <.plt>

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x60>
               	push	0x9
               	jmp	 <.plt>
