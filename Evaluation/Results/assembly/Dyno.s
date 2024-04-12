
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
               	call	qword ptr  <memset+0x76a0>
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
               	mov	rax, qword ptr  <memset+0x76b0>
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
               	mov	rax, qword ptr  <memset+0x76b8>
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
               	cmp	qword ptr , 0x0 <memset+0x76c0>
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

<initializer for module Evaluation.Dependency.CommonData>:
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
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	call	 <initializer for module Meta.Auto.Simd.Int32>
               	pop	rax
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Int32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
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

<initializer for module Meta.Auto.Simd.UInt32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
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

<initializer for module Meta.Auto.Simd.UInt8>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5UInt8__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5UInt8__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.UInt32>
               	pop	rax
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	call	 <initializer for module Meta.Auto.Array.Bounded>
               	pop	rax
               	jmp	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Array.Bounded>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
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
               	call	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, void (dyno::T&), void (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>::apply(void*)>
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
               	sub	rsp, 0x3a8
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
               	mov	qword ptr [rsp + 0x318], rdx
               	movsxd	rax, edx
               	shl	rax, 0x4
               	lea	rdi, [rax + 4*rax]
               	mov	rsi, qword ptr  <memset+0x76c8>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp], rax
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
               	mov	r11, rsi
               	shr	r11, 0x1f
               	xor	r11, rsi
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
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x228], rcx
               	mov	rsi, rcx
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x348], r8
               	mov	rdi, r8
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x240], r11
               	mov	r8, r11
               	mov	qword ptr [rsp + 0x350], r10
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
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L5>
<L4>:
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rdx
               	jae	 <L6>
               	xor	r10, r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L6>
<L5>:
               	mov	qword ptr [rsp + 0x58], r12
               	movabs	r13, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
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
               	bt	r13, rcx
               	jae	 <L9>
               	xor	r10, r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x218], r10
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop
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
               	mov	r10, qword ptr [rsp + 0x218]
               	jae	 <L12>
               	xor	r10, r9
               	mov	qword ptr [rsp + 0x218], r10
               	xor	qword ptr [rsp + 0x58], r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r10d, r10d
               	jmp	 <L13>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x340], r14
               	mov	rsi, r14
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x10], rdi
               	mov	rdi, r15
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x40], r8
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	r9, qword ptr [rsp + 0x218]
               	xor	r14d, r14d
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
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L18>
               	xor	r14, r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	rax, rsi
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
               	bt	r13, r10
               	jae	 <L21>
               	xor	r14, r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	rax, rsi
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
               	bt	rcx, r10
               	jae	 <L24>
               	xor	r14, r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	rax, rsi
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
               	xor	r14, r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	rax, rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x208], rsi
               	mov	rsi, rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x200], rdi
               	mov	rdi, qword ptr [rsp + 0x10]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x8], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r9, r14
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1f8], r11
               	jmp	 <L28>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x208], rsi
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
               	bt	r13, r10
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x208], rsi
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
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x208], rsi
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
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x208], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1f0], rsi
               	mov	rsi, qword ptr [rsp + 0x208]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e8], rdi
               	mov	rdi, qword ptr [rsp + 0x200]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x38], r8
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	r9, qword ptr [rsp + 0x1f8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1e0], r11
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
               	xor	qword ptr [rsp + 0x1e0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1f0], rsi
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
               	bt	r13, r10
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1e0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1f0], rsi
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
               	xor	qword ptr [rsp + 0x1e0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1f0], rsi
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
               	xor	qword ptr [rsp + 0x1e0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1f0], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1d8], rsi
               	mov	rsi, qword ptr [rsp + 0x1f0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d0], rdi
               	mov	rdi, qword ptr [rsp + 0x1e8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x30], r8
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	r9, qword ptr [rsp + 0x1e0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1c8], r11
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
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
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
               	bt	r13, r10
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
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
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
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
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
               	jmp	 <L63>
<L62>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1c0], rsi
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b8], rdi
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x28], r8
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	r9, qword ptr [rsp + 0x1c8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1b0], r11
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
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
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
               	bt	r13, r10
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
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
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
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
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1a8], rsi
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], rdi
               	mov	rdi, qword ptr [rsp + 0x1b8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x20], r8
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x1b0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x198], r11
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
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
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
               	bt	r13, r10
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
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
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
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
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
               	jmp	 <L87>
<L86>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x190], rsi
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x188], rdi
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x18], r8
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x198]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x180], r11
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
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
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
               	bt	r13, r10
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
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
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
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
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
               	jmp	 <L99>
<L98>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x178], rsi
               	mov	rsi, qword ptr [rsp + 0x190]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x170], rdi
               	mov	rdi, qword ptr [rsp + 0x188]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa0], r8
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	r9, qword ptr [rsp + 0x180]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x168], r11
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
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
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
               	bt	r13, r10
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
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
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
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
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
               	jmp	 <L111>
<L110>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x160], rsi
               	mov	rsi, qword ptr [rsp + 0x178]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x158], rdi
               	mov	rdi, qword ptr [rsp + 0x170]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x98], r8
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	r9, qword ptr [rsp + 0x168]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x150], r11
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
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
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
               	bt	r13, r10
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
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
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
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
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x148], rsi
               	mov	rsi, qword ptr [rsp + 0x160]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x140], rdi
               	mov	rdi, qword ptr [rsp + 0x158]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x90], r8
               	mov	r8, qword ptr [rsp + 0x98]
               	mov	r9, qword ptr [rsp + 0x150]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x138], r11
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
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
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
               	bt	r13, r10
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
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
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
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
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x130], rsi
               	mov	rsi, qword ptr [rsp + 0x148]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x128], rdi
               	mov	rdi, qword ptr [rsp + 0x140]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x88], r8
               	mov	r8, qword ptr [rsp + 0x90]
               	mov	r9, qword ptr [rsp + 0x138]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x120], r11
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
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
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
               	bt	r13, r10
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
               	jmp	 <L141>
<L140>:
               	xor	r10d, r10d
               	jmp	 <L142>
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
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
               	jmp	 <L144>
<L143>:
               	xor	r10d, r10d
               	jmp	 <L145>
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
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x118], rsi
               	mov	rsi, qword ptr [rsp + 0x130]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x110], rdi
               	mov	rdi, qword ptr [rsp + 0x128]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x80], r8
               	mov	r8, qword ptr [rsp + 0x88]
               	mov	r9, qword ptr [rsp + 0x120]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x108], r11
               	jmp	 <L148>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
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
               	bt	r13, r10
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
               	jmp	 <L153>
<L152>:
               	xor	r10d, r10d
               	jmp	 <L154>
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
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
               	jmp	 <L156>
<L155>:
               	xor	r10d, r10d
               	jmp	 <L157>
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
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
               	jmp	 <L159>
<L158>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x100], rsi
               	mov	rsi, qword ptr [rsp + 0x118]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf8], rdi
               	mov	rdi, qword ptr [rsp + 0x110]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	r9, qword ptr [rsp + 0x108]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xf0], r11
               	jmp	 <L160>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
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
               	bt	r13, r10
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
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
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
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
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
               	jmp	 <L171>
<L170>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xe8], rsi
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe0], rdi
               	mov	rdi, qword ptr [rsp + 0xf8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x70], r8
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	r9, qword ptr [rsp + 0xf0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xd8], r11
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
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
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
               	bt	r13, r10
               	jae	 <L177>
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
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
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
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
               	xor	qword ptr [rsp + 0xd8], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xd0], rsi
               	mov	rsi, qword ptr [rsp + 0xe8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc8], rdi
               	mov	rdi, qword ptr [rsp + 0xe0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x68], r8
               	mov	r8, qword ptr [rsp + 0x70]
               	mov	r9, qword ptr [rsp + 0xd8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xc0], r11
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
               	xor	qword ptr [rsp + 0xc0], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
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
               	bt	r13, r10
               	jae	 <L189>
               	xor	qword ptr [rsp + 0xc0], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
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
               	xor	qword ptr [rsp + 0xc0], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
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
               	xor	qword ptr [rsp + 0xc0], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd0], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xb8], rsi
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb0], rdi
               	mov	rdi, qword ptr [rsp + 0xc8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r8
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	r9, qword ptr [rsp + 0xc0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xa8], r11
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
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	bt	r13, r10
               	jae	 <L201>
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x338], r15
               	mov	qword ptr [rsp + 0x250], rbx
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, qword ptr [rsp + 0xb8]
               	xor	r12d, r12d
               	mov	rdi, qword ptr [rsp + 0xb0]
               	xor	r15d, r15d
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r9, qword ptr [rsp + 0xa8]
               	xor	ebp, ebp
               	mov	qword ptr [rsp + 0x220], rax
               	movabs	rax, 0x180ec6d33cfd0aba
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
               	bt	rax, r10
               	jae	 <L210>
               	xor	rbp, r9
               	xor	r15, r8
               	xor	r12, rdi
               	xor	rbx, rsi
               	jmp	 <L210>
<L209>:
               	xor	r10d, r10d
               	mov	rax, r12
               	jmp	 <L211>
               	nop
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
               	bt	r13, r10
               	jae	 <L213>
               	xor	rbp, r9
               	xor	r15, r8
               	xor	rax, rdi
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
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L215>
<L214>:
               	bt	rcx, r10
               	jae	 <L216>
               	xor	rbp, r9
               	xor	r15, r8
               	xor	rax, rdi
               	xor	rbx, rsi
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
               	xor	rbp, r9
               	xor	r15, r8
               	xor	rax, rdi
               	xor	rbx, rsi
               	jmp	 <L219>
<L218>:
               	xor	r10d, r10d
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x320], rbx
               	mov	rsi, rbx
               	mov	r9, rbp
               	xor	ebp, ebp
               	mov	qword ptr [rsp + 0x330], rax
               	mov	rdi, rax
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x230], r15
               	mov	r8, r15
               	mov	qword ptr [rsp + 0x328], r9
               	xor	r15d, r15d
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L220>
               	nop	dword ptr [rax]
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
               	bt	rax, r10
               	jae	 <L222>
               	xor	r15, r9
               	xor	rbx, r8
               	xor	rbp, rdi
               	xor	r12, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	jmp	 <L223>
               	nop	dword ptr [rax]
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
               	bt	r13, r10
               	jae	 <L225>
               	xor	r15, r9
               	xor	rbx, r8
               	xor	rbp, rdi
               	xor	r12, rsi
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	mov	r11, qword ptr [rsp + 0x40]
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
               	xor	r15, r9
               	xor	rbx, r8
               	xor	rbp, rdi
               	xor	r12, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	mov	r10, qword ptr [rsp + 0x228]
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
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L230>
<L229>:
               	bt	rdx, rax
               	jae	 <L231>
               	xor	r15, r9
               	xor	rbx, r8
               	xor	rbp, rdi
               	xor	r12, rsi
               	jmp	 <L231>
<L230>:
               	mov	rax, qword ptr [rsp + 0x240]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x270], rax
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x278], rcx
               	lea	rcx, [r11 + 4*r11]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x8]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x280], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x288], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x290], rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x20]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2a0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b0], rcx
               	mov	rcx, qword ptr [rsp + 0xa0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	rcx, qword ptr [rsp + 0x98]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x90]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2c0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	rcx, qword ptr [rsp + 0x88]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	rcx, qword ptr [rsp + 0x80]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	rdx, qword ptr [rsp + 0x78]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rsi, qword ptr [rsp + 0x70]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2e0], rdx
               	lea	rdx, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2e8], rdx
               	mov	rdx, qword ptr [rsp + 0x68]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2f0], rdx
               	mov	rdx, qword ptr [rsp + 0x60]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2f8], rdx
               	mov	rdx, qword ptr [rsp + 0x230]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	rsi, [rbx + 4*rbx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x300], rdx
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x308], rsi
               	mov	rsi, qword ptr [rsp + 0x318]
               	test	esi, esi
               	je	 <L232>
               	mov	qword ptr [rsp + 0x40], r11
               	mov	esi, esi
               	mov	qword ptr [rsp + 0x358], rsi
               	mov	r13d, 0x40
               	xor	r11d, r11d
               	vbroadcastss	ymm5, dword ptr  <memset+0x1060>
               	vmovdqa	xmm6, xmmword ptr  <memset+0x1030>
               	mov	r8, qword ptr [rsp + 0x220]
               	mov	r9, qword ptr [rsp + 0x10]
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L240>:
               	mov	rsi, qword ptr [rsp + 0x240]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x348]
               	mov	rdx, qword ptr [rsp + 0x350]
               	xor	rcx, rdx
               	xor	r10, rsi
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x240], rsi
               	xor	rdx, r10
               	mov	qword ptr [rsp + 0x350], rdx
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x228], r10
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x348], rcx
               	mov	rsi, qword ptr [rsp + 0x58]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x338]
               	mov	rdi, qword ptr [rsp + 0x218]
               	xor	rdx, rdi
               	mov	rcx, qword ptr [rsp + 0x340]
               	xor	rcx, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x58], rsi
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x218], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x338], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x340], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	mov	rax, rcx
               	shl	rax, 0x11
               	xor	r9, r14
               	xor	r8, rcx
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x40], rcx
               	xor	r14, r8
               	mov	qword ptr [rsp + 0x260], r14
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x10], r9
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x220], r8
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x200]
               	mov	r14, qword ptr [rsp + 0x1f8]
               	xor	rdx, r14
               	mov	rcx, qword ptr [rsp + 0x208]
               	xor	rcx, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x8], rsi
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x1f8], r14
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x200], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x208], rcx
               	mov	rsi, qword ptr [rsp + 0x38]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1e8]
               	mov	r8, qword ptr [rsp + 0x1e0]
               	xor	rdx, r8
               	mov	rcx, qword ptr [rsp + 0x1f0]
               	xor	rcx, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x38], rsi
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x1e0], r8
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1f0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1e8], rdx
               	mov	rsi, qword ptr [rsp + 0x30]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1d0]
               	mov	rcx, qword ptr [rsp + 0x1c8]
               	mov	qword ptr [rsp + 0x360], r13
               	mov	r13, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x1d8]
               	xor	rcx, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x30], rsi
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x1c8], r13
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1d0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1d8], rcx
               	mov	rsi, qword ptr [rsp + 0x28]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1b8]
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	mov	qword ptr [rsp + 0x258], r11
               	mov	r11, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	xor	rcx, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x28], rsi
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x1b0], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1b8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1c0], rcx
               	mov	rsi, qword ptr [rsp + 0x20]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1a0]
               	mov	rcx, qword ptr [rsp + 0x198]
               	mov	qword ptr [rsp + 0x238], r12
               	mov	r12, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	xor	rcx, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x20], rsi
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x198], r12
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1a0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1a8], rcx
               	mov	rsi, qword ptr [rsp + 0x18]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x188]
               	mov	r10, qword ptr [rsp + 0x180]
               	xor	rdx, r10
               	mov	rcx, qword ptr [rsp + 0x190]
               	xor	rcx, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x18], rsi
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x180], r10
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x190], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x188], rdx
               	mov	r13, qword ptr [rsp + 0xa0]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x170]
               	mov	r9, qword ptr [rsp + 0x168]
               	xor	rdx, r9
               	mov	rcx, qword ptr [rsp + 0x178]
               	xor	rcx, r13
               	xor	r13, rdx
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x168], r9
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x170], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x178], rcx
               	mov	r12, qword ptr [rsp + 0x98]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x158]
               	mov	rcx, qword ptr [rsp + 0x150]
               	mov	r14, qword ptr [rsp + 0x320]
               	mov	qword ptr [rsp + 0x210], rbx
               	mov	rbx, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x160]
               	xor	rcx, r12
               	xor	r12, rdx
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x150], rbx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x158], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x160], rcx
               	mov	rbx, qword ptr [rsp + 0x90]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x140]
               	mov	rcx, qword ptr [rsp + 0x138]
               	mov	r11, rbp
               	mov	rbp, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x148]
               	xor	rcx, rbx
               	xor	rbx, rdx
               	xor	rbp, rcx
               	mov	qword ptr [rsp + 0x138], rbp
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x140], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x148], rcx
               	mov	rbp, qword ptr [rsp + 0x88]
               	mov	rax, rbp
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x128]
               	mov	rcx, qword ptr [rsp + 0x120]
               	mov	qword ptr [rsp + 0x248], r15
               	mov	r15, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x130]
               	xor	rcx, rbp
               	xor	rbp, rdx
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x120], r15
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x130], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x128], rdx
               	mov	r15, qword ptr [rsp + 0x80]
               	mov	rsi, r15
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x110]
               	mov	rax, qword ptr [rsp + 0x108]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x118]
               	xor	rcx, r15
               	xor	r15, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x108], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x110], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x118], rcx
               	mov	r10, qword ptr [rsp + 0x78]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xf8]
               	mov	rsi, qword ptr [rsp + 0xf0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x100]
               	xor	rcx, r10
               	xor	r10, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xf0], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xf8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x100], rcx
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xe0]
               	mov	rsi, qword ptr [rsp + 0xd8]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xe8]
               	xor	rcx, r9
               	xor	r9, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xd8], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xe0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xe8], rcx
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc8]
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xd0]
               	xor	rcx, r8
               	xor	r8, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xc0], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xd0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xc8], rdx
               	mov	rdi, qword ptr [rsp + 0x60]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xb0]
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xb8]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xa8], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xb0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xb8], rcx
               	mov	rax, qword ptr [rsp + 0x230]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x330]
               	xor	rcx, qword ptr [rsp + 0x328]
               	xor	r14, qword ptr [rsp + 0x230]
               	xor	qword ptr [rsp + 0x230], rcx
               	xor	qword ptr [rsp + 0x328], r14
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x330], rcx
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x320], r14
               	mov	r14, qword ptr [rsp + 0x260]
               	mov	rax, qword ptr [rsp + 0x210]
               	shl	rax, 0x11
               	xor	r11, qword ptr [rsp + 0x248]
               	mov	rcx, qword ptr [rsp + 0x210]
               	xor	qword ptr [rsp + 0x238], rcx
               	xor	qword ptr [rsp + 0x210], r11
               	xor	r11, rax
               	mov	rax, qword ptr [rsp + 0x240]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x40]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rsi, qword ptr [rsp + 0x8]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x270], rax
               	mov	qword ptr [rsp + 0x278], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x280], rdx
               	mov	rdx, qword ptr [rsp + 0x30]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x288], rsi
               	mov	rsi, qword ptr [rsp + 0x28]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x290], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x298], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2a0], rsi
               	mov	qword ptr [rsp + 0xa0], r13
               	lea	rsi, [4*r13]
               	add	rsi, r13
               	mov	r13, qword ptr [rsp + 0x238]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	qword ptr [rsp + 0x98], r12
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2b0], rdx
               	mov	qword ptr [rsp + 0x90], rbx
               	lea	rdx, [rbx + 4*rbx]
               	mov	rbx, qword ptr [rsp + 0x210]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2b8], rsi
               	mov	qword ptr [rsp + 0x88], rbp
               	lea	rsi, [4*rbp]
               	add	rsi, rbp
               	mov	rbp, r11
               	mov	r11, qword ptr [rsp + 0x258]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2c0], rcx
               	mov	qword ptr [rsp + 0x80], r15
               	lea	rcx, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0x248]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c8], rdx
               	mov	qword ptr [rsp + 0x78], r10
               	lea	rdx, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x228]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2d0], rsi
               	mov	qword ptr [rsp + 0x70], r9
               	lea	rsi, [r9 + 4*r9]
               	mov	r9, qword ptr [rsp + 0x10]
               	rol	rsi, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	qword ptr [rsp + 0x2e0], rdx
               	mov	qword ptr [rsp + 0x68], r8
               	lea	rdx, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x220]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2e8], rsi
               	mov	qword ptr [rsp + 0x60], rdi
               	lea	rsi, [rdi + 4*rdi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2f0], rdx
               	mov	rdx, qword ptr [rsp + 0x230]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2f8], rsi
               	lea	rsi, [rbx + 4*rbx]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x300], rdx
               	mov	qword ptr [rsp + 0x308], rsi
               	xor	r15, r13
               	rol	r13, 0x2d
               	mov	r12, r13
               	mov	r13, qword ptr [rsp + 0x360]
               	add	r13, 0x50
               	cmp	qword ptr [rsp + 0x358], r11
               	je	 <L234>
<L233>:
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x2b8]
               	vmovups	ymm1, ymmword ptr [rsp + 0x288]
               	vmovups	ymm2, ymmword ptr [rsp + 0x298]
               	vperm2f128	ymm3, ymm2, ymmword ptr [rsp + 0x278], 0x2 # ymm3 = mem[0,1],ymm2[0,1]
               	vinsertf128	ymm1, ymm1, xmmword ptr [rsp + 0x2a8], 0x1
               	vshufps	ymm1, ymm3, ymm1, 0x88  # ymm1 = ymm3[0,2],ymm1[0,2],ymm3[4,6],ymm1[4,6]
               	vandps	ymm1, ymm1, ymm5
               	vcvtdq2ps	ymm3, ymm1
               	vpshufb	xmm0, xmm0, xmm6
               	vcvtdq2ps	xmm0, xmm0
               	movzx	esi, al
               	imul	esi, esi, 0x4f
               	shr	esi, 0xa
               	lea	edi, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*rdi]
               	vblendps	ymm1, ymm2, ymmword ptr [rsp + 0x278], 0xc0 # ymm1 = ymm2[0,1,2,3,4,5],mem[6,7]
               	sub	al, sil
               	movzx	eax, al
               	lea	rsi,  <memset+0x107c>
               	movsxd	rax, dword ptr [rsi + 4*rax]
               	add	rax, rsi
               	jmp	rax
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Circle@Evaluation.CRTP.Circle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'(Bodies3D::Circle@Evaluation.CRTP.Circle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'(Bodies3D::Circle@Evaluation.CRTP.Circle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'()>>>>
               	jmp	 <L235>
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'()>>>>
               	jmp	 <L236>
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Triangle@Evaluation.CRTP.Triangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'(Bodies3D::Triangle@Evaluation.CRTP.Triangle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'(Bodies3D::Triangle@Evaluation.CRTP.Triangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'()>>>>
               	jmp	 <L237>
               	movzx	eax, dl
               	vcvtsi2ss	xmm0, xmm7, eax
               	vmovss	dword ptr [rsp + 0x258], xmm0
               	movzx	eax, cl
               	vcvtsi2ss	xmm0, xmm7, eax
               	vmovss	dword ptr [rsp + 0x26c], xmm0
               	mov	qword ptr [rsp + 0x10], r9
               	mov	qword ptr [rsp + 0x260], r14
               	mov	r14, qword ptr [rsp]
               	lea	rax,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Head@Evaluation.CRTP.Head, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'()>>>>
               	mov	qword ptr [r14 + r13 - 0x40], rax
               	mov	byte ptr [r14 + r13], 0x1
               	mov	edi, 0x60
               	mov	qword ptr [rsp + 0x248], r15
               	mov	qword ptr [rsp + 0x210], rbx
               	mov	qword ptr [rsp + 0x238], rbp
               	mov	qword ptr [rsp + 0x220], r8
               	mov	qword ptr [rsp + 0x228], r10
               	mov	rbx, r11
               	vmovups	ymmword ptr [rsp + 0x360], ymm1
               	vmovups	ymmword ptr [rsp + 0x380], ymm3
               	vzeroupper
               	call	 <malloc@plt>
               	vmovdqa	xmm6, xmmword ptr  <memset+0x1030>
               	vbroadcastss	ymm5, dword ptr  <memset+0x1060>
               	mov	r11, rbx
               	mov	r10, qword ptr [rsp + 0x228]
               	mov	r8, qword ptr [rsp + 0x220]
               	mov	rbp, qword ptr [rsp + 0x238]
               	mov	rbx, qword ptr [rsp + 0x210]
               	mov	r15, qword ptr [rsp + 0x248]
               	mov	qword ptr [r14 + r13 - 0x30], rax
               	mov	r14, qword ptr [rsp + 0x260]
               	mov	r9, qword ptr [rsp + 0x10]
               	vmovups	ymm1, ymmword ptr [rsp + 0x380]
               	vmovups	ymmword ptr [rax], ymm1
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x2c8]
               	vpshufb	xmm0, xmm0, xmm6
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rax + 0x20], xmm0
               	vmovss	xmm3, dword ptr [rsp + 0x26c]
               	vmovss	dword ptr [rax + 0x28], xmm3
               	vshufps	xmm1, xmm1, xmm1, 0xff  # xmm1 = xmm1[3,3,3,3]
               	vmovss	dword ptr [rax + 0x2c], xmm1
               	vmovups	xmm2, xmmword ptr [rsp + 0x2e0]
               	vshufps	xmm2, xmm2, xmmword ptr [rsp + 0x2f0], 0x88 # xmm2 = xmm2[0,2],mem[0,2]
               	vandps	xmm2, xmm2, xmmword ptr  <memset+0x1050>
               	vcvtdq2ps	xmm2, xmm2
               	vmovups	xmmword ptr [rax + 0x30], xmm2
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	vmovss	dword ptr [rax + 0x48], xmm3
               	vmovss	dword ptr [rax + 0x4c], xmm1
               	vmovups	ymm1, ymmword ptr [rsp + 0x360]
               	vmovss	xmm0, dword ptr [rsp + 0x258]
               	vmovss	dword ptr [rax + 0x50], xmm0
               	vshufps	xmm0, xmm2, xmm2, 0xe9  # xmm0 = xmm2[1,2,2,3]
               	vmovlps	qword ptr [rax + 0x54], xmm0
               	vextractps	dword ptr [rax + 0x5c], xmm2, 0x3
               	jmp	 <L238>
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'()>>>>
               	jmp	 <L239>
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'()>>>>
               	jmp	 <L237>
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Square@Evaluation.CRTP.Square, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'(Bodies3D::Square@Evaluation.CRTP.Square const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'(Bodies3D::Square@Evaluation.CRTP.Square&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'()>>>>
               	jmp	 <L235>
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'()>>>>
               	jmp	 <L236>
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'(Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'(Bodies3D::Ellipse@Evaluation.CRTP.Ellipse&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'()>>>>
<L237>:
               	mov	qword ptr [rax + r13 - 0x40], rcx
               	mov	byte ptr [rax + r13], 0x0
               	vmovups	ymmword ptr [rax + r13 - 0x30], ymm3
               	vmovss	dword ptr [rax + r13 - 0x10], xmm0
               	jmp	 <L238>
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cube@Evaluation.CRTP.Cube, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'()>>>>
               	jmp	 <L235>
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'()>>>>
<L236>:
               	mov	qword ptr [rax + r13 - 0x40], rcx
               	mov	byte ptr [rax + r13], 0x0
               	vmovups	ymmword ptr [rax + r13 - 0x30], ymm3
               	vmovlps	qword ptr [rax + r13 - 0x10], xmm0
               	jmp	 <L238>
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cone@Evaluation.CRTP.Cone, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'()>>>>
<L239>:
               	mov	qword ptr [rax + r13 - 0x40], rcx
               	mov	byte ptr [rax + r13], 0x0
               	vmovups	ymmword ptr [rax + r13 - 0x30], ymm3
               	vextractps	dword ptr [rax + r13 - 0x10], xmm0, 0x1
               	jmp	 <L238>
               	mov	rax, qword ptr [rsp]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Sphere@Evaluation.CRTP.Sphere, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'()>>>>
<L235>:
               	mov	qword ptr [rax + r13 - 0x40], rcx
               	mov	byte ptr [rax + r13], 0x0
               	vmovups	ymmword ptr [rax + r13 - 0x30], ymm3
<L238>:
               	inc	r11
               	test	r11b, 0x7
               	je	 <L240>
               	vpermpd	ymm0, ymm1, 0x93        # ymm0 = ymm1[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x270]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x2b0]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x2d0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x2f0]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x270], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x290], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2d0], ymm0
               	vpsrlq	ymm2, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2f0], ymm2
               	vmovq	rax, xmm1
               	vextracti128	xmm1, ymm2, 0x1
               	vmovq	rdx, xmm1
               	vpextrq	rcx, xmm0, 0x1
               	add	r13, 0x50
               	cmp	qword ptr [rsp + 0x358], r11
               	jne	 <L233>
<L234>:
               	shl	r11, 0x4
               	lea	rcx, [r11 + 4*r11]
               	mov	rax, rcx
               	shr	rax, 0x4
               	imul	ebp, eax, 0xcccccccd
               	test	ebp, ebp
               	je	 <L241>
               	mov	qword ptr [rsp + 0x8], rcx
               	mov	qword ptr [rsp + 0x360], r13
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x2d0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x290], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x270], ymm0
               	mov	r12, qword ptr [rsp]
               	jmp	 <L242>
               	nop
<L243>:
               	vmovss	xmm0, dword ptr [rsp + 0x274]
               	vmovss	dword ptr [rsp + 0x278], xmm0
               	mov	r13d, 0x1
<L253>:
               	mov	eax, r13d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x270]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r12, rbx
<L242>:
               	mov	r14d, ebp
               	neg	r14d
               	and	r14d, ebp
               	lea	rbx, [r14 + 4*r14]
               	shl	rbx, 0x4
               	add	rbx, r12
               	test	r14d, r14d
               	je	 <L243>
               	mov	dword ptr [rsp + 0x40], ebp
               	xor	ecx, ecx
               	mov	ebp, 0x1
               	mov	r15d, 0x1
               	jmp	 <L244>
               	nop	word ptr cs:[rax + rax]
<L248>:
               	mov	ebp, r13d
               	movsxd	rax, r13d
               	vmovss	dword ptr [rsp + 4*rax + 0x270], xmm0
               	add	r12, 0x50
               	mov	ecx, 0xfffffffe
               	sub	ecx, r15d
               	lea	edx, [r15 + 0x1]
               	bsr	esi, edx
               	xor	esi, 0x1f
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r15d, edx
               	cmp	r12, rbx
               	je	 <L245>
<L244>:
               	mov	r13d, ecx
               	mov	rax, qword ptr [r12]
               	mov	rax, qword ptr [rax]
               	cmp	byte ptr [r12 + 0x40], 0x0
               	je	 <L246>
               	mov	rdi, qword ptr [r12 + 0x10]
               	jmp	 <L247>
<L246>:
               	lea	rdi, [r12 + 0x10]
<L247>:
               	vzeroupper
               	call	rax
               	mov	ecx, r13d
               	sub	ecx, ebp
               	jl	 <L248>
               	movsxd	rax, ebp
               	cmp	ecx, 0x1f
               	jb	 <L249>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vpblendd	xmm0, xmm0, xmmword ptr , 0xe <memset+0x1040> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0x2d0]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	dword ptr [rax + rax]
<L250>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi + 4*rdi - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rsi + 4*rdi - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rsi + 4*rdi]
               	add	rdi, 0x20
               	cmp	rdx, rdi
               	jne	 <L250>
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
               	je	 <L248>
               	add	rax, rdx
<L249>:
               	mov	ecx, r13d
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x270
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L251>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L251>
               	jmp	 <L248>
               	nop	word ptr cs:[rax + rax]
<L245>:
               	mov	ebp, dword ptr [rsp + 0x40]
               	sub	ebp, r14d
               	je	 <L252>
               	vmovss	dword ptr [rsp + 4*rax + 0x274], xmm0
               	mov	r12, rbx
               	test	r13d, r13d
               	jns	 <L253>
               	jmp	 <L242>
<L252>:
               	mov	r12, qword ptr [rsp + 0x250]
               	mov	r15, qword ptr [rsp]
               	mov	r13, qword ptr [rsp + 0x360]
               	mov	rcx, qword ptr [rsp + 0x8]
               	test	rcx, rcx
               	jne	 <L254>
               	jmp	 <L255>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r15, qword ptr [rsp]
               	mov	r12, qword ptr [rsp + 0x250]
               	jmp	 <L255>
<L241>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r15, qword ptr [rsp]
               	mov	r12, qword ptr [rsp + 0x250]
               	test	rcx, rcx
               	je	 <L255>
<L254>:
               	vmovdqa	xmmword ptr [rsp + 0x40], xmm0
               	add	r13, -0x40
               	mov	rbx, r15
               	jmp	 <L256>
               	nop	dword ptr [rax]
<L258>:
               	mov	rax, qword ptr [rbx]
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [rax + 0x8]
<L259>:
               	add	rbx, 0x50
               	add	r13, -0x50
               	je	 <L257>
<L256>:
               	lea	r14, [rbx + 0x10]
               	cmp	byte ptr [rbx + 0x40], 0x1
               	jne	 <L258>
               	mov	rdi, qword ptr [r14]
               	test	rdi, rdi
               	je	 <L259>
               	mov	rax, qword ptr [rbx]
               	vzeroupper
               	call	qword ptr [rax + 0x8]
               	mov	rdi, qword ptr [r14]
               	call	 <free@plt>
               	jmp	 <L259>
<L257>:
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x40]
<L255>:
               	test	r15, r15
               	mov	rbx, qword ptr [rsp + 0x318]
               	je	 <L260>
               	mov	rdi, r15
               	vmovdqa	xmmword ptr [rsp + 0x40], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x40]
<L260>:
               	cmp	r12d, 0x2a
               	jne	 <L261>
               	cmp	ebx, 0x186a0
               	jne	 <L261>
               	vucomiss	xmm0, dword ptr  <memset+0x1074>
               	jne	 <L262>
<L261>:
               	xor	eax, eax
               	add	rsp, 0x3a8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L262>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x40], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x40]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x76d0>
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
               	vmulss	xmm1, xmm1, dword ptr  <memset+0x1078>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x1078>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x1064>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x1068>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x106c>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x1070>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x1068>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x1068>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x76a8>
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
