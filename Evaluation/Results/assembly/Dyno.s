
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
               	call	qword ptr  <free+0x4798>
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
               	mov	rax, qword ptr  <free+0x47a8>
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
               	mov	rax, qword ptr  <free+0x47b0>
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
               	cmp	qword ptr , 0x0 <free+0x47b8>
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
               	call	 <initializer for module Meta.Math.Random>
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
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x18
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
               	movsxd	r12, r14d
               	mov	rsi, qword ptr  <free+0x47c0>
               	mov	rax, r12
               	shl	rax, 0x4
               	lea	rdi, [rax + 4*rax]
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	rbx, rax
               	test	r12d, r12d
               	je	 <L4>
               	movsxd	rax, r15d
               	movabs	rcx, -0x255992d382208bc1
               	movabs	r9, -0x40a7b892e31b1a47
               	movabs	r8, -0x6b2fb644ecceee15
               	vxorps	xmm0, xmm0, xmm0
               	mov	qword ptr [rsp + 0x10], rbx
               	add	rcx, rax
               	mov	rdx, rcx
               	shr	rdx, 0x1e
               	xor	rdx, rcx
               	imul	rdx, r9
               	mov	rsi, rdx
               	shr	rsi, 0x1b
               	xor	rsi, rdx
               	imul	rsi, r8
               	mov	r15, rsi
               	shr	r15, 0x1f
               	xor	r15, rsi
               	movabs	rsi, 0x3c6ef372fe94f82a
               	add	rsi, rax
               	mov	rdi, rsi
               	shr	rdi, 0x1e
               	xor	rdi, rsi
               	imul	rdi, r9
               	mov	rsi, rdi
               	shr	rsi, 0x1b
               	xor	rsi, rdi
               	imul	rsi, r8
               	mov	r12, rsi
               	shr	r12, 0x1f
               	xor	r12, rsi
               	movabs	rsi, -0x61c8864680b583eb
               	add	rsi, rax
               	mov	rdi, rsi
               	shr	rdi, 0x1e
               	xor	rdi, rsi
               	imul	rdi, r9
               	mov	rsi, rdi
               	shr	rsi, 0x1b
               	xor	rsi, rdi
               	movabs	rdi, 0x4ec4ec4ec4ec4ec5
               	imul	rsi, r8
               	mov	r13, rsi
               	shr	r13, 0x1f
               	xor	r13, rsi
               	mov	rsi, rax
               	shr	rsi, 0x1e
               	xor	rsi, rax
               	imul	rsi, r9
               	mov	rax, rsi
               	shr	rax, 0x1b
               	xor	rax, rsi
               	xor	esi, esi
               	imul	rax, r8
               	lea	r8,  <free+0x1098>
               	mov	rbp, rax
               	shr	rbp, 0x1f
               	xor	rbp, rax
               	jmp	 <L5>
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Triangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Triangle, void>::'lambda'(void*, Bodies3D::Triangle const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Triangle, void>::'lambda'(void*, Bodies3D::Triangle&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Triangle, void>::'lambda'()>>>>
<L10>:
               	shl	rax, 0x4
               	mov	qword ptr [rbx + rax], rcx
               	mov	byte ptr [rbx + rax + 0x40], 0x0
               	vmovups	ymmword ptr [rbx + rax + 0x10], ymm0
               	inc	rsi
               	mov	dword ptr [rbx + rax + 0x30], 0x0
<L7>:
               	mov	rax, r13
               	xor	r12, rbp
               	xor	r15, r13
               	shl	rax, 0x11
               	xor	r13, r12
               	xor	rbp, r15
               	rorx	r15, r15, 0x13
               	xor	r12, rax
               	dec	r14d
               	je	 <L6>
<L5>:
               	lea	rax, [r13 + 4*r13]
               	rorx	rax, rax, 0x39
               	lea	rdx, [rax + 8*rax]
               	mulx	rax, rax, rdi
               	shr	rax, 0x2
               	lea	rcx, [rax + 2*rax]
               	lea	rax, [rax + 4*rcx]
               	sub	rdx, rax
               	cmp	rdx, 0xc
               	ja	 <L7>
               	movsxd	rax, dword ptr [r8 + 4*rdx]
               	add	rax, r8
               	jmp	rax
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Circle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Circle, void>::'lambda'(void*, Bodies3D::Circle const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Circle, void>::'lambda'(void*, Bodies3D::Circle&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Circle, void>::'lambda'()>>>>
               	jmp	 <L8>
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'()>>>>
               	jmp	 <L9>
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rbx, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Head@Evaluation.CRTP.Head, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(void*, Bodies3D::Head@Evaluation.CRTP.Head const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(void*, Bodies3D::Head@Evaluation.CRTP.Head&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'()>>>>
               	mov	qword ptr [rsp + 0x8], rsi
               	mov	edi, 0x1
               	mov	esi, 0x60
               	shl	rbx, 0x4
               	mov	qword ptr [rax + rbx], rcx
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	byte ptr [rcx + rbx + 0x40], 0x1
               	vzeroupper
               	call	 <calloc@plt>
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x8]
               	vxorps	xmm0, xmm0, xmm0
               	lea	r8,  <free+0x1098>
               	movabs	rdi, 0x4ec4ec4ec4ec4ec5
               	mov	qword ptr [rcx + rbx + 0x10], rax
               	mov	rbx, qword ptr [rsp + 0x10]
               	inc	rsi
               	jmp	 <L7>
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'()>>>>
               	jmp	 <L10>
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Rectangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Rectangle, void>::'lambda'(void*, Bodies3D::Rectangle const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Rectangle, void>::'lambda'(void*, Bodies3D::Rectangle&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Rectangle, void>::'lambda'()>>>>
               	jmp	 <L10>
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Square, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square, void>::'lambda'(Bodies3D::Square const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Square, void>::'lambda'(void*, Bodies3D::Square const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Square, void>::'lambda'(void*, Bodies3D::Square&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Square, void>::'lambda'(Bodies3D::Square&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Square, void>::'lambda'()>>>>
               	jmp	 <L8>
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'()>>>>
               	jmp	 <L9>
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipse, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Ellipse, void>::'lambda'(void*, Bodies3D::Ellipse const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Ellipse, void>::'lambda'(void*, Bodies3D::Ellipse&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipse, void>::'lambda'()>>>>
               	jmp	 <L10>
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cube@Evaluation.CRTP.Cube, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(void*, Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(void*, Bodies3D::Cube@Evaluation.CRTP.Cube&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'()>>>>
               	jmp	 <L8>
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'()>>>>
<L9>:
               	shl	rax, 0x4
               	mov	qword ptr [rbx + rax], rcx
               	mov	byte ptr [rbx + rax + 0x40], 0x0
               	vmovups	ymmword ptr [rbx + rax + 0x10], ymm0
               	inc	rsi
               	mov	qword ptr [rbx + rax + 0x30], 0x0
               	jmp	 <L7>
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cone@Evaluation.CRTP.Cone, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(void*, Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(void*, Bodies3D::Cone@Evaluation.CRTP.Cone&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'()>>>>
               	jmp	 <L10>
               	lea	rax, [rsi + 4*rsi]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Sphere@Evaluation.CRTP.Sphere, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'()>>>>
<L8>:
               	shl	rax, 0x4
               	mov	qword ptr [rbx + rax], rcx
               	mov	byte ptr [rbx + rax + 0x40], 0x0
               	inc	rsi
               	vmovups	ymmword ptr [rbx + rax + 0x10], ymm0
               	jmp	 <L7>
<L6>:
               	shl	rsi, 0x4
               	lea	r14, [rsi + 4*rsi]
               	test	r14, r14
               	je	 <L4>
               	vxorps	xmm0, xmm0, xmm0
               	lea	r15, [rbx + r14]
               	mov	rax, rbx
               	vmovss	dword ptr [rsp + 0x8], xmm0
               	nop	dword ptr [rax + rax]
<L12>:
               	cmp	byte ptr [rax + 0x40], 0x0
               	lea	r12, [rax + 0x10]
               	mov	rdi, r12
               	je	 <L11>
               	mov	rdi, qword ptr [rax + 0x10]
<L11>:
               	mov	rax, qword ptr [rax]
               	vzeroupper
               	call	qword ptr [rax]
               	vmovss	xmm1, dword ptr [rsp + 0x8] # xmm1 = mem[0],zero,zero,zero
               	add	r12, 0x40
               	mov	rax, r12
               	vaddss	xmm1, xmm1, xmm0
               	vmovss	dword ptr [rsp + 0x8], xmm1
               	cmp	r12, r15
               	jne	 <L12>
               	vcvttss2si	ebp, dword ptr [rsp + 0x8]
               	lea	r15, [rbx + 0x10]
               	xor	r12d, r12d
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
<L15>:
               	mov	rax, qword ptr [rbx + r12]
               	lea	rdi, [r15 + r12]
               	call	qword ptr [rax + 0x18]
<L16>:
               	add	r12, 0x50
               	cmp	r14, r12
               	je	 <L14>
<L13>:
               	cmp	byte ptr [rbx + r12 + 0x40], 0x0
               	je	 <L15>
               	mov	rdi, qword ptr [rbx + r12 + 0x10]
               	test	rdi, rdi
               	je	 <L16>
               	mov	rax, qword ptr [rbx + r12]
               	call	qword ptr [rax + 0x18]
               	mov	rdi, qword ptr [rbx + r12 + 0x10]
               	call	 <free@plt>
               	jmp	 <L16>
<L4>:
               	xor	ebp, ebp
<L14>:
               	test	rbx, rbx
               	je	 <L17>
               	mov	rdi, rbx
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L17>:
               	mov	eax, ebp
               	add	rsp, 0x18
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, dword ptr  <free+0x10dc>
               	vmulss	xmm1, xmm0, xmm1
               	vmulss	xmm0, xmm0, xmm1
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
               	vmovss	xmm0, dword ptr [rdi + 0x24] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <free+0x10dc>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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
               	vmovss	xmm1, dword ptr [rdi + 0x20] # xmm1 = mem[0],zero,zero,zero
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm1, dword ptr  <free+0x10cc>
               	vmulss	xmm1, xmm1, xmm0
               	vmulss	xmm0, xmm0, xmm1
               	ret
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
               	vmovss	xmm1, dword ptr [rdi + 0x20] # xmm1 = mem[0],zero,zero,zero
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm1, dword ptr  <free+0x10d0>
               	vmulss	xmm1, xmm1, xmm0
               	vmulss	xmm0, xmm0, xmm1
               	ret
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
               	vmovss	xmm0, dword ptr [rdi + 0x24] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <free+0x10d4>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&), float (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, float (dyno::T const&), float (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x24] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube const&), float (Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, float (dyno::T const&), float (Bodies3D::Cube@Evaluation.CRTP.Cube const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm0, xmm1
               	ret
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle const&), float (Bodies3D::Triangle const&)>, float (dyno::T const&), float (Bodies3D::Triangle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <free+0x10d8>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle const&), float (Bodies3D::Rectangle const&)>, float (dyno::T const&), float (Bodies3D::Rectangle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse const&), float (Bodies3D::Ellipse const&)>, float (dyno::T const&), float (Bodies3D::Ellipse const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <free+0x10d0>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle const&), float (Bodies3D::Circle const&)>, float (dyno::T const&), float (Bodies3D::Circle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, dword ptr  <free+0x10d0>
               	vmulss	xmm0, xmm0, xmm1
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <free+0x47a0>
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
