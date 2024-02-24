
build/ZEvaluation/bin/Dyno:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x57c0>
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
               	mov	rax, qword ptr  <memset+0x57d0>
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
               	mov	rax, qword ptr  <memset+0x57d8>
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
               	cmp	qword ptr , 0x0 <memset+0x57e0>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
               	int3
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
<initializer for module Std>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle&), void (Bodies3D::Circle&)>, void (dyno::T&), void (Bodies3D::Circle&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Square, void>::'lambda'(Bodies3D::Square&), void (Bodies3D::Square&)>, void (dyno::T&), void (Bodies3D::Square&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse&), void (Bodies3D::Ellipse&)>, void (dyno::T&), void (Bodies3D::Ellipse&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle&), void (Bodies3D::Triangle&)>, void (dyno::T&), void (Bodies3D::Triangle&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle&), void (Bodies3D::Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone&), void (Bodies3D::Cone@Evaluation.CRTP.Cone&)>, void (dyno::T&), void (Bodies3D::Cone@Evaluation.CRTP.Cone&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube&), void (Bodies3D::Cube@Evaluation.CRTP.Cube&)>, void (dyno::T&), void (Bodies3D::Cube@Evaluation.CRTP.Cube&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&), void (Bodies3D::Head@Evaluation.CRTP.Head&)>, void (dyno::T&), void (Bodies3D::Head@Evaluation.CRTP.Head&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&), void (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>, void (dyno::T&), void (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere&), void (Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>, void (dyno::T&), void (Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&), void (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>, void (dyno::T&), void (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&), void (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>, void (dyno::T&), void (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>::apply(void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>:
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
               	call	 <initializer for module Meta.Math.Random>
               	pop	rax
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Int32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Array.Bounded>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Circle__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.CircularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
               	int3
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
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW7Ellipse__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.CircularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Rectangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW9Rectangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW9Rectangle__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.RectangularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
               	int3
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
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Square__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.RectangularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW8Triangle__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.TriangularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW9CubicBody__in_chrg>
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
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW13PyramidicBody__in_chrg>
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
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW11SphericBody__in_chrg>
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

<initializer for module Evaluation.CRTP.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW8Cylinder__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Circle>
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
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Circle>
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
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	call	 <initializer for module Evaluation.CRTP.Ellipse>
               	call	 <initializer for module Evaluation.CRTP.Rectangle>
               	call	 <initializer for module Evaluation.CRTP.Square>
               	call	 <initializer for module Evaluation.CRTP.Triangle>
               	call	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
               	call	 <initializer for module Evaluation.CRTP.Cube>
               	call	 <initializer for module Evaluation.CRTP.Cuboid>
               	call	 <initializer for module Evaluation.CRTP.Pyramid>
               	call	 <initializer for module Evaluation.CRTP.Sphere>
               	call	 <initializer for module Evaluation.CRTP.BasicSphere>
               	call	 <initializer for module Evaluation.CRTP.Cylinder>
               	call	 <initializer for module Evaluation.CRTP.Cone>
               	call	 <initializer for module Evaluation.CRTP.Ellipsoid>
               	call	 <initializer for module Evaluation.CRTP.Head>
               	pop	rax
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, void (dyno::T&), void (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>::apply(void*)>
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
               	sub	rsp, 0x128
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
               	mov	qword ptr [rsp + 0x28], rdx
               	movsxd	rax, edx
               	shl	rax, 0x4
               	lea	rdi, [rax + 4*rax]
               	mov	rsi, qword ptr  <memset+0x57e8>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x48], rax
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
               	mov	r10, rdi
               	shr	r10, 0x1f
               	xor	r10, rdi
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
               	xor	ecx, ecx
               	mov	qword ptr [rsp], rcx
               	mov	qword ptr [rsp + 0x68], rsi
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x10], rcx
               	mov	qword ptr [rsp + 0x70], r10
               	mov	rdi, r10
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x20], r8
               	mov	qword ptr [rsp + 0x40], r9
               	xor	r10d, r10d
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
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L5>
<L4>:
               	bt	r14, rax
               	jae	 <L6>
               	xor	r10, r9
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp], rsi
               	jmp	 <L6>
<L5>:
               	movabs	rbx, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop	dword ptr [rax + rax]
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
               	bt	rbx, rcx
               	jae	 <L9>
               	xor	r10, r9
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp], rsi
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x30], r10
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
               	xor	qword ptr [rsp + 0x30], r9
               	xor	r10, r8
               	mov	r12, r10
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp], rsi
               	jmp	 <L12>
<L11>:
               	movabs	rbp, 0x39abdc4529b1661c
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
               	bt	rbp, r10
               	jae	 <L15>
               	xor	qword ptr [rsp + 0x30], r9
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp], rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	r13d, r13d
               	mov	rsi, qword ptr [rsp]
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x8], rax
               	mov	rdi, qword ptr [rsp + 0x10]
               	xor	r15d, r15d
               	mov	r8, r12
               	mov	r9, qword ptr [rsp + 0x30]
               	xor	edx, edx
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
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
               	xor	rdx, r9
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	r13, rsi
               	jmp	 <L18>
<L17>:
               	xor	r10d, r10d
               	jmp	 <L19>
               	nop
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
               	bt	rbx, r10
               	jae	 <L21>
               	xor	rdx, r9
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	r13, rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
               	nop
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
               	xor	rdx, r9
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	r13, rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
               	nop
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
               	bt	rbp, r10
               	jae	 <L27>
               	xor	rdx, r9
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x8], rdi
               	xor	r13, rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	r11d, r11d
               	mov	rsi, r13
               	xor	ecx, ecx
               	mov	rdi, qword ptr [rsp + 0x8]
               	xor	ebp, ebp
               	mov	r8, r15
               	mov	r9, rdx
               	xor	ebx, ebx
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
<L30>:
               	mov	rax, r11
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
               	mov	r11, rax
               	je	 <L29>
<L28>:
               	bt	r14, r10
               	jae	 <L30>
               	xor	rbx, r9
               	xor	rbp, r8
               	xor	rcx, rdi
               	xor	r11, rsi
               	jmp	 <L30>
<L29>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x50], r15
               	jmp	 <L31>
               	nop	word ptr [rax + rax]
<L33>:
               	mov	r15, r11
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
               	mov	r11, r15
               	je	 <L32>
<L31>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, r10
               	jae	 <L33>
               	mov	rax, rcx
               	xor	rbx, r9
               	xor	rbp, r8
               	xor	rax, rdi
               	mov	rcx, rax
               	xor	r11, rsi
               	jmp	 <L33>
<L32>:
               	xor	eax, eax
               	mov	r15, rcx
               	mov	rcx, rbp
               	movabs	r14, -0x56a7d9e71fc03656
               	movabs	rbp, 0x39abdc4529b1661c
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
               	bt	r14, rax
               	jae	 <L36>
               	xor	rbx, r9
               	xor	rcx, r8
               	xor	r15, rdi
               	xor	r11, rsi
               	jmp	 <L36>
<L35>:
               	xor	eax, eax
               	mov	r10, r12
               	jmp	 <L37>
               	nop
<L39>:
               	xor	rbx, r9
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x38], rcx
               	xor	r15, rdi
               	xor	r11, rsi
<L40>:
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
               	mov	rcx, qword ptr [rsp + 0x38]
               	je	 <L38>
<L37>:
               	bt	rbp, rax
               	jb	 <L39>
               	mov	qword ptr [rsp + 0x38], rcx
               	jmp	 <L40>
<L38>:
               	mov	eax, 0x40
               	nop	dword ptr [rax + rax]
<L41>:
               	dec	rax
               	jne	 <L41>
               	mov	qword ptr [rsp + 0x60], r11
               	mov	eax, 0x40
               	mov	rsi, qword ptr [rsp + 0x40]
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	rdi, r13
               	nop	dword ptr [rax]
<L42>:
               	dec	rax
               	jne	 <L42>
               	mov	eax, 0x40
               	mov	r11, rdx
               	mov	r13, qword ptr [rsp + 0x48]
               	nop	word ptr cs:[rax + rax]
<L43>:
               	dec	rax
               	jne	 <L43>
               	mov	eax, 0x40
               	mov	rdx, qword ptr [rsp + 0x28]
               	nop
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
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L104>:
               	dec	rax
               	jne	 <L104>
               	test	edx, edx
               	je	 <L105>
               	vmovq	xmm0, rcx
               	vmovq	xmm1, qword ptr [rsp + 0x50]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	vmovq	xmm1, r10
               	vmovq	xmm2, r8
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vinserti128	ymm0, ymm1, xmm0, 0x1
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vpsrlq	ymm1, ymm0, 0x39
               	vpsllq	ymm0, ymm0, 0x7
               	vpor	ymm0, ymm0, ymm1
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm1, ymm1, ymm0
               	mov	r14d, edx
               	mov	r9d, 0x40
               	xor	ebp, ebp
               	vmovd	eax, xmm1
               	movzx	ecx, al
               	imul	eax, ecx, 0x4f
               	shr	eax, 0xa
               	lea	edx, [rax + 2*rax]
               	lea	eax, [rax + 4*rdx]
               	sub	cl, al
               	lea	r12, [r13 + 0x40]
               	mov	eax, 0x40
               	mov	qword ptr [rsp + 0x28], rax
               	lea	rax, [r9 + r13]
               	add	rax, -0x30
               	mov	r9, r14
               	movzx	ecx, cl
               	lea	rdx,  <memset+0x11c0>
               	movsxd	rcx, dword ptr [rdx + 4*rcx]
               	add	rcx, rdx
               	mov	qword ptr [rsp + 0x58], r14
               	jmp	rcx
<L105>:
               	vpxor	xmm0, xmm0, xmm0
<L121>:
               	test	r13, r13
               	je	 <L106>
               	mov	rdi, r13
               	vmovdqa	xmmword ptr [rsp + 0x10], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
<L106>:
               	vpxor	xmm1, xmm1, xmm1
               	xor	eax, eax
               	vucomiss	xmm0, xmm1
               	setne	al
               	add	rsp, 0x128
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L132>:
               	shl	rbp, 0x4
               	lea	rcx, [4*rbp]
               	add	rcx, rbp
               	mov	rax, rcx
               	shr	rax, 0x4
               	imul	ebp, eax, 0xcccccccd
               	test	ebp, ebp
               	je	 <L107>
               	mov	qword ptr [rsp], rcx
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0xe0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xc0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xa0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x80], ymm0
               	jmp	 <L108>
               	nop	word ptr cs:[rax + rax]
<L109>:
               	vmovss	xmm0, dword ptr [rsp + 0x84]
               	vmovss	dword ptr [rsp + 0x88], xmm0
               	mov	r15d, 0x1
<L119>:
               	mov	eax, r15d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x80]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r13, rbx
<L108>:
               	mov	r14d, ebp
               	neg	r14d
               	and	r14d, ebp
               	lea	rbx, [r14 + 4*r14]
               	shl	rbx, 0x4
               	add	rbx, r13
               	test	r14d, r14d
               	je	 <L109>
               	mov	dword ptr [rsp + 0x10], ebp
               	xor	ecx, ecx
               	mov	ebp, 0x1
               	mov	r12d, 0x1
               	jmp	 <L110>
               	nop	word ptr cs:[rax + rax]
<L114>:
               	mov	ebp, r15d
               	movsxd	rax, r15d
               	vmovss	dword ptr [rsp + 4*rax + 0x80], xmm0
               	add	r13, 0x50
               	mov	ecx, 0xfffffffe
               	sub	ecx, r12d
               	lea	edx, [r12 + 0x1]
               	bsr	esi, edx
               	xor	esi, 0x1f
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r12d, edx
               	cmp	r13, rbx
               	je	 <L111>
<L110>:
               	mov	r15d, ecx
               	mov	rax, qword ptr [r13]
               	mov	rax, qword ptr [rax]
               	cmp	byte ptr [r13 + 0x40], 0x0
               	je	 <L112>
               	mov	rdi, qword ptr [r13 + 0x10]
               	jmp	 <L113>
               	nop
<L112>:
               	lea	rdi, [r13 + 0x10]
<L113>:
               	vzeroupper
               	call	rax
               	mov	ecx, r15d
               	sub	ecx, ebp
               	jl	 <L114>
               	movsxd	rax, ebp
               	cmp	ecx, 0x1f
               	jb	 <L115>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vpblendd	xmm0, xmm0, xmmword ptr , 0xe <memset+0x11b0> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0xe0]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	word ptr [rax + rax]
<L116>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi + 4*rdi - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rsi + 4*rdi - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rsi + 4*rdi]
               	add	rdi, 0x20
               	cmp	rdx, rdi
               	jne	 <L116>
               	vaddps	ymm0, ymm1, ymm0
               	vaddps	ymm1, ymm3, ymm2
               	vaddps	ymm0, ymm1, ymm0
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rdx
               	je	 <L114>
               	add	rax, rdx
<L115>:
               	mov	ecx, r15d
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x80
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L117>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L117>
               	jmp	 <L114>
               	nop	word ptr cs:[rax + rax]
<L111>:
               	mov	ebp, dword ptr [rsp + 0x10]
               	sub	ebp, r14d
               	je	 <L118>
               	vmovss	dword ptr [rsp + 4*rax + 0x84], xmm0
               	mov	r13, rbx
               	test	r15d, r15d
               	jns	 <L119>
               	jmp	 <L108>
<L118>:
               	mov	r13, qword ptr [rsp + 0x48]
               	mov	r15, qword ptr [rsp + 0x28]
               	mov	rcx, qword ptr [rsp]
               	test	rcx, rcx
               	jne	 <L120>
               	jmp	 <L121>
<L107>:
               	vpxor	xmm0, xmm0, xmm0
               	test	rcx, rcx
               	je	 <L121>
<L120>:
               	vmovdqa	xmmword ptr [rsp + 0x10], xmm0
               	add	r15, -0x40
               	mov	rbx, r13
               	jmp	 <L122>
               	nop	word ptr [rax + rax]
<L124>:
               	mov	rax, qword ptr [rbx]
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [rax + 0x18]
<L125>:
               	add	rbx, 0x50
               	add	r15, -0x50
               	je	 <L123>
<L122>:
               	lea	r14, [rbx + 0x10]
               	cmp	byte ptr [rbx + 0x40], 0x0
               	je	 <L124>
               	mov	rdi, qword ptr [r14]
               	test	rdi, rdi
               	je	 <L125>
               	mov	rax, qword ptr [rbx]
               	vzeroupper
               	call	qword ptr [rax + 0x18]
               	mov	rdi, qword ptr [r14]
               	call	 <free@plt>
               	jmp	 <L125>
<L123>:
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	jmp	 <L121>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Circle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Circle, void>::'lambda'(void*, Bodies3D::Circle const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Circle, void>::'lambda'(void*, Bodies3D::Circle&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Circle, void>::'lambda'()>>>>
<L129>:
               	mov	qword ptr [r12 - 0x40], rcx
               	mov	byte ptr [r12], 0x0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	mov	r14, r15
               	inc	rbp
               	test	bpl, 0x7
               	jne	 <L126>
               	jmp	 <L127>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipse, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Ellipse, void>::'lambda'(void*, Bodies3D::Ellipse const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Ellipse, void>::'lambda'(void*, Bodies3D::Ellipse&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipse, void>::'lambda'()>>>>
<L128>:
               	mov	qword ptr [r12 - 0x40], rcx
               	mov	byte ptr [r12], 0x0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	mov	dword ptr [rax + 0x20], 0x0
               	mov	r14, r15
               	inc	rbp
               	test	bpl, 0x7
               	jne	 <L126>
               	jmp	 <L127>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Rectangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Rectangle, void>::'lambda'(void*, Bodies3D::Rectangle const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Rectangle, void>::'lambda'(void*, Bodies3D::Rectangle&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Rectangle, void>::'lambda'()>>>>
               	jmp	 <L128>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Square, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square, void>::'lambda'(Bodies3D::Square const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Square, void>::'lambda'(void*, Bodies3D::Square const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Square, void>::'lambda'(void*, Bodies3D::Square&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Square, void>::'lambda'(Bodies3D::Square&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Square, void>::'lambda'()>>>>
               	jmp	 <L129>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Triangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Triangle, void>::'lambda'(void*, Bodies3D::Triangle const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Triangle, void>::'lambda'(void*, Bodies3D::Triangle&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Triangle, void>::'lambda'()>>>>
               	jmp	 <L128>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cube@Evaluation.CRTP.Cube, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(void*, Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(void*, Bodies3D::Cube@Evaluation.CRTP.Cube&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'()>>>>
               	jmp	 <L129>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'()>>>>
<L131>:
               	mov	qword ptr [r12 - 0x40], rcx
               	mov	byte ptr [r12], 0x0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax], ymm0
               	mov	qword ptr [rax + 0x20], 0x0
               	mov	r14, r15
               	inc	rbp
               	test	bpl, 0x7
               	je	 <L127>
<L126>:
               	vpsrlq	ymm1, ymm1, 0x8
               	jmp	 <L130>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'()>>>>
               	jmp	 <L131>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Sphere@Evaluation.CRTP.Sphere, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'()>>>>
               	jmp	 <L129>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'()>>>>
               	jmp	 <L128>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cone@Evaluation.CRTP.Cone, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(void*, Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(void*, Bodies3D::Cone@Evaluation.CRTP.Cone&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'()>>>>
               	jmp	 <L128>
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'()>>>>
               	jmp	 <L131>
               	vmovdqu	ymmword ptr [rsp + 0x100], ymm1
               	mov	qword ptr [rsp + 0x78], rbx
               	mov	qword ptr [rsp + 0x40], r15
               	mov	qword ptr [rsp + 0x20], r11
               	lea	rax,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Head@Evaluation.CRTP.Head, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(void*, Bodies3D::Head@Evaluation.CRTP.Head const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(void*, Bodies3D::Head@Evaluation.CRTP.Head&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'()>>>>
               	mov	qword ptr [r12 - 0x40], rax
               	mov	byte ptr [r12], 0x1
               	mov	r15, rsi
               	mov	r14, rdi
               	mov	edi, 0x1
               	mov	esi, 0x60
               	mov	r13, r8
               	mov	rbx, rbp
               	mov	rbp, r10
               	vzeroupper
               	call	 <calloc@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x100]
               	mov	r9, qword ptr [rsp + 0x58]
               	mov	rdi, r14
               	mov	rcx, qword ptr [rsp + 0x78]
               	mov	r10, rbp
               	mov	rbp, rbx
               	mov	rbx, rcx
               	mov	r8, r13
               	mov	r13, qword ptr [rsp + 0x48]
               	mov	r11, qword ptr [rsp + 0x20]
               	mov	rsi, r15
               	mov	r15, qword ptr [rsp + 0x40]
               	mov	qword ptr [r12 - 0x30], rax
               	mov	r14, r15
               	inc	rbp
               	test	bpl, 0x7
               	jne	 <L126>
<L127>:
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x70]
               	xor	rcx, rsi
               	mov	r9, qword ptr [rsp + 0x68]
               	xor	r9, r8
               	xor	r8, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x70], rcx
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rcx, qword ptr [rsp + 0x10]
               	xor	rcx, rdx
               	mov	qword ptr [rsp + 0x20], rbp
               	mov	rbp, rbx
               	mov	rbx, qword ptr [rsp]
               	xor	rbx, r10
               	xor	r10, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x10], rcx
               	mov	rax, qword ptr [rsp + 0x50]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	r15, qword ptr [rsp + 0x8]
               	xor	r15, r11
               	xor	rdi, rax
               	xor	rax, r15
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x8], r15
               	mov	rcx, qword ptr [rsp + 0x38]
               	mov	r15, r13
               	mov	r13, r8
               	mov	r8, rdi
               	mov	rdi, r10
               	mov	r10, r11
               	mov	r11, rsi
               	mov	rsi, rcx
               	shl	rsi, 0x11
               	xor	r14, rbp
               	mov	r12, qword ptr [rsp + 0x60]
               	xor	r12, rcx
               	xor	rcx, r14
               	xor	r14, rsi
               	mov	rsi, r11
               	mov	r11, r10
               	mov	r10, rdi
               	mov	rdi, r8
               	mov	r8, r13
               	mov	r13, r15
               	mov	qword ptr [rsp + 0x50], rax
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x38], rcx
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm0, rcx
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm1, rax
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm2, rax
               	lea	rax, [r8 + 4*r8]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm3, rax
               	xor	rsi, r9
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x68], r9
               	mov	r9, qword ptr [rsp + 0x58]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	xor	rdx, rbx
               	mov	qword ptr [rsp + 0x30], rdx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp], rbx
               	mov	rbx, rbp
               	mov	rbp, qword ptr [rsp + 0x20]
               	xor	r11, rdi
               	rol	rdi, 0x2d
               	xor	rbx, r12
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x60], r12
               	vpunpcklqdq	xmm1, xmm3, xmm2 # xmm1 = xmm3[0],xmm2[0]
               	vinserti128	ymm1, ymm1, xmm0, 0x1
<L130>:
               	mov	r15, qword ptr [rsp + 0x28]
               	add	r15, 0x50
               	cmp	r9, rbp
               	mov	qword ptr [rsp + 0x28], r15
               	je	 <L132>
               	vmovd	eax, xmm1
               	movzx	ecx, al
               	imul	eax, ecx, 0x4f
               	shr	eax, 0xa
               	lea	edx, [rax + 2*rax]
               	lea	eax, [rax + 4*rdx]
               	sub	cl, al
               	lea	r12, [r15 + r13]
               	lea	rax, [r15 + r13]
               	add	rax, -0x30
               	movzx	ecx, cl
               	lea	rdx,  <memset+0x11c0>
               	movsxd	rcx, dword ptr [rdx + 4*rcx]
               	add	rcx, rdx
               	mov	r15, r14
               	jmp	rcx
               	int3
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
               	vmulss	xmm1, xmm1, dword ptr  <memset+0x1204>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(void*, Bodies3D::Head@Evaluation.CRTP.Head const&), void (void*, Bodies3D::Head@Evaluation.CRTP.Head const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Head@Evaluation.CRTP.Head const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(void*, Bodies3D::Head@Evaluation.CRTP.Head&&), void (void*, Bodies3D::Head@Evaluation.CRTP.Head&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Head@Evaluation.CRTP.Head&&)>::apply(void*, void*)>:
               	vmovups	ymm0, ymmword ptr [rsi]
               	vmovups	ymm1, ymmword ptr [rsi + 0x20]
               	vmovups	ymm2, ymmword ptr [rsi + 0x40]
               	vmovups	ymmword ptr [rdi + 0x40], ymm2
               	vmovups	ymmword ptr [rdi + 0x20], ymm1
               	vmovups	ymmword ptr [rdi], ymm0
               	vzeroupper
               	ret

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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x1204>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&), void (void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&), void (void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&), void (void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&&), void (void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&&)>::apply(void*, void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&&), void (void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&&)>::apply(void*, void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&&), void (void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&&)>::apply(void*, void*)>:
               	mov	rax, qword ptr [rsi + 0x20]
               	mov	qword ptr [rdi + 0x20], rax
               	vmovups	ymm0, ymmword ptr [rsi]
               	vmovups	ymmword ptr [rdi], ymm0
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x11f4>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Ellipse, void>::'lambda'(void*, Bodies3D::Ellipse const&), void (void*, Bodies3D::Ellipse const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Ellipse const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Triangle, void>::'lambda'(void*, Bodies3D::Triangle const&), void (void*, Bodies3D::Triangle const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Triangle const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Rectangle, void>::'lambda'(void*, Bodies3D::Rectangle const&), void (void*, Bodies3D::Rectangle const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Rectangle const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(void*, Bodies3D::Cone@Evaluation.CRTP.Cone const&), void (void*, Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Cone@Evaluation.CRTP.Cone const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&), void (void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Ellipse, void>::'lambda'(void*, Bodies3D::Ellipse&&), void (void*, Bodies3D::Ellipse&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Ellipse&&)>::apply(void*, void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Triangle, void>::'lambda'(void*, Bodies3D::Triangle&&), void (void*, Bodies3D::Triangle&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Triangle&&)>::apply(void*, void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Rectangle, void>::'lambda'(void*, Bodies3D::Rectangle&&), void (void*, Bodies3D::Rectangle&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Rectangle&&)>::apply(void*, void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(void*, Bodies3D::Cone@Evaluation.CRTP.Cone&&), void (void*, Bodies3D::Cone@Evaluation.CRTP.Cone&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Cone@Evaluation.CRTP.Cone&&)>::apply(void*, void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&&), void (void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&&)>::apply(void*, void*)>:
               	mov	eax, dword ptr [rsi + 0x20]
               	mov	dword ptr [rdi + 0x20], eax
               	vmovups	ymm0, ymmword ptr [rsi]
               	vmovups	ymmword ptr [rdi], ymm0
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipse, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Triangle, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Rectangle, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x11f8>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Circle, void>::'lambda'(void*, Bodies3D::Circle const&), void (void*, Bodies3D::Circle const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Circle const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Square, void>::'lambda'(void*, Bodies3D::Square const&), void (void*, Bodies3D::Square const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Square const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(void*, Bodies3D::Cube@Evaluation.CRTP.Cube const&), void (void*, Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Cube@Evaluation.CRTP.Cube const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&), void (void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>, void (void*, dyno::T const&), void (void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>::apply(void*, void const*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Circle, void>::'lambda'(void*, Bodies3D::Circle&&), void (void*, Bodies3D::Circle&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Circle&&)>::apply(void*, void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Square, void>::'lambda'(void*, Bodies3D::Square&&), void (void*, Bodies3D::Square&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Square&&)>::apply(void*, void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(void*, Bodies3D::Cube@Evaluation.CRTP.Cube&&), void (void*, Bodies3D::Cube@Evaluation.CRTP.Cube&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Cube@Evaluation.CRTP.Cube&&)>::apply(void*, void*)>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&), void (void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)>, void (void*, dyno::T&&), void (void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)>::apply(void*, void*)>:
               	vmovups	ymm0, ymmword ptr [rsi]
               	vmovups	ymmword ptr [rdi], ymm0
               	vzeroupper
               	ret
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Circle, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Square, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
               	mov	eax, 0x20
               	mov	edx, 0x4
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&), float (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, float (dyno::T const&), float (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x11fc>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle const&), float (Bodies3D::Triangle const&)>, float (dyno::T const&), float (Bodies3D::Triangle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x1200>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square, void>::'lambda'(Bodies3D::Square const&), float (Bodies3D::Square const&)>, float (dyno::T const&), float (Bodies3D::Square const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle const&), float (Bodies3D::Rectangle const&)>, float (dyno::T const&), float (Bodies3D::Rectangle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse const&), float (Bodies3D::Ellipse const&)>, float (dyno::T const&), float (Bodies3D::Ellipse const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x11f8>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle const&), float (Bodies3D::Circle const&)>, float (dyno::T const&), float (Bodies3D::Circle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x11f8>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x57c8>
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

<_ZSt9terminatev@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>

<__cxa_begin_catch@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x30>
               	push	0x3
               	jmp	 <.plt>

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>

<free@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
               	push	0x5
               	jmp	 <.plt>

<calloc@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x48>
               	push	0x6
               	jmp	 <.plt>

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x50>
               	push	0x7
               	jmp	 <.plt>
