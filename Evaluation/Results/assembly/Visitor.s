
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
               	call	qword ptr  <__libc_start_main+0x6f48>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6f58>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6f60>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x6f68>
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
               	sub	rsp, 0x740
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
               	mov	qword ptr [rsp + 0x28], rdx
               	movsxd	rax, edx
               	shl	rax, 0x4
               	lea	rdi, [rax + 2*rax]
               	mov	rsi, qword ptr  <__libc_start_main+0x6f70>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x18], rax
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
               	mov	r10, rsi
               	shr	r10, 0x1f
               	xor	r10, rsi
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
               	mov	r8, rdi
               	shr	r8, 0x1f
               	xor	r8, rdi
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
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x2e8], rsi
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x2f0], r8
               	mov	rdi, r8
               	xor	r12d, r12d
               	mov	rcx, r10
               	mov	qword ptr [rsp + 0x2a8], r10
               	mov	r8, r10
               	mov	qword ptr [rsp + 0x2f8], r9
               	xor	r14d, r14d
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
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rax
               	jae	 <L6>
               	xor	r14, r9
               	xor	r12, r8
               	xor	rbx, rdi
               	xor	r15, rsi
               	jmp	 <L6>
<L5>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop
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
               	xor	r14, r9
               	xor	r12, r8
               	xor	rbx, rdi
               	xor	r15, rsi
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x228], r14
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
               	mov	r10, qword ptr [rsp + 0x228]
               	jae	 <L12>
               	xor	r10, r9
               	mov	qword ptr [rsp + 0x228], r10
               	xor	r12, r8
               	xor	rbx, rdi
               	xor	r15, rsi
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
               	xor	qword ptr [rsp + 0x228], r9
               	xor	r12, r8
               	xor	rbx, rdi
               	xor	r15, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x20], rsi
               	mov	qword ptr [rsp + 0x2e0], r15
               	mov	rsi, r15
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x208], rdi
               	mov	rdi, rbx
               	xor	r13d, r13d
               	mov	r8, r12
               	mov	r9, qword ptr [rsp + 0x228]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x200], r11
               	jmp	 <L16>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	r13, r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x20], rsi
               	jmp	 <L18>
<L17>:
               	xor	r10d, r10d
               	jmp	 <L19>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	r13, r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x20], rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	r13, r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x20], rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	r13, r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x20], rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1f8], rsi
               	mov	rsi, qword ptr [rsp + 0x20]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f0], rdi
               	mov	rdi, qword ptr [rsp + 0x208]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x210], r8
               	mov	r8, r13
               	mov	r9, qword ptr [rsp + 0x200]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1e8], r11
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
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x210], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
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
               	bt	rax, r10
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x210], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L33>
<L32>:
               	xor	r10d, r10d
               	jmp	 <L34>
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
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x210], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L36>
<L35>:
               	xor	r10d, r10d
               	jmp	 <L37>
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
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x210], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1e0], rsi
               	mov	rsi, qword ptr [rsp + 0x1f8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x280], r8
               	mov	r8, qword ptr [rsp + 0x210]
               	mov	r9, qword ptr [rsp + 0x1e8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1d0], r11
               	jmp	 <L40>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
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
               	bt	rax, r10
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L45>
<L44>:
               	xor	r10d, r10d
               	jmp	 <L46>
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
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L48>
<L47>:
               	xor	r10d, r10d
               	jmp	 <L49>
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
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1c8], rsi
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	mov	rdi, qword ptr [rsp + 0x1d8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x270], r8
               	mov	r8, qword ptr [rsp + 0x280]
               	mov	r9, qword ptr [rsp + 0x1d0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1b8], r11
               	jmp	 <L52>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
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
               	bt	rax, r10
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L57>
<L56>:
               	xor	r10d, r10d
               	jmp	 <L58>
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
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L60>
<L59>:
               	xor	r10d, r10d
               	jmp	 <L61>
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
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L63>
<L62>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1b0], rsi
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	mov	rdi, qword ptr [rsp + 0x1c0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x260], r8
               	mov	r8, qword ptr [rsp + 0x270]
               	mov	r9, qword ptr [rsp + 0x1b8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1a0], r11
               	jmp	 <L64>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
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
               	bt	rax, r10
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L69>
<L68>:
               	xor	r10d, r10d
               	jmp	 <L70>
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
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L72>
<L71>:
               	xor	r10d, r10d
               	jmp	 <L73>
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
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x198], rsi
               	mov	rsi, qword ptr [rsp + 0x1b0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x250], r8
               	mov	r8, qword ptr [rsp + 0x260]
               	mov	r9, qword ptr [rsp + 0x1a0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x188], r11
               	jmp	 <L76>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
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
               	bt	rax, r10
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L81>
<L80>:
               	xor	r10d, r10d
               	jmp	 <L82>
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
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L84>
<L83>:
               	xor	r10d, r10d
               	jmp	 <L85>
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
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L87>
<L86>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x180], rsi
               	mov	rsi, qword ptr [rsp + 0x198]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	mov	rdi, qword ptr [rsp + 0x190]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x240], r8
               	mov	r8, qword ptr [rsp + 0x250]
               	mov	r9, qword ptr [rsp + 0x188]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x170], r11
               	jmp	 <L88>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
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
               	bt	rax, r10
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L93>
<L92>:
               	xor	r10d, r10d
               	jmp	 <L94>
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
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L96>
<L95>:
               	xor	r10d, r10d
               	jmp	 <L97>
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
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L99>
<L98>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x168], rsi
               	mov	rsi, qword ptr [rsp + 0x180]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	mov	rdi, qword ptr [rsp + 0x178]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	mov	r8, qword ptr [rsp + 0x240]
               	mov	r9, qword ptr [rsp + 0x170]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x158], r11
               	jmp	 <L100>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
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
               	bt	rax, r10
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L105>
<L104>:
               	xor	r10d, r10d
               	jmp	 <L106>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L108>
<L107>:
               	xor	r10d, r10d
               	jmp	 <L109>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L111>
<L110>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x150], rsi
               	mov	rsi, qword ptr [rsp + 0x168]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	mov	rdi, qword ptr [rsp + 0x160]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x70], r8
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	r9, qword ptr [rsp + 0x158]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x140], r11
               	jmp	 <L112>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
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
               	bt	rax, r10
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L117>
<L116>:
               	xor	r10d, r10d
               	jmp	 <L118>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L120>
<L119>:
               	xor	r10d, r10d
               	jmp	 <L121>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x138], rsi
               	mov	rsi, qword ptr [rsp + 0x150]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	mov	rdi, qword ptr [rsp + 0x148]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x230], r8
               	mov	r8, qword ptr [rsp + 0x70]
               	mov	r9, qword ptr [rsp + 0x140]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x128], r11
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
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L125>
<L124>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
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
               	bt	rax, r10
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
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
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
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
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x120], rsi
               	mov	rsi, qword ptr [rsp + 0x138]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x118], rdi
               	mov	rdi, qword ptr [rsp + 0x130]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x68], r8
               	mov	r8, qword ptr [rsp + 0x230]
               	mov	r9, qword ptr [rsp + 0x128]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x110], r11
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
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
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
               	bt	rax, r10
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L141>
<L140>:
               	xor	r10d, r10d
               	jmp	 <L142>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L144>
<L143>:
               	xor	r10d, r10d
               	jmp	 <L145>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x108], rsi
               	mov	rsi, qword ptr [rsp + 0x120]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x100], rdi
               	mov	rdi, qword ptr [rsp + 0x118]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r8
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	r9, qword ptr [rsp + 0x110]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xf8], r11
               	jmp	 <L148>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
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
               	bt	rax, r10
               	jae	 <L153>
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L153>
<L152>:
               	xor	r10d, r10d
               	jmp	 <L154>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L156>
<L155>:
               	xor	r10d, r10d
               	jmp	 <L157>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L159>
<L158>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xf0], rsi
               	mov	rsi, qword ptr [rsp + 0x108]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], rdi
               	mov	rdi, qword ptr [rsp + 0x100]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x58], r8
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r9, qword ptr [rsp + 0xf8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xe0], r11
               	jmp	 <L160>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
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
               	bt	rax, r10
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
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
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
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
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L171>
<L170>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xd8], rsi
               	mov	rsi, qword ptr [rsp + 0xf0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd0], rdi
               	mov	rdi, qword ptr [rsp + 0xe8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	r9, qword ptr [rsp + 0xe0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xc8], r11
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
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
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
               	bt	rax, r10
               	jae	 <L177>
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
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
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
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
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xc0], rsi
               	mov	rsi, qword ptr [rsp + 0xd8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb8], rdi
               	mov	rdi, qword ptr [rsp + 0xd0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x48], r8
               	mov	r8, qword ptr [rsp + 0x50]
               	mov	r9, qword ptr [rsp + 0xc8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xb0], r11
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
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
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
               	bt	rax, r10
               	jae	 <L189>
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
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
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
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
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xa8], rsi
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa0], rdi
               	mov	rdi, qword ptr [rsp + 0xb8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x40], r8
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	r9, qword ptr [rsp + 0xb0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x98], r11
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
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
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
               	bt	rax, r10
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
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
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
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
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
               	jmp	 <L207>
<L206>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x90], rsi
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x88], rdi
               	mov	rdi, qword ptr [rsp + 0xa0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x38], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r9, qword ptr [rsp + 0x98]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x80], r11
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
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L210>
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L210>
<L209>:
               	xor	r10d, r10d
               	jmp	 <L211>
               	nop	word ptr [rax + rax]
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
               	bt	rax, r10
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
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
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
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
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x2a0], r12
               	mov	qword ptr [rsp + 0x2d8], rbx
               	xor	r10d, r10d
               	xor	r12d, r12d
               	mov	rsi, qword ptr [rsp + 0x90]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x30], rdi
               	mov	rdi, qword ptr [rsp + 0x88]
               	xor	r15d, r15d
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	r9, qword ptr [rsp + 0x80]
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x298], r13
               	jmp	 <L220>
               	nop	word ptr cs:[rax + rax]
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
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L222>
               	xor	r14, r9
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x30], rdi
               	xor	r12, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
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
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L224>
<L223>:
               	bt	rax, r10
               	jae	 <L225>
               	xor	r14, r9
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x30], rdi
               	xor	r12, rsi
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	jmp	 <L226>
               	nop	dword ptr [rax]
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
               	xor	r14, r9
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x30], rdi
               	xor	r12, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	jmp	 <L229>
               	nop	dword ptr [rax]
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
               	xor	r14, r9
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x30], rdi
               	xor	r12, rsi
               	jmp	 <L231>
<L230>:
               	mov	rax, qword ptr [rsp + 0x2a8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x340], rax
               	mov	rcx, qword ptr [rsp + 0x2a0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x348], rcx
               	mov	rcx, qword ptr [rsp + 0x298]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x210]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x350], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x358], rcx
               	mov	rcx, qword ptr [rsp + 0x280]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x360], rcx
               	mov	rcx, qword ptr [rsp + 0x270]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x368], rcx
               	mov	rcx, qword ptr [rsp + 0x260]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x250]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x370], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	rcx, qword ptr [rsp + 0x240]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x380], rcx
               	mov	rcx, qword ptr [rsp + 0x78]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x388], rcx
               	mov	rcx, qword ptr [rsp + 0x70]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x230]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x390], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x398], rcx
               	mov	rcx, qword ptr [rsp + 0x68]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a0], rcx
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a8], rsi
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x50]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3b0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3b8], rcx
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c0], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c8], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r10, [rcx + 8*rcx]
               	lea	rcx, [r15 + 4*r15]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3d0], r10
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3d8], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	test	ecx, ecx
               	je	 <L232>
               	mov	qword ptr [rsp + 0x2c8], rsi
               	mov	edi, ecx
               	mov	r13d, 0x28
               	xor	esi, esi
               	vpbroadcastq	ymm5, qword ptr  <__libc_start_main+0xa80>
               	vpbroadcastw	xmm6, word ptr  <__libc_start_main+0xae0>
               	lea	r9,  <__libc_start_main+0xae4>
               	vmovaps	ymm7, ymmword ptr  <__libc_start_main+0xac0>
               	vpbroadcastq	xmm8, qword ptr  <__libc_start_main+0xa88>
               	mov	r11, qword ptr [rsp + 0x20]
               	mov	qword ptr [rsp + 0x2d0], rdi
               	vmovdqa	ymmword ptr [rsp + 0x6e0], ymm5
               	jmp	 <L233>
               	nop	word ptr [rax + rax]
<L237>:
               	mov	r9, qword ptr [rsp + 0x2a8]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x2f0]
               	mov	rdi, qword ptr [rsp + 0x2f8]
               	xor	rdx, rdi
               	mov	rcx, qword ptr [rsp + 0x2e8]
               	xor	rcx, r9
               	xor	r9, rdx
               	mov	qword ptr [rsp + 0x2a8], r9
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x2f8], rdi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x2e8], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x2f0], rdx
               	mov	r9, qword ptr [rsp + 0x2a0]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x2d8]
               	mov	rdi, qword ptr [rsp + 0x228]
               	xor	rdx, rdi
               	mov	rcx, qword ptr [rsp + 0x2e0]
               	xor	rcx, r9
               	xor	r9, rdx
               	mov	qword ptr [rsp + 0x2a0], r9
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x228], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x2d8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x2e0], rcx
               	mov	rdx, qword ptr [rsp + 0x298]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x200]
               	mov	rdi, qword ptr [rsp + 0x208]
               	xor	rdi, rcx
               	xor	r11, rdx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x298], rdx
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x200], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x208], rdi
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x20], r11
               	mov	rdi, qword ptr [rsp + 0x210]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1f0]
               	mov	r8, qword ptr [rsp + 0x1e8]
               	xor	rdx, r8
               	mov	rcx, qword ptr [rsp + 0x1f8]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x210], rdi
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x1e8], r8
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1f0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1f8], rcx
               	mov	rdi, qword ptr [rsp + 0x280]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1d8]
               	mov	rbx, qword ptr [rsp + 0x1d0]
               	xor	rdx, rbx
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x280], rdi
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x1d0], rbx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1e0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1d8], rdx
               	mov	rdi, qword ptr [rsp + 0x270]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1c0]
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	mov	qword ptr [rsp + 0x2c0], r13
               	mov	r13, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x1c8]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x270], rdi
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x1b8], r13
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1c0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1c8], rcx
               	mov	rdi, qword ptr [rsp + 0x260]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1a8]
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	qword ptr [rsp + 0x2b0], r14
               	mov	r14, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x260], rdi
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x1a0], r14
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1a8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1b0], rcx
               	mov	rdi, qword ptr [rsp + 0x250]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x190]
               	mov	r9, qword ptr [rsp + 0x188]
               	xor	rdx, r9
               	mov	rcx, qword ptr [rsp + 0x198]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x250], rdi
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x188], r9
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x190], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x198], rcx
               	mov	rdi, qword ptr [rsp + 0x240]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x178]
               	mov	rcx, qword ptr [rsp + 0x170]
               	mov	qword ptr [rsp + 0x300], r12
               	mov	r12, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x180]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x240], rdi
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x170], r12
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x180], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x178], rdx
               	mov	r13, qword ptr [rsp + 0x78]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x160]
               	mov	rcx, qword ptr [rsp + 0x158]
               	mov	qword ptr [rsp + 0x28], r15
               	mov	r15, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x168]
               	xor	rcx, r13
               	xor	r13, rdx
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x158], r15
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x160], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x168], rcx
               	mov	r12, qword ptr [rsp + 0x70]
               	mov	qword ptr [rsp + 0x2b8], rsi
               	mov	rsi, r12
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x148]
               	mov	rax, qword ptr [rsp + 0x140]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x150]
               	xor	rcx, r12
               	xor	r12, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x140], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x148], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x150], rcx
               	mov	rdi, qword ptr [rsp + 0x230]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x130]
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x138]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x230], rdi
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x128], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x130], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x138], rcx
               	mov	r15, qword ptr [rsp + 0x68]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x118]
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x120]
               	xor	rcx, r15
               	xor	r15, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x110], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x120], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x118], rdx
               	mov	r14, qword ptr [rsp + 0x60]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x100]
               	mov	rsi, qword ptr [rsp + 0xf8]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x108]
               	xor	rcx, r14
               	xor	r14, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xf8], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x100], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x108], rcx
               	mov	rbx, qword ptr [rsp + 0x58]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xe8]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	rcx, rbx
               	xor	rbx, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xe0], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xe8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	r10, qword ptr [rsp + 0x50]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xd0]
               	mov	rsi, qword ptr [rsp + 0xc8]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xd8]
               	xor	rcx, r10
               	xor	r10, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xc8], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xd0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xd8], rcx
               	mov	r9, qword ptr [rsp + 0x48]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xb8]
               	mov	rsi, qword ptr [rsp + 0xb0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xc0]
               	xor	rcx, r9
               	xor	r9, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xb0], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xc0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xb8], rdx
               	mov	r11, qword ptr [rsp + 0x40]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xa0]
               	mov	rsi, qword ptr [rsp + 0x98]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xa8]
               	xor	rcx, r11
               	xor	r11, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x98], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xa0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xa8], rcx
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x88]
               	mov	rsi, qword ptr [rsp + 0x80]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x90]
               	xor	rcx, r8
               	xor	r8, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x80], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x88], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x90], rcx
               	mov	rax, qword ptr [rsp + 0x28]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2b0]
               	xor	qword ptr [rsp + 0x30], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	xor	qword ptr [rsp + 0x300], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	xor	rcx, qword ptr [rsp + 0x30]
               	mov	qword ptr [rsp + 0x28], rcx
               	xor	qword ptr [rsp + 0x30], rax
               	mov	rax, qword ptr [rsp + 0x2a8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rdi, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x2a0]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rax, qword ptr [rsp + 0x298]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rax, qword ptr [rsp + 0x210]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x340], rdi
               	mov	qword ptr [rsp + 0x348], rcx
               	mov	rax, qword ptr [rsp + 0x280]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x350], rdx
               	mov	rax, qword ptr [rsp + 0x270]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x358], rsi
               	mov	rax, qword ptr [rsp + 0x260]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x360], rcx
               	mov	rax, qword ptr [rsp + 0x250]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x368], rdx
               	mov	rax, qword ptr [rsp + 0x240]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x370], rsi
               	mov	qword ptr [rsp + 0x78], r13
               	lea	rsi, [4*r13]
               	add	rsi, r13
               	mov	r13, qword ptr [rsp + 0x2c0]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	qword ptr [rsp + 0x70], r12
               	lea	rcx, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x300]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x380], rdx
               	mov	rax, qword ptr [rsp + 0x230]
               	lea	rdx, [rax + 4*rax]
               	mov	rax, qword ptr [rsp + 0x28]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x388], rsi
               	mov	qword ptr [rsp + 0x68], r15
               	lea	rsi, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0x2b0]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x390], rcx
               	mov	qword ptr [rsp + 0x60], r14
               	lea	rcx, [r14 + 4*r14]
               	mov	r14, r15
               	rol	rcx, 0x7
               	lea	r15, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x398], rdx
               	mov	qword ptr [rsp + 0x58], rbx
               	lea	rcx, [rbx + 4*rbx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3a0], rsi
               	mov	rsi, qword ptr [rsp + 0x2b8]
               	mov	qword ptr [rsp + 0x50], r10
               	lea	rdx, [r10 + 4*r10]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	r10, r15
               	mov	qword ptr [rsp + 0x2c8], r15
               	mov	qword ptr [rsp + 0x3a8], r15
               	mov	r15, rax
               	mov	rax, rdi
               	mov	qword ptr [rsp + 0x3b0], rcx
               	mov	qword ptr [rsp + 0x48], r9
               	lea	rcx, [r9 + 4*r9]
               	lea	r9,  <__libc_start_main+0xae4>
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3b8], rdx
               	mov	qword ptr [rsp + 0x40], r11
               	lea	rdx, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x20]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3c0], rcx
               	mov	qword ptr [rsp + 0x38], r8
               	lea	rcx, [r8 + 4*r8]
               	mov	rdi, qword ptr [rsp + 0x2d0]
               	rol	rcx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	r10, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c8], rdx
               	lea	rcx, [r15 + 4*r15]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3d0], r10
               	mov	qword ptr [rsp + 0x3d8], rcx
               	xor	r14, r12
               	rol	r12, 0x2d
               	add	r13, 0x30
               	cmp	rdi, rsi
               	je	 <L234>
<L233>:
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x348]
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x368]
               	vpand	ymm0, ymm9, ymm5
               	vpand	ymm1, ymm4, ymm5
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm2, xmm0, xmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x388]
               	vpshufb	xmm0, xmm0, xmm6
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	movsxd	rax, dword ptr [r9 + 4*rax]
               	add	rax, r9
               	jmp	rax
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13 - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L235>
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rcx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	mov	qword ptr [rax + r13], rcx
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm7
               	vmovups	ymmword ptr [rax + r13 - 0x28], ymm1
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rax + r13 - 0x8], xmm0
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L236>
               	jmp	 <L237>
               	vpextrb	eax, xmm2, 0x7
               	vcvtsi2ss	xmm1, xmm10, eax
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13 - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	mov	qword ptr [rcx + r13], rax
               	vmovss	dword ptr [rcx + r13 - 0x8], xmm1
               	vpunpcklbw	xmm0, xmm2, xmm0 # xmm0 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
               	vpshufb	xmm0, xmm0, xmm8
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rcx + r13 - 0x28], ymm0
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L236>
               	jmp	 <L237>
               	mov	edi, 0x60
               	mov	qword ptr [rsp + 0x2b8], rsi
               	mov	rsi, qword ptr  <__libc_start_main+0x6f70>
               	mov	qword ptr [rsp + 0x2c0], r13
               	mov	qword ptr [rsp + 0x2b0], r14
               	mov	qword ptr [rsp + 0x20], r11
               	mov	qword ptr [rsp + 0x28], r15
               	mov	rbx, r10
               	vmovdqa	ymmword ptr [rsp + 0x300], ymm4
               	vmovdqa	ymmword ptr [rsp + 0x700], ymm9
               	vmovdqa	xmmword ptr [rsp + 0x330], xmm2
               	vzeroupper
               	call	 <_ZnwmRKSt9nothrow_t@plt>
               	vmovdqa	ymm9, ymmword ptr [rsp + 0x700]
               	vpbroadcastq	xmm8, qword ptr  <__libc_start_main+0xa88>
               	vmovaps	ymm7, ymmword ptr  <__libc_start_main+0xac0>
               	lea	r9,  <__libc_start_main+0xae4>
               	vpbroadcastw	xmm6, word ptr  <__libc_start_main+0xae0>
               	vmovdqa	ymm5, ymmword ptr [rsp + 0x6e0]
               	mov	rdi, qword ptr [rsp + 0x2d0]
               	mov	rsi, qword ptr [rsp + 0x2b8]
               	mov	r15, qword ptr [rsp + 0x28]
               	mov	r11, qword ptr [rsp + 0x20]
               	mov	r14, qword ptr [rsp + 0x2b0]
               	mov	r13, qword ptr [rsp + 0x2c0]
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13 - 0x28], rax
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rcx + r13 - 0x20], ymm0
               	lea	rdx,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Head@Evaluation.CRTP.Head>(void*)>
               	mov	qword ptr [rcx + r13], rdx
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x330] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm1, ymm0, ymm7
               	vmovups	ymmword ptr [rax], ymm1
               	vmovdqu	xmm1, xmmword ptr [rsp + 0x398]
               	vpshufb	xmm1, xmm1, xmmword ptr  <__libc_start_main+0xaa0>
               	vcvtdq2ps	xmm1, xmm1
               	movzx	ecx, byte ptr [rsp + 0x2c8]
               	vcvtsi2ss	xmm2, xmm10, ecx
               	vmovlps	qword ptr [rax + 0x20], xmm1
               	vmovss	dword ptr [rax + 0x28], xmm2
               	vshufps	xmm0, xmm0, xmm0, 0xff  # xmm0 = xmm0[3,3,3,3]
               	vmovss	dword ptr [rax + 0x2c], xmm0
               	vmovups	xmm3, xmmword ptr [rsp + 0x3b0]
               	vshufps	xmm3, xmm3, xmmword ptr [rsp + 0x3c0], 0x88 # xmm3 = xmm3[0,2],mem[0,2]
               	vandps	xmm3, xmm3, xmmword ptr  <__libc_start_main+0xab0>
               	vcvtdq2ps	xmm3, xmm3
               	vshufps	xmm4, xmm3, xmm3, 0xd8  # xmm4 = xmm3[0,2,1,3]
               	vmovups	xmmword ptr [rax + 0x30], xmm4
               	vmovdqa	ymm4, ymmword ptr [rsp + 0x300]
               	vmovlps	qword ptr [rax + 0x40], xmm1
               	movzx	ecx, bl
               	vcvtsi2ss	xmm1, xmm10, ecx
               	vmovss	dword ptr [rax + 0x48], xmm2
               	vmovss	dword ptr [rax + 0x4c], xmm0
               	vmovss	dword ptr [rax + 0x50], xmm1
               	vshufps	xmm0, xmm3, xmm3, 0xe6  # xmm0 = xmm3[2,1,2,3]
               	vmovlps	qword ptr [rax + 0x54], xmm0
               	vextractps	dword ptr [rax + 0x5c], xmm3, 0x3
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L236>
               	jmp	 <L237>
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13 - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L238>
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13 - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L239>
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13 - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L235>
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13], rax
               	vpunpcklbw	xmm1, xmm2, xmm0 # xmm1 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
               	vpshufb	xmm1, xmm1, xmm8
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpsrlq	xmm2, xmm2, 0x38
               	vmovdqa	xmm3, xmmword ptr  <__libc_start_main+0xa90>
               	vpblendvb	xmm0, xmm0, xmm2, xmm3
               	jmp	 <L240>
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13 - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
<L239>:
               	mov	qword ptr [rcx + r13], rax
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm7
               	vmovups	ymmword ptr [rcx + r13 - 0x28], ymm1
               	vpextrb	eax, xmm0, 0x0
               	jmp	 <L241>
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13 - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	jmp	 <L235>
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13], rax
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm7
<L240>:
               	vmovups	ymmword ptr [rcx + r13 - 0x28], ymm1
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rcx + r13 - 0x8], xmm0
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L236>
               	jmp	 <L237>
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13 - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
<L238>:
               	mov	qword ptr [rcx + r13], rax
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymm7
               	vmovups	ymmword ptr [rcx + r13 - 0x28], ymm1
               	vpextrb	eax, xmm0, 0x1
<L241>:
               	vcvtsi2ss	xmm0, xmm10, eax
               	vmovss	dword ptr [rcx + r13 - 0x8], xmm0
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L236>
               	jmp	 <L237>
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rcx + r13 - 0x8], 0x0
               	lea	rax,  <Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>(void*)>
<L235>:
               	mov	qword ptr [rcx + r13], rax
               	vpmovzxbd	ymm0, xmm2      # ymm0 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymm7
               	vmovups	ymmword ptr [rcx + r13 - 0x28], ymm0
               	inc	rsi
               	test	sil, 0x7
               	je	 <L237>
<L236>:
               	vpblendd	ymm0, ymm9, ymm4, 0xc0  # ymm0 = ymm9[0,1,2,3,4,5],ymm4[6,7]
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
               	vmovq	r10, xmm1
               	vpextrq	qword ptr [rsp + 0x2c8], xmm0, 0x1
               	add	r13, 0x30
               	cmp	rdi, rsi
               	jne	 <L233>
<L234>:
               	shl	rsi, 0x4
               	lea	rsi, [rsi + 2*rsi]
               	test	rsi, rsi
               	mov	r14, qword ptr [rsp + 0x18]
               	je	 <L242>
               	mov	r15, r13
               	mov	qword ptr [rsp + 0x20], rsi
               	lea	rax, [r14 + rsi]
               	mov	qword ptr [rsp + 0x30], rax
               	mov	ebx, 0x1
               	xor	r13d, r13d
               	mov	eax, 0x1
               	jmp	 <L243>
               	nop	word ptr [rax + rax]
<L245>:
               	add	r14, 0x180
               	inc	ebx
               	popcnt	eax, ebx
               	mov	r13d, r12d
               	cmp	r14, qword ptr [rsp + 0x30]
               	je	 <L244>
<L243>:
               	mov	r12d, eax
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [r14 + 0x28]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x210], xmm0
               	lea	rdi, [r14 + 0x30]
               	call	qword ptr [r14 + 0x58]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x280], xmm0
               	lea	rdi, [r14 + 0x60]
               	call	qword ptr [r14 + 0x88]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x270], xmm0
               	lea	rdi, [r14 + 0x90]
               	call	qword ptr [r14 + 0xb8]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	lea	rdi, [r14 + 0xc0]
               	call	qword ptr [r14 + 0xe8]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x250], xmm0
               	lea	rdi, [r14 + 0xf0]
               	call	qword ptr [r14 + 0x118]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x240], xmm0
               	lea	rdi, [r14 + 0x120]
               	call	qword ptr [r14 + 0x148]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovdqa	xmmword ptr [rsp + 0x230], xmm0
               	lea	rdi, [r14 + 0x150]
               	call	qword ptr [r14 + 0x178]
               	mov	rdi, rax
               	mov	rsi, rdx
               	call	 <std::common_type<std::invoke_result<decltype(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}), Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>::type>::type Visitor::ObjectValue@Evaluation.Dependency.Visitor.ObjectValue<40ul, (std::align_val_t)8>::Visit<ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)::operator()(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference) const::'lambda'(auto const&){}, Bodies3D::Circle const&, Bodies3D::Ellipse const&, Bodies3D::Rectangle const&, Bodies3D::Square const&, Bodies3D::Triangle const&, Bodies3D::Cube@Evaluation.CRTP.Cube const&, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere const&, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&, Bodies3D::Cone@Evaluation.CRTP.Cone const&, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&, Bodies3D::Head@Evaluation.CRTP.Head const&>(Visitor::ObjectReference@Evaluation.Dependency.Visitor.ObjectReference)>
               	vmovaps	xmm1, xmmword ptr [rsp + 0x250]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x240], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x230], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm0, xmm1, xmm0, 0x30 # xmm0 = xmm1[0,1,2],xmm0[0]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x210]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x280], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x270], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x260], 0x30 # xmm1 = xmm1[0,1,2],mem[0]
               	movsxd	rcx, r13d
               	mov	rax, rcx
               	shl	rax, 0x5
               	vmovaps	xmmword ptr [rsp + rax + 0x340], xmm1
               	vmovaps	xmmword ptr [rsp + rax + 0x350], xmm0
               	sub	ecx, r12d
               	jb	 <L245>
               	mov	eax, r13d
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x340]
               	inc	ecx
               	and	ecx, 0x3
               	je	 <L246>
               	lea	rsi, [rsp + 0x320]
               	add	rdx, rsi
               	xor	esi, esi
               	nop	word ptr cs:[rax + rax]
<L247>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx], ymm0
               	inc	rsi
               	add	rdx, -0x20
               	cmp	rcx, rsi
               	jne	 <L247>
               	mov	rcx, rax
               	sub	rcx, rsi
               	mov	edx, r12d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L245>
               	jmp	 <L248>
<L246>:
               	mov	rcx, rax
               	mov	edx, r12d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L245>
<L248>:
               	mov	rax, rcx
               	shl	rax, 0x5
               	lea	rsi, [rsp + 0x320]
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
               	cmp	r12d, 0x2
               	mov	r14, qword ptr [rsp + 0x18]
               	mov	r13, r15
               	mov	rsi, qword ptr [rsp + 0x20]
               	jb	 <L242>
               	mov	eax, r12d
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x320]
               	test	r12b, 0x1
               	jne	 <L250>
               	dec	rax
               	lea	rdx, [rsp + 0x340]
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L250>:
               	cmp	r12d, 0x2
               	je	 <L242>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	lea	rdx, [rsp + 0x340]
               	add	rax, rdx
               	add	rax, -0x40
               	nop	dword ptr [rax + rax]
<L251>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L251>
<L242>:
               	vmovaps	xmm0, xmmword ptr [rsp + 0x350]
               	vaddps	xmm0, xmm0, xmmword ptr [rsp + 0x340]
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vmovss	dword ptr [rsp + 0x210], xmm0
               	test	rsi, rsi
               	je	 <L252>
               	add	r13, -0x28
               	nop	word ptr cs:[rax + rax]
<L253>:
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [r14 + 0x28]
               	mov	rdi, rax
               	call	rdx
               	add	r14, 0x30
               	add	r13, -0x30
               	jne	 <L253>
               	mov	r14, qword ptr [rsp + 0x18]
               	test	r14, r14
               	je	 <L254>
<L252>:
               	mov	rdi, r14
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L254>:
               	vcvttss2si	eax, dword ptr [rsp + 0x210]
               	lea	rsp, [rbp - 0x28]
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	ret
<L232>:
               	mov	r14, qword ptr [rsp + 0x18]
               	test	r14, r14
               	jne	 <L252>
               	jmp	 <L254>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0xb28>
               	vmulss	xmm0, xmm1, xmm0
               	ret
<L0>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb1c>
               	ret
<L1>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb1c>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
<L2>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
<L3>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
<L4>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb24>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
<L5>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
<L6>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
<L7>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb20>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
<L9>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb1c>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
<L10>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb18>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
<L11>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xb28>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x6f50>
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
