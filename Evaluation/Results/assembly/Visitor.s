
build/Evaluation/bin/Visitor:	file format elf64-x86-64

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
               	call	qword ptr  <__libc_start_main+0x6f28>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6f38>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6f40>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x6f48>
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
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	int3
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
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Circle>(void*)>:
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Square>(void*)>:
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipse>(void*)>:
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Triangle>(void*)>:
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Rectangle>(void*)>:
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cone@Evaluation.CRTP.Cone>(void*)>:
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cube@Evaluation.CRTP.Cube>(void*)>:
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>(void*)>:
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Sphere@Evaluation.CRTP.Sphere>(void*)>:
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(void*)>:
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(void*)>:
<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>:
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
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	int3
               	int3
               	int3

<initializer for module Meta.Math.Random>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	int3
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
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.Visitor.ObjectReference>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW7VisitorW15ObjectReference__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW7VisitorW15ObjectReference__in_chrg>
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.Visitor.ObjectValue>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW7VisitorW11ObjectValue__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW7VisitorW11ObjectValue__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.Visitor.CommonResult>
               	call	 <initializer for module Evaluation.Dependency.Visitor.Invoke>
               	call	 <initializer for module Evaluation.Dependency.Visitor.LaunderCast>
               	call	 <initializer for module Evaluation.Dependency.Visitor.ObjectReference>
               	pop	rax
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.Visitor.CommonResult>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW7VisitorW12CommonResult__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW7VisitorW12CommonResult__in_chrg>
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.Visitor.Invoke>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW7VisitorW6Invoke__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW7VisitorW6Invoke__in_chrg>
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.Visitor.LaunderCast>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW7VisitorW11LaunderCast__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW7VisitorW11LaunderCast__in_chrg>
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	int3
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
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
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
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	int3
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
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	int3
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

<_GLOBAL__sub_I_Visitor.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.Visitor.ObjectReference>
               	call	 <initializer for module Evaluation.Dependency.Visitor.ObjectValue>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	call	 <initializer for module Evaluation.CRTP.Ellipse>
               	call	 <initializer for module Evaluation.CRTP.Rectangle>
               	call	 <initializer for module Evaluation.CRTP.Square>
               	call	 <initializer for module Evaluation.CRTP.Triangle>
               	call	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
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
               	jmp	 <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>

<main>:
               	push	rbp
               	mov	rbp, rsp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	and	rsp, -0x20
               	sub	rsp, 0x720
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
               	mov	qword ptr [rsp + 0x278], rdx
               	movsxd	rax, edx
               	shl	rax, 0x4
               	lea	rdi, [rax + 2*rax]
               	mov	rsi, qword ptr  <__libc_start_main+0x6f50>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x208], rax
               	movsxd	rax, ebx
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <__libc_start_main+0xa80>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	vextracti128	xmm3, ymm2, 0x1
               	vpermq	ymm2, ymm2, 0xe9        # ymm2 = ymm2[1,2,2,3]
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpextrq	rax, xmm3, 0x1
               	shr	rax, 0x1e
               	vpermq	ymm2, ymm2, 0xd0        # ymm2 = ymm2[0,0,1,3]
               	vpblendd	ymm0, ymm2, ymm0, 0x3   # ymm0 = ymm0[0,1],ymm2[2,3,4,5,6,7]
               	vmovq	xmm2, rax
               	vpbroadcastq	ymm2, xmm2
               	vpblendd	ymm0, ymm0, ymm2, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm2[6,7]
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xae8>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xac8>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xad8>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xae0>
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
               	xor	r13d, r13d
               	xor	r15d, r15d
               	xor	r12d, r12d
               	xor	r14d, r14d
               	xor	ecx, ecx
               	mov	rax, r10
               	mov	qword ptr [rsp + 0x18], r10
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L4>
               	nop	dword ptr [rax + rax]
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
               	xor	r12, rdi
               	xor	r13, r10
               	xor	r15, r8
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
               	xor	r12, rdi
               	xor	r13, r10
               	xor	r15, r8
               	xor	r14, r9
               	jmp	 <L9>
<L8>:
               	movabs	rdx, -0x56a7d9e71fc03656
               	xor	esi, esi
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
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
               	jae	 <L12>
               	xor	r12, rdi
               	xor	r13, r10
               	xor	r15, r8
               	xor	r14, r9
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
               	xor	r12, rdi
               	xor	r13, r10
               	xor	r15, r8
               	xor	r14, r9
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x2c0], rdi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	mov	r8, r15
               	xor	r15d, r15d
               	mov	r10, r12
               	xor	eax, eax
               	xor	r11d, r11d
               	mov	rdi, r14
               	mov	qword ptr [rsp + 0x2b8], r8
               	mov	r9, r13
               	mov	qword ptr [rsp + 0x2b0], r12
               	jmp	 <L16>
               	nop
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x2c0], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	r15, r8
               	xor	rax, rdi
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
               	xor	qword ptr [rsp + 0x2c0], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	r15, r8
               	xor	rax, rdi
               	jmp	 <L21>
<L20>:
               	xor	r11d, r11d
               	jmp	 <L22>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x2c0], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	r15, r8
               	xor	rax, rdi
               	jmp	 <L24>
<L23>:
               	xor	r11d, r11d
               	jmp	 <L25>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x2c0], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	r15, r8
               	xor	rax, rdi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0x280], r13
               	xor	r13d, r13d
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x78], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d0], rdi
               	xor	r11d, r11d
               	mov	rdi, rax
               	mov	r8, r15
               	mov	r9, qword ptr [rsp + 0x28]
               	mov	r10, qword ptr [rsp + 0x2c0]
               	jmp	 <L28>
               	nop	dword ptr [rax]
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
               	xor	r13, r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x1d8], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	jmp	 <L30>
<L29>:
               	xor	r11d, r11d
               	jmp	 <L31>
               	nop	word ptr cs:[rax + rax]
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
               	xor	r13, r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x1d8], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	jmp	 <L33>
<L32>:
               	xor	r11d, r11d
               	jmp	 <L34>
               	nop	dword ptr [rax + rax]
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
               	xor	r13, r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x1d8], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	jmp	 <L36>
<L35>:
               	xor	r11d, r11d
               	jmp	 <L37>
               	nop	dword ptr [rax + rax]
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
               	xor	r13, r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x1d8], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x250], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	mov	r8, qword ptr [rsp + 0x1d8]
               	mov	r9, qword ptr [rsp + 0x78]
               	mov	r10, r13
               	jmp	 <L40>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1c8], r10
               	xor	qword ptr [rsp + 0x250], r9
               	xor	qword ptr [rsp + 0x1c0], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
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
               	xor	qword ptr [rsp + 0x1c8], r10
               	xor	qword ptr [rsp + 0x250], r9
               	xor	qword ptr [rsp + 0x1c0], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
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
               	xor	qword ptr [rsp + 0x1c8], r10
               	xor	qword ptr [rsp + 0x250], r9
               	xor	qword ptr [rsp + 0x1c0], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
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
               	xor	qword ptr [rsp + 0x1c8], r10
               	xor	qword ptr [rsp + 0x250], r9
               	xor	qword ptr [rsp + 0x1c0], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x240], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1b8]
               	mov	r8, qword ptr [rsp + 0x1c0]
               	mov	r9, qword ptr [rsp + 0x250]
               	mov	r10, qword ptr [rsp + 0x1c8]
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
               	xor	qword ptr [rsp + 0x1b0], r10
               	xor	qword ptr [rsp + 0x240], r9
               	xor	qword ptr [rsp + 0x1a8], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
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
               	xor	qword ptr [rsp + 0x1b0], r10
               	xor	qword ptr [rsp + 0x240], r9
               	xor	qword ptr [rsp + 0x1a8], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
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
               	xor	qword ptr [rsp + 0x1b0], r10
               	xor	qword ptr [rsp + 0x240], r9
               	xor	qword ptr [rsp + 0x1a8], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
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
               	xor	qword ptr [rsp + 0x1b0], r10
               	xor	qword ptr [rsp + 0x240], r9
               	xor	qword ptr [rsp + 0x1a8], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x198], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x230], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x188], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	mov	r8, qword ptr [rsp + 0x1a8]
               	mov	r9, qword ptr [rsp + 0x240]
               	mov	r10, qword ptr [rsp + 0x1b0]
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
               	xor	qword ptr [rsp + 0x198], r10
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x190], r8
               	xor	qword ptr [rsp + 0x188], rdi
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
               	xor	qword ptr [rsp + 0x198], r10
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x190], r8
               	xor	qword ptr [rsp + 0x188], rdi
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
               	xor	qword ptr [rsp + 0x198], r10
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x190], r8
               	xor	qword ptr [rsp + 0x188], rdi
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
               	xor	qword ptr [rsp + 0x198], r10
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x190], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x180], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x220], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x170], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x188]
               	mov	r8, qword ptr [rsp + 0x190]
               	mov	r9, qword ptr [rsp + 0x230]
               	mov	r10, qword ptr [rsp + 0x198]
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
               	xor	qword ptr [rsp + 0x180], r10
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x178], r8
               	xor	qword ptr [rsp + 0x170], rdi
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
               	xor	qword ptr [rsp + 0x180], r10
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x178], r8
               	xor	qword ptr [rsp + 0x170], rdi
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
               	xor	qword ptr [rsp + 0x180], r10
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x178], r8
               	xor	qword ptr [rsp + 0x170], rdi
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
               	xor	qword ptr [rsp + 0x180], r10
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x178], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x168], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x70], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x158], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x170]
               	mov	r8, qword ptr [rsp + 0x178]
               	mov	r9, qword ptr [rsp + 0x220]
               	mov	r10, qword ptr [rsp + 0x180]
               	jmp	 <L88>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x168], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
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
               	xor	qword ptr [rsp + 0x168], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	jmp	 <L93>
<L92>:
               	xor	r11d, r11d
               	jmp	 <L94>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x168], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	jmp	 <L96>
<L95>:
               	xor	r11d, r11d
               	jmp	 <L97>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x168], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x210], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x140], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x158]
               	mov	r8, qword ptr [rsp + 0x160]
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	r10, qword ptr [rsp + 0x168]
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
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
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
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	jmp	 <L105>
<L104>:
               	xor	r11d, r11d
               	jmp	 <L106>
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
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	jmp	 <L108>
<L107>:
               	xor	r11d, r11d
               	jmp	 <L109>
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
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x20], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x128], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x140]
               	mov	r8, qword ptr [rsp + 0x148]
               	mov	r9, qword ptr [rsp + 0x210]
               	mov	r10, qword ptr [rsp + 0x150]
               	jmp	 <L112>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
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
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
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
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
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
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x40], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x118], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x110], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x128]
               	mov	r8, qword ptr [rsp + 0x130]
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	r10, qword ptr [rsp + 0x138]
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
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x110], rdi
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
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x110], rdi
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
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x110], rdi
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
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x38], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x100], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x110]
               	mov	r8, qword ptr [rsp + 0x118]
               	mov	r9, qword ptr [rsp + 0x40]
               	mov	r10, qword ptr [rsp + 0x120]
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
               	xor	qword ptr [rsp + 0x108], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0xf8], rdi
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
               	xor	qword ptr [rsp + 0x108], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0xf8], rdi
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
               	xor	qword ptr [rsp + 0x108], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0xf8], rdi
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
               	xor	qword ptr [rsp + 0x108], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	jmp	 <L147>
<L146>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x30], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xf8]
               	mov	r8, qword ptr [rsp + 0x100]
               	mov	r9, qword ptr [rsp + 0x38]
               	mov	r10, qword ptr [rsp + 0x108]
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
               	xor	qword ptr [rsp + 0xf0], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0xe8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
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
               	xor	qword ptr [rsp + 0xf0], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0xe8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
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
               	xor	qword ptr [rsp + 0xf0], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0xe8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
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
               	xor	qword ptr [rsp + 0xf0], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0xe8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x68], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xe0]
               	mov	r8, qword ptr [rsp + 0xe8]
               	mov	r9, qword ptr [rsp + 0x30]
               	mov	r10, qword ptr [rsp + 0xf0]
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
               	xor	qword ptr [rsp + 0xd8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
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
               	xor	qword ptr [rsp + 0xd8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
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
               	xor	qword ptr [rsp + 0xd8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
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
               	xor	qword ptr [rsp + 0xd8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x60], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xc8]
               	mov	r8, qword ptr [rsp + 0xd0]
               	mov	r9, qword ptr [rsp + 0x68]
               	mov	r10, qword ptr [rsp + 0xd8]
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
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
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
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
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
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
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
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x58], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	mov	r8, qword ptr [rsp + 0xc0]
               	mov	r9, qword ptr [rsp + 0x60]
               	mov	r10, qword ptr [rsp + 0x1e8]
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
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0xb0], rdi
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
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0xb0], rdi
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
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0xb0], rdi
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
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	jmp	 <L195>
<L194>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x88], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x50], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xb0]
               	mov	r8, qword ptr [rsp + 0xb8]
               	mov	r9, qword ptr [rsp + 0x58]
               	mov	r10, qword ptr [rsp + 0x1e0]
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
               	xor	qword ptr [rsp + 0x88], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0xa0], rdi
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
               	xor	qword ptr [rsp + 0x88], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0xa0], rdi
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
               	xor	qword ptr [rsp + 0x88], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0xa0], rdi
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
               	xor	qword ptr [rsp + 0x88], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	jmp	 <L207>
<L206>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x80], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x48], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x98], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x90], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xa0]
               	mov	r8, qword ptr [rsp + 0xa8]
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	r10, qword ptr [rsp + 0x88]
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
               	xor	qword ptr [rsp + 0x80], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x90], rdi
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
               	xor	qword ptr [rsp + 0x80], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x90], rdi
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
               	xor	qword ptr [rsp + 0x80], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x90], rdi
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
               	xor	qword ptr [rsp + 0x80], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x90], rdi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x2a8], r14
               	xor	r14d, r14d
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x260], rdi
               	xor	r12d, r12d
               	xor	ebx, ebx
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x90]
               	mov	r8, qword ptr [rsp + 0x98]
               	mov	r9, qword ptr [rsp + 0x48]
               	mov	r10, qword ptr [rsp + 0x80]
               	mov	qword ptr [rsp + 0x2e0], r15
               	mov	qword ptr [rsp + 0x270], rax
               	jmp	 <L220>
               	nop	word ptr cs:[rax + rax]
<L222>:
               	mov	r15, r9
               	shl	r15, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r15
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L221>
<L220>:
               	movabs	r15, 0x180ec6d33cfd0aba
               	bt	r15, r11
               	jae	 <L222>
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x260], r9
               	xor	r12, r8
               	xor	rbx, rdi
               	jmp	 <L222>
<L221>:
               	xor	r11d, r11d
               	mov	rax, rbx
               	jmp	 <L223>
               	nop
<L225>:
               	mov	r15, r9
               	shl	r15, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r15
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L224>
<L223>:
               	bt	rcx, r11
               	jae	 <L225>
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x260], r9
               	xor	r12, r8
               	xor	rax, rdi
               	jmp	 <L225>
<L224>:
               	xor	ecx, ecx
               	jmp	 <L226>
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
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x260], r9
               	xor	r12, r8
               	xor	rax, rdi
               	jmp	 <L228>
<L227>:
               	xor	ecx, ecx
               	mov	r11, qword ptr [rsp + 0x28]
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
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x260], r9
               	xor	r12, r8
               	xor	rax, rdi
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x2a0], rax
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x340], rax
               	mov	rcx, qword ptr [rsp + 0x280]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x348], rcx
               	lea	rcx, [r11 + 4*r11]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x78]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x350], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x358], rcx
               	mov	rcx, qword ptr [rsp + 0x250]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x360], rcx
               	mov	rcx, qword ptr [rsp + 0x240]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x368], rcx
               	mov	rcx, qword ptr [rsp + 0x230]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x220]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x370], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	rcx, qword ptr [rsp + 0x70]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x380], rcx
               	mov	rcx, qword ptr [rsp + 0x210]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x388], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x40]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x390], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x398], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a0], rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rbx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a8], rbx
               	mov	rcx, qword ptr [rsp + 0x68]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x60]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3b0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3b8], rcx
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c0], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c8], rcx
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r15, [rcx + 8*rcx]
               	mov	rcx, qword ptr [rsp + 0x260]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3d0], r15
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3d8], rcx
               	cmp	dword ptr [rsp + 0x278], 0x0
               	je	 <L232>
               	mov	qword ptr [rsp + 0x288], r12
               	mov	qword ptr [rsp + 0x28], r11
               	mov	rcx, qword ptr [rsp + 0x278]
               	neg	ecx
               	mov	qword ptr [rsp + 0x278], rcx
               	mov	esi, 0x1
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x18], rcx
               	vpbroadcastq	ymm6, qword ptr  <__libc_start_main+0xac0>
               	vpbroadcastw	xmm7, word ptr  <__libc_start_main+0xb20>
               	lea	rdi,  <__libc_start_main+0xb24>
               	vmovaps	ymm8, ymmword ptr  <__libc_start_main+0xaa0>
               	vpbroadcastq	xmm9, qword ptr  <__libc_start_main+0xad0>
               	mov	r9, qword ptr [rsp + 0x208]
               	mov	r11, qword ptr [rsp + 0x2c0]
               	mov	r12, qword ptr [rsp + 0x2e0]
               	mov	r8, qword ptr [rsp + 0x270]
               	vmovdqa	ymmword ptr [rsp + 0x6e0], ymm6
               	jmp	 <L233>
               	nop	dword ptr [rax]
<L239>:
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
               	mov	rdx, qword ptr [rsp + 0x280]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2b8]
               	mov	qword ptr [rsp + 0x290], rsi
               	mov	rsi, qword ptr [rsp + 0x2b0]
               	xor	rcx, rsi
               	mov	r9, qword ptr [rsp + 0x2a8]
               	xor	r9, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x280], rdx
               	xor	rsi, r9
               	mov	qword ptr [rsp + 0x2b0], rsi
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x2b8], rcx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x2a8], r9
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rax, rdx
               	shl	rax, 0x11
               	xor	r12, r11
               	xor	r8, rdx
               	xor	rdx, r12
               	xor	r11, r8
               	mov	qword ptr [rsp + 0x2c0], r11
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x270], r8
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x2e0], r12
               	mov	rsi, qword ptr [rsp + 0x78]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1d8]
               	xor	rcx, r13
               	mov	r9, qword ptr [rsp + 0x1d0]
               	xor	r9, rsi
               	xor	rsi, rcx
               	xor	r13, r9
               	mov	qword ptr [rsp + 0x298], r13
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x1d8], rcx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x1d0], r9
               	mov	rdi, qword ptr [rsp + 0x250]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1c8]
               	mov	r15, qword ptr [rsp + 0x1c0]
               	xor	r15, rcx
               	mov	r13, qword ptr [rsp + 0x1b8]
               	xor	r13, rdi
               	xor	rdi, r15
               	mov	qword ptr [rsp + 0x250], rdi
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0x1c8], rcx
               	xor	r15, rax
               	mov	qword ptr [rsp + 0x1c0], r15
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x1b8], r13
               	mov	rdi, qword ptr [rsp + 0x240]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	mov	r13, qword ptr [rsp + 0x1a8]
               	xor	r13, rcx
               	mov	r8, qword ptr [rsp + 0x1a0]
               	xor	r8, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x240], rdi
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x1b0], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x1a8], r13
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x1a0], r8
               	mov	rdi, qword ptr [rsp + 0x230]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x198]
               	mov	r13, qword ptr [rsp + 0x190]
               	xor	r13, rcx
               	mov	r10, qword ptr [rsp + 0x188]
               	xor	r10, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x230], rdi
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x198], rcx
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x188], r10
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x190], r13
               	mov	rdi, qword ptr [rsp + 0x220]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x180]
               	mov	r13, qword ptr [rsp + 0x178]
               	xor	r13, rcx
               	mov	rbx, qword ptr [rsp + 0x170]
               	xor	rbx, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x220], rdi
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x180], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x178], r13
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x170], rbx
               	mov	rbx, qword ptr [rsp + 0x70]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x168]
               	mov	r13, qword ptr [rsp + 0x160]
               	xor	r13, rcx
               	mov	r12, qword ptr [rsp + 0x158]
               	xor	r12, rbx
               	xor	rbx, r13
               	xor	rcx, r12
               	mov	qword ptr [rsp + 0x168], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x160], r13
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x158], r12
               	mov	rdi, qword ptr [rsp + 0x210]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x150]
               	mov	r13, qword ptr [rsp + 0x148]
               	xor	r13, rcx
               	mov	r11, qword ptr [rsp + 0x140]
               	xor	r11, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x210], rdi
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x150], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x148], r13
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x140], r11
               	mov	rdi, qword ptr [rsp + 0x20]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x138]
               	mov	r13, qword ptr [rsp + 0x130]
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x300], r14
               	mov	r14, qword ptr [rsp + 0x128]
               	xor	r14, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x20], rdi
               	xor	rcx, r14
               	mov	qword ptr [rsp + 0x138], rcx
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x128], r14
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x130], r13
               	mov	rdi, qword ptr [rsp + 0x40]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x120]
               	mov	r13, qword ptr [rsp + 0x118]
               	xor	r13, rcx
               	mov	r9, qword ptr [rsp + 0x110]
               	xor	r9, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x40], rdi
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x120], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x118], r13
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x110], r9
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x108]
               	mov	r13, qword ptr [rsp + 0x100]
               	xor	r13, rcx
               	mov	rdi, qword ptr [rsp + 0xf8]
               	xor	rdi, r8
               	xor	r8, r13
               	mov	qword ptr [rsp + 0x38], r8
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x108], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x100], r13
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0xf8], rdi
               	mov	rdi, qword ptr [rsp + 0x30]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xf0]
               	mov	r13, qword ptr [rsp + 0xe8]
               	xor	r13, rcx
               	mov	r15, qword ptr [rsp + 0xe0]
               	xor	r15, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x30], rdi
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0xf0], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0xe8], r13
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xe0], r15
               	mov	r12, qword ptr [rsp + 0x68]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xd8]
               	mov	r13, qword ptr [rsp + 0xd0]
               	xor	r13, rcx
               	mov	r8, qword ptr [rsp + 0xc8]
               	xor	r8, r12
               	xor	r12, r13
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0xd8], rcx
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0xc8], r8
               	xor	r13, rax
               	mov	qword ptr [rsp + 0xd0], r13
               	mov	r13, qword ptr [rsp + 0x60]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r8, qword ptr [rsp + 0x1e8]
               	mov	rcx, qword ptr [rsp + 0xc0]
               	xor	rcx, r8
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x1f0], rdi
               	xor	r13, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xc0], rcx
               	mov	r11, qword ptr [rsp + 0x58]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	r8, qword ptr [rsp + 0x1e0]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	xor	rcx, r8
               	mov	r15, qword ptr [rsp + 0xb0]
               	xor	r15, r11
               	xor	r11, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xb8], rcx
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x88], rdi
               	mov	rcx, qword ptr [rsp + 0xa8]
               	xor	rcx, rdi
               	mov	r14, qword ptr [rsp + 0xa0]
               	xor	r14, r9
               	xor	r9, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xa8], rcx
               	mov	rdi, qword ptr [rsp + 0x48]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	qword ptr [rsp + 0x80], r8
               	mov	rcx, qword ptr [rsp + 0x98]
               	xor	rcx, r8
               	mov	r10, qword ptr [rsp + 0x90]
               	xor	r10, rdi
               	xor	rdi, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x98], rcx
               	mov	rax, qword ptr [rsp + 0x260]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x288]
               	xor	rcx, qword ptr [rsp + 0x300]
               	mov	qword ptr [rsp + 0x288], rcx
               	mov	r8, qword ptr [rsp + 0x2a0]
               	xor	r8, qword ptr [rsp + 0x260]
               	mov	rcx, qword ptr [rsp + 0x288]
               	xor	qword ptr [rsp + 0x260], rcx
               	vpextrq	rcx, xmm0, 0x1
               	xor	qword ptr [rsp + 0x288], rax
               	lea	rax, [rcx + 4*rcx]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x280]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x28], rdx
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x78], rsi
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x340], rax
               	mov	qword ptr [rsp + 0x348], rcx
               	mov	rcx, qword ptr [rsp + 0x250]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x350], rdx
               	mov	rdx, qword ptr [rsp + 0x240]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x358], rsi
               	mov	rsi, qword ptr [rsp + 0x230]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x360], rcx
               	mov	rcx, qword ptr [rsp + 0x220]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x368], rdx
               	mov	qword ptr [rsp + 0x70], rbx
               	lea	rdx, [rbx + 4*rbx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x370], rsi
               	mov	rsi, qword ptr [rsp + 0x210]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x380], rdx
               	mov	rdx, qword ptr [rsp + 0x40]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x388], rsi
               	mov	rsi, qword ptr [rsp + 0x38]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x390], rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rbx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x398], rdx
               	mov	qword ptr [rsp + 0x68], r12
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3a0], rsi
               	mov	rsi, qword ptr [rsp + 0x290]
               	mov	qword ptr [rsp + 0x60], r13
               	lea	rdx, [4*r13]
               	add	rdx, r13
               	mov	r13, qword ptr [rsp + 0x298]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3a8], rbx
               	mov	qword ptr [rsp + 0x3b0], rcx
               	mov	qword ptr [rsp + 0x58], r11
               	lea	rcx, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x2c0]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3b8], rdx
               	mov	qword ptr [rsp + 0x50], r9
               	lea	rdx, [r9 + 4*r9]
               	mov	r9, qword ptr [rsp + 0x208]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3c0], rcx
               	mov	qword ptr [rsp + 0x48], rdi
               	lea	rcx, [rdi + 4*rdi]
               	lea	rdi,  <__libc_start_main+0xb24>
               	rol	rcx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	r12, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c8], rdx
               	mov	rcx, qword ptr [rsp + 0x260]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3d0], r12
               	mov	qword ptr [rsp + 0x3d8], rcx
               	mov	rdx, qword ptr [rsp + 0x1f0]
               	xor	qword ptr [rsp + 0x1e8], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x1f0], rdx
               	mov	rcx, qword ptr [rsp + 0x300]
               	vpbroadcastq	ymm1, xmm1
               	xor	qword ptr [rsp + 0x1e0], r15
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xb0], r15
               	mov	r15, r12
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	xor	qword ptr [rsp + 0x88], r14
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0xa0], r14
               	vpbroadcastq	ymm1, xmm2
               	xor	qword ptr [rsp + 0x80], r10
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x90], r10
               	vpblendd	ymm5, ymm0, ymm1, 0xc0  # ymm5 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	xor	rcx, r8
               	mov	r14, rcx
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x2a0], r8
               	mov	r8, qword ptr [rsp + 0x270]
               	mov	r12, qword ptr [rsp + 0x2e0]
<L244>:
               	mov	rcx, qword ptr [rsp + 0x278]
               	add	ecx, esi
               	inc	ecx
               	mov	edx, esi
               	inc	edx
               	mov	esi, edx
               	cmp	ecx, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x348]
               	vmovdqu	ymm10, ymmword ptr [rsp + 0x368]
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	cmp	al, 0xc
               	ja	 <L235>
               	vpand	ymm0, ymm10, ymm6
               	vpand	ymm1, ymm4, ymm6
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm2, xmm0, xmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x388]
               	vpshufb	xmm0, xmm0, xmm7
               	movzx	eax, al
               	movsxd	rax, dword ptr [rdi + 4*rax]
               	add	rax, rdi
               	jmp	rax
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rax, [rcx + 2*rcx]
               	shl	rax, 0x4
               	mov	qword ptr [r9 + rax + 0x20], 0x0
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L236>
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rax, [rcx + 2*rcx]
               	shl	rax, 0x4
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L237>
               	mov	rdx, qword ptr [rsp + 0x18]
               	lea	rax, [rdx + 2*rdx]
               	shl	rax, 0x4
               	vpextrb	ecx, xmm2, 0x7
               	mov	qword ptr [r9 + rax + 0x20], 0x0
               	vcvtsi2ss	xmm1, xmm11, ecx
               	lea	rcx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	mov	qword ptr [r9 + rax + 0x28], rcx
               	inc	rdx
               	mov	qword ptr [rsp + 0x18], rdx
               	vmovss	dword ptr [r9 + rax + 0x20], xmm1
               	vpunpcklbw	xmm0, xmm2, xmm0 # xmm0 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
               	vpshufb	xmm0, xmm0, xmm9
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [r9 + rax], ymm0
               	test	sil, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	mov	edi, 0x60
               	mov	qword ptr [rsp + 0x290], r15
               	mov	r15, rbx
               	mov	rbx, rsi
               	mov	rsi, qword ptr  <__libc_start_main+0x6f50>
               	vmovdqa	ymmword ptr [rsp + 0x2c0], ymm5
               	mov	qword ptr [rsp + 0x270], r8
               	mov	qword ptr [rsp + 0x298], r13
               	mov	r13, r11
               	vmovdqa	ymmword ptr [rsp + 0x300], ymm4
               	vmovdqa	ymmword ptr [rsp + 0x2e0], ymm10
               	vmovdqa	xmmword ptr [rsp + 0x330], xmm2
               	vzeroupper
               	call	 <_ZnwmRKSt9nothrow_t@plt>
               	vmovdqa	ymm10, ymmword ptr [rsp + 0x2e0]
               	vpbroadcastq	xmm9, qword ptr  <__libc_start_main+0xad0>
               	vmovaps	ymm8, ymmword ptr  <__libc_start_main+0xaa0>
               	lea	rdi,  <__libc_start_main+0xb24>
               	vpbroadcastw	xmm7, word ptr  <__libc_start_main+0xb20>
               	mov	rsi, rbx
               	vmovdqa	ymm6, ymmword ptr [rsp + 0x6e0]
               	mov	r11, r13
               	mov	r13, qword ptr [rsp + 0x298]
               	mov	r8, qword ptr [rsp + 0x270]
               	vmovdqa	ymm5, ymmword ptr [rsp + 0x2c0]
               	mov	r9, qword ptr [rsp + 0x208]
               	mov	rdx, qword ptr [rsp + 0x18]
               	lea	rcx, [rdx + 2*rdx]
               	shl	rcx, 0x4
               	mov	qword ptr [r9 + rcx], rax
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [r9 + rcx + 0x8], ymm0
               	lea	r10,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Head@Evaluation.CRTP.Head>(void*)>
               	mov	qword ptr [r9 + rcx + 0x28], r10
               	inc	rdx
               	mov	qword ptr [rsp + 0x18], rdx
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x330] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm1, ymm0, ymm8
               	vmovups	ymmword ptr [rax], ymm1
               	vmovdqu	xmm1, xmmword ptr [rsp + 0x398]
               	vpshufb	xmm1, xmm1, xmmword ptr  <__libc_start_main+0xb00>
               	vcvtdq2ps	xmm1, xmm1
               	movzx	ecx, r15b
               	vcvtsi2ss	xmm2, xmm11, ecx
               	vmovlps	qword ptr [rax + 0x20], xmm1
               	vmovss	dword ptr [rax + 0x28], xmm2
               	vshufps	xmm0, xmm0, xmm0, 0xff  # xmm0 = xmm0[3,3,3,3]
               	vmovss	dword ptr [rax + 0x2c], xmm0
               	vmovups	xmm3, xmmword ptr [rsp + 0x3b0]
               	vshufps	xmm3, xmm3, xmmword ptr [rsp + 0x3c0], 0x88 # xmm3 = xmm3[0,2],mem[0,2]
               	vandps	xmm3, xmm3, xmmword ptr  <__libc_start_main+0xb10>
               	vcvtdq2ps	xmm3, xmm3
               	vshufps	xmm4, xmm3, xmm3, 0xd8  # xmm4 = xmm3[0,2,1,3]
               	vmovups	xmmword ptr [rax + 0x30], xmm4
               	vmovdqa	ymm4, ymmword ptr [rsp + 0x300]
               	vmovlps	qword ptr [rax + 0x40], xmm1
               	movzx	ecx, byte ptr [rsp + 0x290]
               	vcvtsi2ss	xmm1, xmm11, ecx
               	vmovss	dword ptr [rax + 0x48], xmm2
               	vmovss	dword ptr [rax + 0x4c], xmm0
               	vmovss	dword ptr [rax + 0x50], xmm1
               	vshufps	xmm0, xmm3, xmm3, 0xe6  # xmm0 = xmm3[2,1,2,3]
               	vmovlps	qword ptr [rax + 0x54], xmm0
               	vextractps	dword ptr [rax + 0x5c], xmm3, 0x3
               	test	sil, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rax, [rcx + 2*rcx]
               	shl	rax, 0x4
               	mov	qword ptr [r9 + rax + 0x20], 0x0
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L240>
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rax, [rcx + 2*rcx]
               	shl	rax, 0x4
               	mov	qword ptr [r9 + rax + 0x20], 0x0
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L241>
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rax, [rcx + 2*rcx]
               	shl	rax, 0x4
               	mov	qword ptr [r9 + rax + 0x20], 0x0
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L236>
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rax, [rcx + 2*rcx]
               	shl	rax, 0x4
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	mov	qword ptr [r9 + rax + 0x28], rdx
               	inc	rcx
               	mov	qword ptr [rsp + 0x18], rcx
               	vpunpcklbw	xmm1, xmm2, xmm0 # xmm1 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
               	vpshufb	xmm1, xmm1, xmm9
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpsrlq	xmm2, xmm2, 0x38
               	vmovdqa	xmm3, xmmword ptr  <__libc_start_main+0xaf0>
               	vpblendvb	xmm0, xmm0, xmm2, xmm3
               	jmp	 <L242>
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rax, [rcx + 2*rcx]
               	shl	rax, 0x4
               	mov	qword ptr [r9 + rax + 0x20], 0x0
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
<L241>:
               	mov	qword ptr [r9 + rax + 0x28], rdx
               	inc	rcx
               	mov	qword ptr [rsp + 0x18], rcx
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm8
               	vmovups	ymmword ptr [r9 + rax], ymm1
               	vpextrb	ecx, xmm0, 0x0
               	jmp	 <L243>
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rax, [rcx + 2*rcx]
               	shl	rax, 0x4
               	mov	qword ptr [r9 + rax + 0x20], 0x0
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L236>
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rax, [rcx + 2*rcx]
               	shl	rax, 0x4
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
<L237>:
               	mov	qword ptr [r9 + rax + 0x28], rdx
               	inc	rcx
               	mov	qword ptr [rsp + 0x18], rcx
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm8
<L242>:
               	vmovups	ymmword ptr [r9 + rax], ymm1
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [r9 + rax + 0x20], xmm0
               	test	sil, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rax, [rcx + 2*rcx]
               	shl	rax, 0x4
               	mov	qword ptr [r9 + rax + 0x20], 0x0
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
<L240>:
               	mov	qword ptr [r9 + rax + 0x28], rdx
               	inc	rcx
               	mov	qword ptr [rsp + 0x18], rcx
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm8
               	vmovups	ymmword ptr [r9 + rax], ymm1
               	vpextrb	ecx, xmm0, 0x1
<L243>:
               	vcvtsi2ss	xmm0, xmm11, ecx
               	vmovss	dword ptr [r9 + rax + 0x20], xmm0
<L235>:
               	test	sil, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rax, [rcx + 2*rcx]
               	shl	rax, 0x4
               	mov	qword ptr [r9 + rax + 0x20], 0x0
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
<L236>:
               	mov	qword ptr [r9 + rax + 0x28], rdx
               	inc	rcx
               	mov	qword ptr [rsp + 0x18], rcx
               	vpmovzxbd	ymm0, xmm2      # ymm0 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymm8
               	vmovups	ymmword ptr [r9 + rax], ymm0
               	test	sil, 0x7
               	je	 <L239>
<L238>:
               	vpblendd	ymm0, ymm10, ymm4, 0xc0 # ymm0 = ymm10[0,1,2,3,4,5],ymm4[6,7]
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
               	vmovq	r15, xmm1
               	vpextrq	rbx, xmm0, 0x1
               	jmp	 <L244>
<L234>:
               	mov	rax, qword ptr [rsp + 0x18]
               	shl	rax, 0x4
               	lea	rbx, [rax + 2*rax]
               	test	rbx, rbx
               	je	 <L245>
               	lea	rax, [r9 + rbx]
               	mov	qword ptr [rsp + 0x20], rax
               	mov	r13d, 0x1
               	xor	r12d, r12d
               	mov	eax, 0x1
               	mov	r14, r9
               	jmp	 <L246>
               	nop	word ptr [rax + rax]
<L248>:
               	add	r14, 0x180
               	inc	r13d
               	popcnt	eax, r13d
               	mov	r12d, r15d
               	cmp	r14, qword ptr [rsp + 0x20]
               	je	 <L247>
<L246>:
               	mov	r15d, eax
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [r14 + 0x28]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x1f0], xmm0
               	lea	rdi, [r14 + 0x30]
               	call	qword ptr [r14 + 0x58]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	lea	rdi, [r14 + 0x60]
               	call	qword ptr [r14 + 0x88]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x250], xmm0
               	lea	rdi, [r14 + 0x90]
               	call	qword ptr [r14 + 0xb8]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x240], xmm0
               	lea	rdi, [r14 + 0xc0]
               	call	qword ptr [r14 + 0xe8]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x230], xmm0
               	lea	rdi, [r14 + 0xf0]
               	call	qword ptr [r14 + 0x118]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x220], xmm0
               	lea	rdi, [r14 + 0x120]
               	call	qword ptr [r14 + 0x148]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x210], xmm0
               	lea	rdi, [r14 + 0x150]
               	call	qword ptr [r14 + 0x178]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovaps	xmm1, xmmword ptr [rsp + 0x230]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x220], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x210], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm0, xmm1, xmm0, 0x30 # xmm0 = xmm1[0,1,2],xmm0[0]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x1f0]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x260], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x250], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x240], 0x30 # xmm1 = xmm1[0,1,2],mem[0]
               	movsxd	rcx, r12d
               	mov	rax, rcx
               	shl	rax, 0x5
               	vmovaps	xmmword ptr [rsp + rax + 0x340], xmm1
               	vmovaps	xmmword ptr [rsp + rax + 0x350], xmm0
               	sub	ecx, r15d
               	jb	 <L248>
               	mov	eax, r12d
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x340]
               	inc	ecx
               	and	ecx, 0x3
               	je	 <L249>
               	lea	rsi, [rsp + 0x320]
               	add	rdx, rsi
               	xor	esi, esi
               	nop	word ptr cs:[rax + rax]
<L250>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx], ymm0
               	inc	rsi
               	add	rdx, -0x20
               	cmp	rcx, rsi
               	jne	 <L250>
               	mov	rcx, rax
               	sub	rcx, rsi
               	mov	edx, r15d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L248>
               	jmp	 <L251>
<L249>:
               	mov	rcx, rax
               	mov	edx, r15d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L248>
<L251>:
               	mov	rax, rcx
               	shl	rax, 0x5
               	lea	rsi, [rsp + 0x320]
               	add	rax, rsi
               	inc	rcx
               	nop	word ptr cs:[rax + rax]
<L252>:
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
               	jg	 <L252>
               	jmp	 <L248>
<L247>:
               	cmp	r15d, 0x2
               	mov	r9, qword ptr [rsp + 0x208]
               	jb	 <L245>
               	mov	eax, r15d
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x320]
               	test	r15b, 0x1
               	jne	 <L253>
               	dec	rax
               	lea	rdx, [rsp + 0x340]
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L253>:
               	cmp	r15d, 0x2
               	je	 <L245>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	lea	rdx, [rsp + 0x340]
               	add	rax, rdx
               	add	rax, -0x40
               	nop	word ptr cs:[rax + rax]
<L254>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L254>
<L245>:
               	vmovaps	xmm0, xmmword ptr [rsp + 0x350]
               	vaddps	xmm0, xmm0, xmmword ptr [rsp + 0x340]
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vmovss	dword ptr [rsp + 0x1f0], xmm0
               	test	rbx, rbx
               	je	 <L255>
               	mov	r14, r9
               	nop	word ptr cs:[rax + rax]
<L256>:
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [r14 + 0x28]
               	mov	rdi, rax
               	call	rdx
               	add	r14, 0x30
               	add	rbx, -0x30
               	jne	 <L256>
               	jmp	 <L232>
<L232>:
               	mov	r9, qword ptr [rsp + 0x208]
<L255>:
               	test	r9, r9
               	je	 <L257>
               	mov	rdi, r9
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L257>:
               	vcvttss2si	eax, dword ptr [rsp + 0x1f0]
               	lea	rsp, [rbp - 0x28]
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Circle>(void*)>:
<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Square>(void*)>:
<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipse>(void*)>:
<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Triangle>(void*)>:
<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Rectangle>(void*)>:
<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cone@Evaluation.CRTP.Cone>(void*)>:
<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cube@Evaluation.CRTP.Cube>(void*)>:
<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>(void*)>:
<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Sphere@Evaluation.CRTP.Sphere>(void*)>:
<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>(void*)>:
<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>(void*)>:
<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>:
               	mov	rax, rdi
               	lea	rdx,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Head@Evaluation.CRTP.Head>(void*)>:
               	mov	rax, qword ptr [rdi]
               	lea	rdx,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Head@Evaluation.CRTP.Head>(void*)>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Head@Evaluation.CRTP.Head>(void*)>:
               	test	rdi, rdi
               	jne	 <_ZdlPv@plt>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>:
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L0>
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L1>
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L2>
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L3>
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L4>
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L5>
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L6>
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L7>
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L8>
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L9>
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L10>
               	lea	rax,  <void Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	cmp	rsi, rax
               	je	 <L11>
<L8>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0xb68>
               	vmulss	xmm0, xmm1, xmm0
               	ret
<L0>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb5c>
               	ret
<L1>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb5c>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
<L2>:
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
<L3>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	ret
<L4>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb64>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
<L5>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
<L6>:
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
<L7>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb60>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
<L9>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb5c>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
<L10>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb58>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
<L11>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb68>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x6f30>
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

<_ZdlPv@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>

<_ZnwmRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x30>
               	push	0x3
               	jmp	 <.plt>

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>
