
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
               	call	qword ptr  <malloc+0x7a38>
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
               	mov	rax, qword ptr  <malloc+0x7a48>
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
               	mov	rax, qword ptr  <malloc+0x7a50>
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
               	cmp	qword ptr , 0x0 <malloc+0x7a58>
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
               	sub	rsp, 0x760
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
               	mov	qword ptr [rsp + 0x2d0], rdx
               	movsxd	rax, edx
               	shl	rax, 0x4
               	lea	rdi, [rax + 4*rax]
               	mov	rsi, qword ptr  <malloc+0x7a60>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x10], rax
               	mov	qword ptr [rsp + 0x2c8], rbx
               	movsxd	rcx, ebx
               	vmovq	xmm0, rcx
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <malloc+0x1180>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	vextracti128	xmm3, ymm2, 0x1
               	vpermq	ymm2, ymm2, 0xe9        # ymm2 = ymm2[1,2,2,3]
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpextrq	rcx, xmm3, 0x1
               	shr	rcx, 0x1e
               	vpermq	ymm2, ymm2, 0xd0        # ymm2 = ymm2[0,0,1,3]
               	vpblendd	ymm0, ymm2, ymm0, 0x3   # ymm0 = ymm0[0,1],ymm2[2,3,4,5,6,7]
               	vmovq	xmm2, rcx
               	vpbroadcastq	ymm2, xmm2
               	vpblendd	ymm0, ymm0, ymm2, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm2[6,7]
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <malloc+0x11e8>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <malloc+0x11c8>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <malloc+0x11d8>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <malloc+0x11e0>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm5, ymm1, ymm0
               	vmovq	rdi, xmm5
               	vpextrq	r10, xmm5, 0x1
               	vextracti128	xmm0, ymm5, 0x1
               	vmovq	r8, xmm0
               	vpextrq	r9, xmm0, 0x1
               	xor	r15d, r15d
               	xor	r13d, r13d
               	xor	r12d, r12d
               	xor	r14d, r14d
               	xor	ecx, ecx
               	mov	rax, r10
               	mov	qword ptr [rsp + 0x1f8], r10
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L4>
<L6>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, rdx
               	rol	r9, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L5>
<L4>:
               	bt	rax, rcx
               	jae	 <L6>
               	xor	r15, rdi
               	xor	r13, r10
               	xor	r12, r8
               	xor	r14, r9
               	jmp	 <L6>
<L5>:
               	movabs	rcx, -0x2a59ed990f36c6d4
               	xor	edx, edx
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
<L9>:
               	mov	rsi, r10
               	shl	rsi, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, rsi
               	rol	r9, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L8>
<L7>:
               	bt	rcx, rdx
               	jae	 <L9>
               	xor	r15, rdi
               	xor	r13, r10
               	xor	r12, r8
               	xor	r14, r9
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x300], r14
               	movabs	rdx, -0x56a7d9e71fc03656
               	xor	esi, esi
               	jmp	 <L10>
               	nop	dword ptr [rax]
<L12>:
               	mov	r11, r10
               	shl	r11, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, r11
               	rol	r9, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L11>
<L10>:
               	bt	rdx, rsi
               	mov	rax, qword ptr [rsp + 0x300]
               	jae	 <L12>
               	xor	r15, rdi
               	xor	r13, r10
               	xor	r12, r8
               	xor	rax, r9
               	mov	qword ptr [rsp + 0x300], rax
               	jmp	 <L12>
<L11>:
               	movabs	rsi, 0x39abdc4529b1661c
               	xor	r11d, r11d
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
<L15>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, rbx
               	rol	r9, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L14>
<L13>:
               	bt	rsi, r11
               	jae	 <L15>
               	xor	r15, rdi
               	xor	r13, r10
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x300], r9
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x300]
               	mov	r8, r12
               	mov	r9, r13
               	mov	r10, r15
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
<L18>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L17>
<L16>:
               	bt	rax, r11
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L18>
<L17>:
               	xor	r11d, r11d
               	jmp	 <L19>
               	nop	dword ptr [rax]
<L21>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L20>
<L19>:
               	bt	rcx, r11
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L21>
<L20>:
               	xor	r11d, r11d
               	jmp	 <L22>
               	nop	dword ptr [rax]
<L24>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L23>
<L22>:
               	bt	rdx, r11
               	jae	 <L24>
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L24>
<L23>:
               	xor	r11d, r11d
               	jmp	 <L25>
               	nop	dword ptr [rax]
<L27>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L26>
<L25>:
               	bt	rsi, r11
               	jae	 <L27>
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0x270], r13
               	mov	qword ptr [rsp + 0x2f8], r15
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x250], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x20], rax
               	xor	eax, eax
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	mov	r8, qword ptr [rsp + 0x1d0]
               	mov	r9, qword ptr [rsp + 0x30]
               	mov	r10, qword ptr [rsp + 0x1d8]
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
<L30>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L29>
<L28>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x28], r10
               	xor	qword ptr [rsp + 0x250], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	rax, rdi
               	jmp	 <L30>
<L29>:
               	xor	r11d, r11d
               	jmp	 <L31>
               	nop
<L33>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L32>
<L31>:
               	bt	rcx, r11
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x28], r10
               	xor	qword ptr [rsp + 0x250], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	rax, rdi
               	jmp	 <L33>
<L32>:
               	xor	r11d, r11d
               	jmp	 <L34>
               	nop	word ptr cs:[rax + rax]
<L36>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L35>
<L34>:
               	bt	rdx, r11
               	jae	 <L36>
               	xor	qword ptr [rsp + 0x28], r10
               	xor	qword ptr [rsp + 0x250], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	rax, rdi
               	jmp	 <L36>
<L35>:
               	xor	r11d, r11d
               	jmp	 <L37>
               	nop	word ptr cs:[rax + rax]
<L39>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L38>
<L37>:
               	bt	rsi, r11
               	jae	 <L39>
               	xor	qword ptr [rsp + 0x28], r10
               	xor	qword ptr [rsp + 0x250], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	rax, rdi
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x240], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b0], rdi
               	xor	r11d, r11d
               	mov	rdi, rax
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x250]
               	mov	r10, qword ptr [rsp + 0x28]
               	jmp	 <L40>
               	nop	word ptr cs:[rax + rax]
<L42>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L41>
<L40>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x240], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	jmp	 <L42>
<L41>:
               	xor	r11d, r11d
               	jmp	 <L43>
               	nop	word ptr [rax + rax]
<L45>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L44>
<L43>:
               	bt	rcx, r11
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x240], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	jmp	 <L45>
<L44>:
               	xor	r11d, r11d
               	jmp	 <L46>
<L48>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L47>
<L46>:
               	bt	rdx, r11
               	jae	 <L48>
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x240], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	jmp	 <L48>
<L47>:
               	xor	r11d, r11d
               	jmp	 <L49>
<L51>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L50>
<L49>:
               	bt	rsi, r11
               	jae	 <L51>
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x240], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x230], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x198], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1b0]
               	mov	r8, qword ptr [rsp + 0x1b8]
               	mov	r9, qword ptr [rsp + 0x240]
               	mov	r10, qword ptr [rsp + 0x1c0]
               	jmp	 <L52>
               	nop	dword ptr [rax + rax]
<L54>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L53>
<L52>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	jmp	 <L54>
<L53>:
               	xor	r11d, r11d
               	jmp	 <L55>
               	nop	word ptr [rax + rax]
<L57>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L56>
<L55>:
               	bt	rcx, r11
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	jmp	 <L57>
<L56>:
               	xor	r11d, r11d
               	jmp	 <L58>
<L60>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L59>
<L58>:
               	bt	rdx, r11
               	jae	 <L60>
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	jmp	 <L60>
<L59>:
               	xor	r11d, r11d
               	jmp	 <L61>
<L63>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L62>
<L61>:
               	bt	rsi, r11
               	jae	 <L63>
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x220], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x188], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x180], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x198]
               	mov	r8, qword ptr [rsp + 0x1a0]
               	mov	r9, qword ptr [rsp + 0x230]
               	mov	r10, qword ptr [rsp + 0x1a8]
               	jmp	 <L64>
               	nop	dword ptr [rax + rax]
<L66>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L65>
<L64>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L66>
<L65>:
               	xor	r11d, r11d
               	jmp	 <L67>
               	nop	word ptr [rax + rax]
<L69>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L68>
<L67>:
               	bt	rcx, r11
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L69>
<L68>:
               	xor	r11d, r11d
               	jmp	 <L70>
<L72>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L71>
<L70>:
               	bt	rdx, r11
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L72>
<L71>:
               	xor	r11d, r11d
               	jmp	 <L73>
<L75>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L74>
<L73>:
               	bt	rsi, r11
               	jae	 <L75>
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x210], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x170], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x168], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x180]
               	mov	r8, qword ptr [rsp + 0x188]
               	mov	r9, qword ptr [rsp + 0x220]
               	mov	r10, qword ptr [rsp + 0x190]
               	jmp	 <L76>
               	nop	dword ptr [rax + rax]
<L78>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L77>
<L76>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	jmp	 <L78>
<L77>:
               	xor	r11d, r11d
               	jmp	 <L79>
               	nop	word ptr [rax + rax]
<L81>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L80>
<L79>:
               	bt	rcx, r11
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	jmp	 <L81>
<L80>:
               	xor	r11d, r11d
               	jmp	 <L82>
<L84>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L83>
<L82>:
               	bt	rdx, r11
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	jmp	 <L84>
<L83>:
               	xor	r11d, r11d
               	jmp	 <L85>
<L87>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L86>
<L85>:
               	bt	rsi, r11
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x200], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x158], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x168]
               	mov	r8, qword ptr [rsp + 0x170]
               	mov	r9, qword ptr [rsp + 0x210]
               	mov	r10, qword ptr [rsp + 0x178]
               	jmp	 <L88>
               	nop	dword ptr [rax + rax]
<L90>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L89>
<L88>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x160], r10
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x158], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	jmp	 <L90>
<L89>:
               	xor	r11d, r11d
               	jmp	 <L91>
               	nop	word ptr [rax + rax]
<L93>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L92>
<L91>:
               	bt	rcx, r11
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x160], r10
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x158], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	jmp	 <L93>
<L92>:
               	xor	r11d, r11d
               	jmp	 <L94>
<L96>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L95>
<L94>:
               	bt	rdx, r11
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x160], r10
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x158], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	jmp	 <L96>
<L95>:
               	xor	r11d, r11d
               	jmp	 <L97>
<L99>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L98>
<L97>:
               	bt	rsi, r11
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x160], r10
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x158], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x18], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x140], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x150]
               	mov	r8, qword ptr [rsp + 0x158]
               	mov	r9, qword ptr [rsp + 0x200]
               	mov	r10, qword ptr [rsp + 0x160]
               	jmp	 <L100>
               	nop	word ptr cs:[rax + rax]
<L102>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L101>
<L100>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x148], r10
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x140], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	jmp	 <L102>
<L101>:
               	xor	r11d, r11d
               	jmp	 <L103>
               	nop	word ptr [rax + rax]
<L105>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L104>
<L103>:
               	bt	rcx, r11
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x148], r10
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x140], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	jmp	 <L105>
<L104>:
               	xor	r11d, r11d
               	jmp	 <L106>
               	nop	dword ptr [rax]
<L108>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L107>
<L106>:
               	bt	rdx, r11
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x148], r10
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x140], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	jmp	 <L108>
<L107>:
               	xor	r11d, r11d
               	jmp	 <L109>
               	nop	dword ptr [rax]
<L111>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L110>
<L109>:
               	bt	rsi, r11
               	jae	 <L111>
               	xor	qword ptr [rsp + 0x148], r10
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x140], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x50], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x128], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x138]
               	mov	r8, qword ptr [rsp + 0x140]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	r10, qword ptr [rsp + 0x148]
               	jmp	 <L112>
               	nop
<L114>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L113>
<L112>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x130], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x128], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	jmp	 <L114>
<L113>:
               	xor	r11d, r11d
               	jmp	 <L115>
               	nop	word ptr [rax + rax]
<L117>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L116>
<L115>:
               	bt	rcx, r11
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x130], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x128], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	jmp	 <L117>
<L116>:
               	xor	r11d, r11d
               	jmp	 <L118>
               	nop	dword ptr [rax]
<L120>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L119>
<L118>:
               	bt	rdx, r11
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x130], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x128], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	jmp	 <L120>
<L119>:
               	xor	r11d, r11d
               	jmp	 <L121>
               	nop	dword ptr [rax]
<L123>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L122>
<L121>:
               	bt	rsi, r11
               	jae	 <L123>
               	xor	qword ptr [rsp + 0x130], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x128], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x118], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x48], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x110], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x120]
               	mov	r8, qword ptr [rsp + 0x128]
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	r10, qword ptr [rsp + 0x130]
               	jmp	 <L124>
               	nop
<L126>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L125>
<L124>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x118], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x110], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	jmp	 <L126>
<L125>:
               	xor	r11d, r11d
               	jmp	 <L127>
               	nop	word ptr [rax + rax]
<L129>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L128>
<L127>:
               	bt	rcx, r11
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x118], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x110], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	jmp	 <L129>
<L128>:
               	xor	r11d, r11d
               	jmp	 <L130>
               	nop	dword ptr [rax]
<L132>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L131>
<L130>:
               	bt	rdx, r11
               	jae	 <L132>
               	xor	qword ptr [rsp + 0x118], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x110], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	jmp	 <L132>
<L131>:
               	xor	r11d, r11d
               	jmp	 <L133>
               	nop	dword ptr [rax]
<L135>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L134>
<L133>:
               	bt	rsi, r11
               	jae	 <L135>
               	xor	qword ptr [rsp + 0x118], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x110], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x100], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x40], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x108]
               	mov	r8, qword ptr [rsp + 0x110]
               	mov	r9, qword ptr [rsp + 0x48]
               	mov	r10, qword ptr [rsp + 0x118]
               	jmp	 <L136>
               	nop
<L138>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L137>
<L136>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x100], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	jmp	 <L138>
<L137>:
               	xor	r11d, r11d
               	jmp	 <L139>
               	nop	word ptr [rax + rax]
<L141>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L140>
<L139>:
               	bt	rcx, r11
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x100], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	jmp	 <L141>
<L140>:
               	xor	r11d, r11d
               	jmp	 <L142>
               	nop	dword ptr [rax]
<L144>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L143>
<L142>:
               	bt	rdx, r11
               	jae	 <L144>
               	xor	qword ptr [rsp + 0x100], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	jmp	 <L144>
<L143>:
               	xor	r11d, r11d
               	jmp	 <L145>
               	nop	dword ptr [rax]
<L147>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L146>
<L145>:
               	bt	rsi, r11
               	jae	 <L147>
               	xor	qword ptr [rsp + 0x100], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	jmp	 <L147>
<L146>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x38], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xf0]
               	mov	r8, qword ptr [rsp + 0xf8]
               	mov	r9, qword ptr [rsp + 0x40]
               	mov	r10, qword ptr [rsp + 0x100]
               	jmp	 <L148>
               	nop
<L150>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L149>
<L148>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L150>
               	xor	qword ptr [rsp + 0xe8], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L150>
<L149>:
               	xor	r11d, r11d
               	jmp	 <L151>
               	nop	word ptr [rax + rax]
<L153>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L152>
<L151>:
               	bt	rcx, r11
               	jae	 <L153>
               	xor	qword ptr [rsp + 0xe8], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L153>
<L152>:
               	xor	r11d, r11d
               	jmp	 <L154>
               	nop	dword ptr [rax]
<L156>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L155>
<L154>:
               	bt	rdx, r11
               	jae	 <L156>
               	xor	qword ptr [rsp + 0xe8], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L156>
<L155>:
               	xor	r11d, r11d
               	jmp	 <L157>
               	nop	dword ptr [rax]
<L159>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L158>
<L157>:
               	bt	rsi, r11
               	jae	 <L159>
               	xor	qword ptr [rsp + 0xe8], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x78], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xd8]
               	mov	r8, qword ptr [rsp + 0xe0]
               	mov	r9, qword ptr [rsp + 0x38]
               	mov	r10, qword ptr [rsp + 0xe8]
               	jmp	 <L160>
               	nop
<L162>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L161>
<L160>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L162>
               	xor	qword ptr [rsp + 0xd0], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	jmp	 <L162>
<L161>:
               	xor	r11d, r11d
               	jmp	 <L163>
               	nop	word ptr [rax + rax]
<L165>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L164>
<L163>:
               	bt	rcx, r11
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xd0], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	jmp	 <L165>
<L164>:
               	xor	r11d, r11d
               	jmp	 <L166>
               	nop	dword ptr [rax]
<L168>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L167>
<L166>:
               	bt	rdx, r11
               	jae	 <L168>
               	xor	qword ptr [rsp + 0xd0], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	jmp	 <L168>
<L167>:
               	xor	r11d, r11d
               	jmp	 <L169>
               	nop	dword ptr [rax]
<L171>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L170>
<L169>:
               	bt	rsi, r11
               	jae	 <L171>
               	xor	qword ptr [rsp + 0xd0], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x70], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x280], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xc0]
               	mov	r8, qword ptr [rsp + 0xc8]
               	mov	r9, qword ptr [rsp + 0x78]
               	mov	r10, qword ptr [rsp + 0xd0]
               	jmp	 <L172>
               	nop
<L174>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L173>
<L172>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x280], rdi
               	jmp	 <L174>
<L173>:
               	xor	r11d, r11d
               	jmp	 <L175>
               	nop	word ptr [rax + rax]
<L177>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L176>
<L175>:
               	bt	rcx, r11
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x280], rdi
               	jmp	 <L177>
<L176>:
               	xor	r11d, r11d
               	jmp	 <L178>
               	nop	dword ptr [rax]
<L180>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L179>
<L178>:
               	bt	rdx, r11
               	jae	 <L180>
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x280], rdi
               	jmp	 <L180>
<L179>:
               	xor	r11d, r11d
               	jmp	 <L181>
               	nop	dword ptr [rax]
<L183>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L182>
<L181>:
               	bt	rsi, r11
               	jae	 <L183>
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x280], rdi
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x68], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x280]
               	mov	r8, qword ptr [rsp + 0xb8]
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	r10, qword ptr [rsp + 0x1f0]
               	jmp	 <L184>
               	nop
<L186>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L185>
<L184>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L186>
<L185>:
               	xor	r11d, r11d
               	jmp	 <L187>
               	nop	word ptr [rax + rax]
<L189>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L188>
<L187>:
               	bt	rcx, r11
               	jae	 <L189>
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L189>
<L188>:
               	xor	r11d, r11d
               	jmp	 <L190>
               	nop	dword ptr [rax]
<L192>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L191>
<L190>:
               	bt	rdx, r11
               	jae	 <L192>
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L192>
<L191>:
               	xor	r11d, r11d
               	jmp	 <L193>
               	nop	dword ptr [rax]
<L195>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L194>
<L193>:
               	bt	rsi, r11
               	jae	 <L195>
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L195>
<L194>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x60], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x98], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xa8]
               	mov	r8, qword ptr [rsp + 0xb0]
               	mov	r9, qword ptr [rsp + 0x68]
               	mov	r10, qword ptr [rsp + 0x1e8]
               	jmp	 <L196>
               	nop
<L198>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L197>
<L196>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x98], rdi
               	jmp	 <L198>
<L197>:
               	xor	r11d, r11d
               	jmp	 <L199>
               	nop	word ptr [rax + rax]
<L201>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L200>
<L199>:
               	bt	rcx, r11
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x98], rdi
               	jmp	 <L201>
<L200>:
               	xor	r11d, r11d
               	jmp	 <L202>
               	nop	dword ptr [rax]
<L204>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L203>
<L202>:
               	bt	rdx, r11
               	jae	 <L204>
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x98], rdi
               	jmp	 <L204>
<L203>:
               	xor	r11d, r11d
               	jmp	 <L205>
               	nop	dword ptr [rax]
<L207>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L206>
<L205>:
               	bt	rsi, r11
               	jae	 <L207>
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x98], rdi
               	jmp	 <L207>
<L206>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x90], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x58], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x88], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x80], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x98]
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	r9, qword ptr [rsp + 0x60]
               	mov	r10, qword ptr [rsp + 0x1e0]
               	jmp	 <L208>
               	nop
<L210>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L209>
<L208>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L210>
               	xor	qword ptr [rsp + 0x90], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	jmp	 <L210>
<L209>:
               	xor	r11d, r11d
               	jmp	 <L211>
               	nop	word ptr [rax + rax]
<L213>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L212>
<L211>:
               	bt	rcx, r11
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x90], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	jmp	 <L213>
<L212>:
               	xor	r11d, r11d
               	jmp	 <L214>
               	nop	dword ptr [rax]
<L216>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L215>
<L214>:
               	bt	rdx, r11
               	jae	 <L216>
               	xor	qword ptr [rsp + 0x90], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	jmp	 <L216>
<L215>:
               	xor	r11d, r11d
               	jmp	 <L217>
               	nop	dword ptr [rax]
<L219>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L218>
<L217>:
               	bt	rsi, r11
               	jae	 <L219>
               	xor	qword ptr [rsp + 0x90], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x2f0], r12
               	xor	r12d, r12d
               	xor	r13d, r13d
               	xor	r14d, r14d
               	xor	r15d, r15d
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x80]
               	mov	r8, qword ptr [rsp + 0x88]
               	mov	r9, qword ptr [rsp + 0x58]
               	mov	r10, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x260], rax
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L220>
<L222>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L221>
<L220>:
               	bt	rax, r11
               	jae	 <L222>
               	xor	r12, r10
               	xor	r13, r9
               	xor	r14, r8
               	xor	r15, rdi
               	jmp	 <L222>
<L221>:
               	xor	r11d, r11d
               	jmp	 <L223>
               	nop	dword ptr [rax]
<L225>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L224>
<L223>:
               	bt	rcx, r11
               	jae	 <L225>
               	xor	r12, r10
               	xor	r13, r9
               	xor	r14, r8
               	xor	r15, rdi
               	jmp	 <L225>
<L224>:
               	xor	ecx, ecx
               	jmp	 <L226>
               	nop	dword ptr [rax + rax]
<L228>:
               	mov	r11, r9
               	shl	r11, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r11
               	rol	rdi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L227>
<L226>:
               	bt	rdx, rcx
               	jae	 <L228>
               	xor	r12, r10
               	xor	r13, r9
               	xor	r14, r8
               	xor	r15, rdi
               	jmp	 <L228>
<L227>:
               	xor	ecx, ecx
               	mov	r11, qword ptr [rsp + 0x300]
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rdx, r9
               	shl	rdx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rdx
               	rol	rdi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L230>
<L229>:
               	bt	rsi, rcx
               	jae	 <L231>
               	xor	r12, r10
               	xor	r13, r9
               	xor	r14, r8
               	xor	r15, rdi
               	jmp	 <L231>
<L230>:
               	mov	rax, qword ptr [rsp + 0x1f8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x340], rax
               	mov	rcx, qword ptr [rsp + 0x270]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x348], rcx
               	mov	r8, qword ptr [rsp + 0x30]
               	lea	rcx, [r8 + 4*r8]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x250]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x350], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x358], rcx
               	mov	rcx, qword ptr [rsp + 0x240]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x360], rcx
               	mov	rcx, qword ptr [rsp + 0x230]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x368], rcx
               	mov	rcx, qword ptr [rsp + 0x220]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x210]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x370], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	rcx, qword ptr [rsp + 0x200]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x380], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x388], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x48]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x390], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x398], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a0], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a8], rcx
               	mov	rdx, qword ptr [rsp + 0x78]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rsi, qword ptr [rsp + 0x70]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x3b0], rdx
               	lea	rdx, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x3b8], rdx
               	mov	rdx, qword ptr [rsp + 0x68]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3c0], rdx
               	mov	rdx, qword ptr [rsp + 0x60]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3c8], rdx
               	mov	rdx, qword ptr [rsp + 0x58]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2e8], r13
               	lea	rsi, [4*r13]
               	add	rsi, r13
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x3d0], rdx
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x3d8], rsi
               	mov	rsi, qword ptr [rsp + 0x2d0]
               	test	esi, esi
               	je	 <L232>
               	mov	qword ptr [rsp + 0x30], r8
               	mov	qword ptr [rsp + 0x2e0], r14
               	mov	r13d, esi
               	neg	r13d
               	xor	ebx, ebx
               	vpbroadcastq	ymm6, qword ptr  <malloc+0x11c0>
               	vpbroadcastw	xmm7, word ptr  <malloc+0x1238>
               	vmovaps	ymm8, ymmword ptr  <malloc+0x11a0>
               	vpbroadcastq	xmm9, qword ptr  <malloc+0x11d0>
               	mov	r14d, 0x1
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x28]
               	mov	r10, qword ptr [rsp + 0x260]
               	mov	qword ptr [rsp + 0x2d8], r13
               	vmovdqa	ymmword ptr [rsp + 0x6e0], ymm6
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L241>:
               	vpblendd	ymm0, ymm4, ymm3, 0xc0  # ymm0 = ymm4[0,1,2,3,4,5],ymm3[6,7]
               	vpermq	ymm0, ymm0, 0x93        # ymm0 = ymm0[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x340]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x380]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x3a0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x3c0]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x340], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x360], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x380], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3a0], ymm0
               	vpsrlq	ymm2, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3c0], ymm2
               	vmovq	rax, xmm1
               	vextracti128	xmm1, ymm2, 0x1
               	vmovq	rdx, xmm1
               	vpextrq	rcx, xmm0, 0x1
<L242>:
               	lea	esi, [r14 + r13]
               	inc	esi
               	mov	edi, r14d
               	inc	edi
               	mov	r14d, edi
               	cmp	esi, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x348]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x368]
               	movzx	esi, al
               	imul	esi, esi, 0x4f
               	shr	esi, 0xa
               	lea	edi, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*rdi]
               	sub	al, sil
               	cmp	al, 0xc
               	ja	 <L235>
               	vpand	ymm0, ymm4, ymm6
               	vpand	ymm1, ymm3, ymm6
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm2, xmm0, xmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x388]
               	vpshufb	xmm0, xmm0, xmm7
               	movzx	eax, al
               	lea	rsi,  <malloc+0x123c>
               	movsxd	rax, dword ptr [rsi + 4*rax]
               	add	rax, rsi
               	jmp	rax
               	vpmovzxbd	ymm0, xmm2      # ymm0 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Circle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Circle, void>::'lambda'(void*, Bodies3D::Circle const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Circle, void>::'lambda'(void*, Bodies3D::Circle&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Circle, void>::'lambda'()>>>>
               	mov	qword ptr [rcx + rax], rdx
               	mov	byte ptr [rcx + rax + 0x40], 0x0
               	jmp	 <L236>
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(void*, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'()>>>>
               	mov	qword ptr [rcx + rax], rdx
               	mov	byte ptr [rcx + rax + 0x40], 0x0
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm8
               	vmovups	ymmword ptr [rcx + rax + 0x10], ymm1
               	jmp	 <L237>
               	vpextrb	eax, xmm2, 0x7
               	vcvtsi2ss	xmm1, xmm11, eax
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Triangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Triangle, void>::'lambda'(void*, Bodies3D::Triangle const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Triangle, void>::'lambda'(void*, Bodies3D::Triangle&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Triangle, void>::'lambda'()>>>>
               	mov	qword ptr [rcx + rax], rdx
               	mov	byte ptr [rcx + rax + 0x40], 0x0
               	vpunpcklbw	xmm0, xmm2, xmm0 # xmm0 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
               	vpshufb	xmm0, xmm0, xmm9
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rcx + rax + 0x10], ymm0
               	vmovss	dword ptr [rcx + rax + 0x30], xmm1
               	jmp	 <L238>
               	movzx	eax, cl
               	vcvtsi2ss	xmm0, xmm11, eax
               	vmovss	dword ptr [rsp + 0x2c4], xmm0
               	movzx	eax, dl
               	vcvtsi2ss	xmm0, xmm11, eax
               	vmovss	dword ptr [rsp + 0x2c0], xmm0
               	mov	qword ptr [rsp + 0x268], rbx
               	mov	rax, qword ptr [rsp + 0x268]
               	lea	rbx, [rax + 4*rax]
               	shl	rbx, 0x4
               	mov	qword ptr [rsp + 0x2b8], r14
               	mov	r14, qword ptr [rsp + 0x10]
               	lea	rax,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Head@Evaluation.CRTP.Head, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(void*, Bodies3D::Head@Evaluation.CRTP.Head const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(void*, Bodies3D::Head@Evaluation.CRTP.Head&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'()>>>>
               	mov	qword ptr [r14 + rbx], rax
               	mov	byte ptr [r14 + rbx + 0x40], 0x1
               	mov	edi, 0x60
               	mov	qword ptr [rsp + 0x28], r9
               	mov	qword ptr [rsp + 0x260], r10
               	mov	qword ptr [rsp + 0x278], r15
               	mov	r15, r11
               	vmovdqa	ymmword ptr [rsp + 0x300], ymm5
               	mov	qword ptr [rsp + 0x20], r8
               	mov	qword ptr [rsp + 0x1f8], r12
               	vmovdqa	ymmword ptr [rsp + 0x720], ymm3
               	vmovdqa	ymmword ptr [rsp + 0x700], ymm4
               	vmovdqa	xmmword ptr [rsp + 0x330], xmm2
               	vzeroupper
               	call	 <malloc@plt>
               	vmovdqa	ymm4, ymmword ptr [rsp + 0x700]
               	vpbroadcastq	xmm9, qword ptr  <malloc+0x11d0>
               	vmovaps	ymm8, ymmword ptr  <malloc+0x11a0>
               	vpbroadcastw	xmm7, word ptr  <malloc+0x1238>
               	vmovdqa	ymm6, ymmword ptr [rsp + 0x6e0]
               	mov	r12, qword ptr [rsp + 0x1f8]
               	mov	r13, qword ptr [rsp + 0x2d8]
               	mov	r8, qword ptr [rsp + 0x20]
               	vmovdqa	ymm5, ymmword ptr [rsp + 0x300]
               	mov	r11, r15
               	mov	r15, qword ptr [rsp + 0x278]
               	mov	r10, qword ptr [rsp + 0x260]
               	mov	r9, qword ptr [rsp + 0x28]
               	mov	qword ptr [r14 + rbx + 0x10], rax
               	mov	r14, qword ptr [rsp + 0x2b8]
               	mov	rbx, qword ptr [rsp + 0x268]
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x330] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm1, ymm0, ymm8
               	vmovups	ymmword ptr [rax], ymm1
               	vmovdqu	xmm1, xmmword ptr [rsp + 0x398]
               	vpshufb	xmm1, xmm1, xmmword ptr  <malloc+0x1200>
               	vcvtdq2ps	xmm1, xmm1
               	vmovlps	qword ptr [rax + 0x20], xmm1
               	vmovss	xmm10, dword ptr [rsp + 0x2c4] # xmm10 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax + 0x28], xmm10
               	vshufps	xmm0, xmm0, xmm0, 0xff  # xmm0 = xmm0[3,3,3,3]
               	vmovss	dword ptr [rax + 0x2c], xmm0
               	vmovups	xmm2, xmmword ptr [rsp + 0x3b0]
               	vshufps	xmm2, xmm2, xmmword ptr [rsp + 0x3c0], 0x88 # xmm2 = xmm2[0,2],mem[0,2]
               	vandps	xmm2, xmm2, xmmword ptr  <malloc+0x1210>
               	vcvtdq2ps	xmm2, xmm2
               	vshufps	xmm3, xmm2, xmm2, 0xd8  # xmm3 = xmm2[0,2,1,3]
               	vmovups	xmmword ptr [rax + 0x30], xmm3
               	vmovdqa	ymm3, ymmword ptr [rsp + 0x720]
               	vmovlps	qword ptr [rax + 0x40], xmm1
               	vmovss	dword ptr [rax + 0x48], xmm10
               	vmovss	dword ptr [rax + 0x4c], xmm0
               	vmovss	xmm0, dword ptr [rsp + 0x2c0] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax + 0x50], xmm0
               	vshufps	xmm0, xmm2, xmm2, 0xe6  # xmm0 = xmm2[2,1,2,3]
               	vmovlps	qword ptr [rax + 0x54], xmm0
               	vextractps	dword ptr [rax + 0x5c], xmm2, 0x3
               	jmp	 <L238>
               	vpextrb	eax, xmm0, 0x1
               	vcvtsi2ss	xmm0, xmm11, eax
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(void*, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'()>>>>
               	jmp	 <L239>
               	vpextrb	eax, xmm0, 0x0
               	vcvtsi2ss	xmm0, xmm11, eax
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Rectangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Rectangle, void>::'lambda'(void*, Bodies3D::Rectangle const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Rectangle, void>::'lambda'(void*, Bodies3D::Rectangle&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Rectangle, void>::'lambda'()>>>>
               	jmp	 <L239>
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Square, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square, void>::'lambda'(Bodies3D::Square const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Square, void>::'lambda'(void*, Bodies3D::Square const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Square, void>::'lambda'(void*, Bodies3D::Square&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Square, void>::'lambda'(Bodies3D::Square&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Square, void>::'lambda'()>>>>
               	jmp	 <L240>
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(void*, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'()>>>>
               	mov	qword ptr [rcx + rax], rdx
               	mov	byte ptr [rcx + rax + 0x40], 0x0
               	vpunpcklbw	xmm1, xmm2, xmm0 # xmm1 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
               	vpshufb	xmm1, xmm1, xmm9
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [rcx + rax + 0x10], ymm1
               	vpsrlq	xmm1, xmm2, 0x38
               	vmovdqa	xmm2, xmmword ptr  <malloc+0x11f0>
               	vpblendvb	xmm0, xmm0, xmm1, xmm2
<L237>:
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rcx + rax + 0x30], xmm0
               	jmp	 <L238>
               	vpextrb	eax, xmm0, 0x0
               	vcvtsi2ss	xmm0, xmm11, eax
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipse, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Ellipse, void>::'lambda'(void*, Bodies3D::Ellipse const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Ellipse, void>::'lambda'(void*, Bodies3D::Ellipse&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipse, void>::'lambda'()>>>>
               	jmp	 <L239>
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cube@Evaluation.CRTP.Cube, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(void*, Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(void*, Bodies3D::Cube@Evaluation.CRTP.Cube&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'()>>>>
               	jmp	 <L240>
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(void*, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'()>>>>
               	mov	qword ptr [rcx + rax], rdx
               	mov	byte ptr [rcx + rax + 0x40], 0x0
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm8
               	vmovups	ymmword ptr [rcx + rax + 0x10], ymm1
               	vmovlps	qword ptr [rcx + rax + 0x30], xmm0
               	jmp	 <L238>
               	vpextrb	eax, xmm0, 0x1
               	vcvtsi2ss	xmm0, xmm11, eax
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cone@Evaluation.CRTP.Cone, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(void*, Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(void*, Bodies3D::Cone@Evaluation.CRTP.Cone&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'()>>>>
<L239>:
               	mov	qword ptr [rcx + rax], rdx
               	mov	byte ptr [rcx + rax + 0x40], 0x0
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm8
               	vmovups	ymmword ptr [rcx + rax + 0x10], ymm1
               	vmovss	dword ptr [rcx + rax + 0x30], xmm0
               	jmp	 <L238>
               	lea	rax, [rbx + 4*rbx]
               	shl	rax, 0x4
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rdx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T&&)>>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (void*, dyno::T const&)>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Sphere@Evaluation.CRTP.Sphere, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>, boost::hana::pair<dyno::detail::string<(char)99, (char)111, (char)112, (char)121, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::CopyConstructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>, boost::hana::pair<dyno::detail::string<(char)109, (char)111, (char)118, (char)101, (char)45, (char)99, (char)111, (char)110, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::MoveConstructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(void*, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'()>>>>
<L240>:
               	mov	qword ptr [rcx + rax], rdx
               	mov	byte ptr [rcx + rax + 0x40], 0x0
               	vpmovzxbd	ymm0, xmm2      # ymm0 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
<L236>:
               	vpermilps	ymm0, ymm0, ymm8
               	vmovups	ymmword ptr [rcx + rax + 0x10], ymm0
<L238>:
               	inc	rbx
<L235>:
               	test	r14b, 0x7
               	jne	 <L241>
               	vpermq	ymm0, ymm5, 0xe3        # ymm0 = ymm5[3,0,2,3]
               	vpermq	ymm1, ymm5, 0xe9        # ymm1 = ymm5[1,2,2,3]
               	vpextrq	rax, xmm5, 0x1
               	shl	rax, 0x11
               	vpxor	xmm2, xmm1, xmm0
               	vpextrq	rcx, xmm2, 0x1
               	vpxor	xmm0, xmm2, xmm5
               	xor	rcx, rax
               	vmovq	xmm1, rcx
               	vmovq	rax, xmm2
               	rol	rax, 0x2d
               	vmovq	xmm2, rax
               	mov	rdx, qword ptr [rsp + 0x270]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2f8]
               	mov	rsi, qword ptr [rsp + 0x2f0]
               	xor	rsi, rcx
               	xor	r11, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x270], rdx
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x2f8], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x2f0], rsi
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x300], r11
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1d0]
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	xor	rcx, rsi
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	xor	rdi, rdx
               	xor	rdx, rcx
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0x1d8], rsi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x1c8], rdi
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x1d0], rcx
               	mov	rcx, qword ptr [rsp + 0x250]
               	mov	rax, rcx
               	shl	rax, 0x11
               	xor	r8, r9
               	xor	r10, rcx
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x250], rcx
               	xor	r9, r10
               	mov	qword ptr [rsp + 0x28], r9
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x20], r8
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x260], r10
               	mov	rdi, qword ptr [rsp + 0x240]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	rsi, qword ptr [rsp + 0x1b8]
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x268], rbx
               	mov	rbx, qword ptr [rsp + 0x1b0]
               	xor	rbx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x240], rdi
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x1c0], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1b8], rsi
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x1b0], rbx
               	mov	rdi, qword ptr [rsp + 0x230]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	mov	rsi, qword ptr [rsp + 0x1a0]
               	xor	rsi, rcx
               	mov	r8, qword ptr [rsp + 0x198]
               	xor	r8, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x230], rdi
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x1a8], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1a0], rsi
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x198], r8
               	mov	rdi, qword ptr [rsp + 0x220]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x190]
               	mov	rsi, qword ptr [rsp + 0x188]
               	xor	rsi, rcx
               	mov	r13, qword ptr [rsp + 0x180]
               	xor	r13, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x220], rdi
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0x190], rcx
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x180], r13
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x188], rsi
               	mov	rdi, qword ptr [rsp + 0x210]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x178]
               	mov	rsi, qword ptr [rsp + 0x170]
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x278], r15
               	mov	r15, qword ptr [rsp + 0x168]
               	xor	r15, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x210], rdi
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x178], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x170], rsi
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x168], r15
               	mov	rdi, qword ptr [rsp + 0x200]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x160]
               	mov	rsi, qword ptr [rsp + 0x158]
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x1f8], r12
               	mov	r12, qword ptr [rsp + 0x150]
               	xor	r12, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x200], rdi
               	xor	rcx, r12
               	mov	qword ptr [rsp + 0x160], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x158], rsi
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x150], r12
               	mov	rdi, qword ptr [rsp + 0x18]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x148]
               	mov	rsi, qword ptr [rsp + 0x140]
               	xor	rsi, rcx
               	mov	r11, qword ptr [rsp + 0x138]
               	xor	r11, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x18], rdi
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x148], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x140], rsi
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x138], r11
               	mov	rdi, qword ptr [rsp + 0x50]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x130]
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	rsi, rcx
               	mov	r9, qword ptr [rsp + 0x120]
               	xor	r9, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x50], rdi
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x130], rcx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x120], r9
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x128], rsi
               	mov	rdi, qword ptr [rsp + 0x48]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	rsi, rcx
               	mov	r10, qword ptr [rsp + 0x108]
               	xor	r10, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x48], rdi
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x118], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x110], rsi
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x108], r10
               	mov	rdi, qword ptr [rsp + 0x40]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x100]
               	mov	rsi, qword ptr [rsp + 0xf8]
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x2b8], r14
               	mov	r14, qword ptr [rsp + 0xf0]
               	xor	r14, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x40], rdi
               	xor	rcx, r14
               	mov	qword ptr [rsp + 0x100], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xf8], rsi
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0xf0], r14
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xe8]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	rsi, rcx
               	mov	rdi, qword ptr [rsp + 0xd8]
               	xor	rdi, r8
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x38], r8
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0xe8], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xe0], rsi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0xd8], rdi
               	mov	r13, qword ptr [rsp + 0x78]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xd0]
               	mov	rsi, qword ptr [rsp + 0xc8]
               	xor	rsi, rcx
               	mov	rbx, qword ptr [rsp + 0xc0]
               	xor	rbx, r13
               	xor	r13, rsi
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0xd0], rcx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0xc0], rbx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xc8], rsi
               	mov	r15, qword ptr [rsp + 0x70]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x1f0]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	xor	rcx, rbx
               	mov	r9, qword ptr [rsp + 0x280]
               	xor	r9, r15
               	mov	qword ptr [rsp + 0x280], r9
               	xor	r15, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xb8], rcx
               	mov	r11, qword ptr [rsp + 0x68]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x1e8]
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, rbx
               	mov	r12, qword ptr [rsp + 0xa8]
               	xor	r12, r11
               	xor	r11, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	r10, qword ptr [rsp + 0x60]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x1e0]
               	mov	rcx, qword ptr [rsp + 0xa0]
               	xor	rcx, rbx
               	mov	r14, qword ptr [rsp + 0x98]
               	xor	r14, r10
               	xor	r10, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xa0], rcx
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x90]
               	mov	rcx, qword ptr [rsp + 0x88]
               	xor	rcx, rbx
               	mov	r9, qword ptr [rsp + 0x80]
               	xor	r9, r8
               	xor	r8, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x88], rcx
               	mov	rdi, qword ptr [rsp + 0x2e8]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x2e0]
               	xor	rsi, qword ptr [rsp + 0x1f8]
               	xor	qword ptr [rsp + 0x278], rdi
               	xor	rdi, rsi
               	vpextrq	rcx, xmm0, 0x1
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x2e0], rsi
               	lea	rax, [rcx + 4*rcx]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x270]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x30], rdx
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rsi, qword ptr [rsp + 0x250]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x340], rax
               	mov	qword ptr [rsp + 0x348], rcx
               	mov	rcx, qword ptr [rsp + 0x240]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x350], rdx
               	mov	rdx, qword ptr [rsp + 0x230]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x358], rsi
               	mov	rsi, qword ptr [rsp + 0x220]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x360], rcx
               	mov	rcx, qword ptr [rsp + 0x210]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x368], rdx
               	mov	rdx, qword ptr [rsp + 0x200]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x370], rsi
               	mov	rsi, qword ptr [rsp + 0x18]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x380], rdx
               	mov	rdx, qword ptr [rsp + 0x48]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x388], rsi
               	mov	rsi, qword ptr [rsp + 0x40]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x390], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x398], rdx
               	mov	qword ptr [rsp + 0x78], r13
               	lea	rdx, [4*r13]
               	add	rdx, r13
               	mov	r13, qword ptr [rsp + 0x1f8]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3a0], rsi
               	mov	qword ptr [rsp + 0x70], r15
               	lea	rsi, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0x278]
               	rol	rsi, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x3a8], rcx
               	mov	qword ptr [rsp + 0x3b0], rdx
               	mov	qword ptr [rsp + 0x68], r11
               	lea	rdx, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x300]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3b8], rsi
               	mov	qword ptr [rsp + 0x60], r10
               	lea	rsi, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x260]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x3c0], rdx
               	mov	qword ptr [rsp + 0x58], r8
               	lea	rdx, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x20]
               	rol	rdx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3c8], rsi
               	mov	qword ptr [rsp + 0x2e8], rdi
               	lea	rsi, [rdi + 4*rdi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x3d0], rdx
               	mov	qword ptr [rsp + 0x3d8], rsi
               	mov	rdi, qword ptr [rsp + 0x280]
               	xor	qword ptr [rsp + 0x1f0], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x280], rdi
               	vpbroadcastq	ymm1, xmm1
               	xor	qword ptr [rsp + 0x1e8], r12
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0xa8], r12
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	xor	qword ptr [rsp + 0x1e0], r14
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x98], r14
               	mov	r14, qword ptr [rsp + 0x2b8]
               	vpbroadcastq	ymm1, xmm2
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x90], rbx
               	mov	rbx, qword ptr [rsp + 0x268]
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x80], r9
               	mov	r9, qword ptr [rsp + 0x28]
               	vpblendd	ymm5, ymm0, ymm1, 0xc0  # ymm5 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	xor	r13, r15
               	mov	r12, r13
               	mov	r13, qword ptr [rsp + 0x2d8]
               	rol	r15, 0x2d
               	jmp	 <L242>
<L234>:
               	shl	rbx, 0x4
               	lea	rax, [rbx + 4*rbx]
               	test	rax, rax
               	je	 <L232>
               	mov	r12, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x18], rax
               	lea	r15, [r12 + rax]
               	mov	r13d, 0x1
               	xor	ebx, ebx
               	mov	eax, 0x1
               	jmp	 <L243>
               	nop	word ptr cs:[rax + rax]
<L261>:
               	add	r12, 0x280
               	inc	r13d
               	popcnt	eax, r13d
               	mov	ebx, r14d
               	cmp	r12, r15
               	je	 <L244>
<L243>:
               	mov	r14d, eax
               	cmp	byte ptr [r12 + 0x40], 0x0
               	je	 <L245>
               	mov	rdi, qword ptr [r12 + 0x10]
               	jmp	 <L246>
               	nop	dword ptr [rax]
<L245>:
               	lea	rdi, [r12 + 0x10]
<L246>:
               	mov	rax, qword ptr [r12]
               	vzeroupper
               	call	qword ptr [rax]
               	vmovdqa	xmmword ptr [rsp + 0x280], xmm0
               	cmp	byte ptr [r12 + 0x90], 0x0
               	je	 <L247>
               	mov	rdi, qword ptr [r12 + 0x60]
               	jmp	 <L248>
               	nop	dword ptr [rax]
<L247>:
               	lea	rdi, [r12 + 0x60]
<L248>:
               	mov	rax, qword ptr [r12 + 0x50]
               	call	qword ptr [rax]
               	vmovdqa	xmmword ptr [rsp + 0x250], xmm0
               	cmp	byte ptr [r12 + 0xe0], 0x0
               	je	 <L249>
               	mov	rdi, qword ptr [r12 + 0xb0]
               	jmp	 <L250>
               	nop	word ptr [rax + rax]
<L249>:
               	lea	rdi, [r12 + 0xb0]
<L250>:
               	mov	rax, qword ptr [r12 + 0xa0]
               	call	qword ptr [rax]
               	vmovdqa	xmmword ptr [rsp + 0x240], xmm0
               	cmp	byte ptr [r12 + 0x130], 0x0
               	je	 <L251>
               	mov	rdi, qword ptr [r12 + 0x100]
               	jmp	 <L252>
<L251>:
               	lea	rdi, [r12 + 0x100]
<L252>:
               	mov	rax, qword ptr [r12 + 0xf0]
               	call	qword ptr [rax]
               	vmovdqa	xmmword ptr [rsp + 0x230], xmm0
               	cmp	byte ptr [r12 + 0x180], 0x0
               	je	 <L253>
               	mov	rdi, qword ptr [r12 + 0x150]
               	jmp	 <L254>
<L253>:
               	lea	rdi, [r12 + 0x150]
<L254>:
               	mov	rax, qword ptr [r12 + 0x140]
               	call	qword ptr [rax]
               	vmovdqa	xmmword ptr [rsp + 0x220], xmm0
               	cmp	byte ptr [r12 + 0x1d0], 0x0
               	je	 <L255>
               	mov	rdi, qword ptr [r12 + 0x1a0]
               	jmp	 <L256>
<L255>:
               	lea	rdi, [r12 + 0x1a0]
<L256>:
               	mov	rax, qword ptr [r12 + 0x190]
               	call	qword ptr [rax]
               	vmovdqa	xmmword ptr [rsp + 0x210], xmm0
               	cmp	byte ptr [r12 + 0x220], 0x0
               	je	 <L257>
               	mov	rdi, qword ptr [r12 + 0x1f0]
               	jmp	 <L258>
<L257>:
               	lea	rdi, [r12 + 0x1f0]
<L258>:
               	mov	rax, qword ptr [r12 + 0x1e0]
               	call	qword ptr [rax]
               	vmovdqa	xmmword ptr [rsp + 0x200], xmm0
               	cmp	byte ptr [r12 + 0x270], 0x0
               	je	 <L259>
               	mov	rdi, qword ptr [r12 + 0x240]
               	jmp	 <L260>
<L259>:
               	lea	rdi, [r12 + 0x240]
<L260>:
               	mov	rax, qword ptr [r12 + 0x230]
               	call	qword ptr [rax]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x280]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x250], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x240], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x230], 0x30 # xmm1 = xmm1[0,1,2],mem[0]
               	vmovaps	xmm2, xmmword ptr [rsp + 0x220]
               	vinsertps	xmm2, xmm2, dword ptr [rsp + 0x210], 0x10 # xmm2 = xmm2[0],mem[0],xmm2[2,3]
               	vinsertps	xmm2, xmm2, dword ptr [rsp + 0x200], 0x20 # xmm2 = xmm2[0,1],mem[0],xmm2[3]
               	vinsertps	xmm0, xmm2, xmm0, 0x30 # xmm0 = xmm2[0,1,2],xmm0[0]
               	movsxd	rcx, ebx
               	mov	rax, rcx
               	shl	rax, 0x5
               	vmovaps	xmmword ptr [rsp + rax + 0x350], xmm0
               	vmovaps	xmmword ptr [rsp + rax + 0x340], xmm1
               	sub	ecx, r14d
               	jb	 <L261>
               	mov	eax, ebx
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x340]
               	inc	ecx
               	and	ecx, 0x3
               	je	 <L262>
               	lea	rsi, [rsp + 0x320]
               	add	rdx, rsi
               	xor	esi, esi
               	nop	dword ptr [rax]
<L263>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx], ymm0
               	inc	rsi
               	add	rdx, -0x20
               	cmp	rcx, rsi
               	jne	 <L263>
               	mov	rcx, rax
               	sub	rcx, rsi
               	mov	edx, r14d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L261>
               	jmp	 <L264>
<L262>:
               	mov	rcx, rax
               	mov	edx, r14d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L261>
<L264>:
               	mov	rax, rcx
               	shl	rax, 0x5
               	lea	rsi, [rsp + 0x320]
               	add	rax, rsi
               	inc	rcx
               	nop	word ptr cs:[rax + rax]
<L265>:
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
               	jg	 <L265>
               	jmp	 <L261>
<L232>:
               	mov	rbx, qword ptr [rsp + 0x2c8]
               	mov	r15, qword ptr [rsp + 0x10]
               	test	r15, r15
               	je	 <L266>
<L276>:
               	mov	rdi, r15
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L266>:
               	cmp	ebx, 0x2a
               	jne	 <L267>
               	cmp	dword ptr [rsp + 0x2d0], 0x186a0
               	jne	 <L267>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x280]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <malloc+0x1230>
               	jne	 <L268>
<L267>:
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
<L244>:
               	cmp	r14d, 0x2
               	mov	r15, qword ptr [rsp + 0x10]
               	mov	r12, qword ptr [rsp + 0x18]
               	jb	 <L269>
               	mov	eax, r14d
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x320]
               	lea	rdx, [rsp + 0x340]
               	test	r14b, 0x1
               	jne	 <L270>
               	dec	rax
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L270>:
               	cmp	r14d, 0x2
               	je	 <L269>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	add	rax, rdx
               	add	rax, -0x40
               	nop	word ptr cs:[rax + rax]
<L271>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L271>
<L269>:
               	vmovaps	ymm0, ymmword ptr [rsp + 0x340]
               	vmovaps	ymmword ptr [rsp + 0x280], ymm0
               	lea	rbx, [r15 + 0x10]
               	xor	r14d, r14d
               	jmp	 <L272>
               	nop	dword ptr [rax + rax]
<L274>:
               	lea	rdi, [rbx + r14]
               	mov	rax, qword ptr [r15 + r14]
               	vzeroupper
               	call	qword ptr [rax + 0x18]
<L275>:
               	add	r14, 0x50
               	cmp	r12, r14
               	je	 <L273>
<L272>:
               	cmp	byte ptr [r15 + r14 + 0x40], 0x0
               	je	 <L274>
               	mov	rdi, qword ptr [r15 + r14 + 0x10]
               	test	rdi, rdi
               	je	 <L275>
               	mov	rax, qword ptr [r15 + r14]
               	vzeroupper
               	call	qword ptr [rax + 0x18]
               	mov	rdi, qword ptr [r15 + r14 + 0x10]
               	call	 <free@plt>
               	jmp	 <L275>
<L273>:
               	mov	rbx, qword ptr [rsp + 0x2c8]
               	test	r15, r15
               	jne	 <L276>
               	jmp	 <L266>
<L268>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x280], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x280] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <malloc+0x7a68>
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
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <malloc+0x1234>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <malloc+0x1234>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <malloc+0x1220>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <malloc+0x1224>
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
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <malloc+0x1228>
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
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube const&), float (Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, float (dyno::T const&), float (Bodies3D::Cube@Evaluation.CRTP.Cube const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle const&), float (Bodies3D::Triangle const&)>, float (dyno::T const&), float (Bodies3D::Triangle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <malloc+0x122c>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <malloc+0x1224>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <malloc+0x1224>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <malloc+0x7a40>
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
