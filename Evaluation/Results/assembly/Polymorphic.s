
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
               	call	qword ptr  <strcmp+0xa740>
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
               	mov	rax, qword ptr  <strcmp+0xa750>
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
               	mov	rax, qword ptr  <strcmp+0xa758>
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
               	cmp	qword ptr , 0x0 <strcmp+0xa760>
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

<initializer for module Evaluation.CRTP.Shape3D>:
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
               	call	 <initializer for module Meta.Math.Random>
               	pop	rax
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3

<initializer for module Meta.Math.Random>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
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

<_GLOBAL__sub_I_Polymorphic.cpp>:
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
               	call	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
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

<main>:
               	push	rbp
               	mov	rbp, rsp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	and	rsp, -0x20
               	sub	rsp, 0x780
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
               	mov	qword ptr [rsp + 0x308], rdx
               	movsxd	rax, edx
               	shl	rax, 0x3
               	lea	rdi, [rax + 4*rax]
               	mov	rsi, qword ptr  <strcmp+0xa768>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x228], rax
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
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x320], rsi
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x328], r10
               	mov	rdi, r10
               	xor	r12d, r12d
               	mov	rcx, r8
               	mov	qword ptr [rsp + 0x298], r8
               	mov	qword ptr [rsp + 0x330], r9
               	xor	r13d, r13d
               	jmp	 <L4>
               	nop	dword ptr [rax]
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
               	xor	r13, r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
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
               	xor	r13, r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L9>
<L8>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
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
               	mov	r10, r13
               	xor	r10, r9
               	mov	r13, r10
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r10d, r10d
               	jmp	 <L13>
               	nop	dword ptr [rax]
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
               	xor	r13, r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x218], rsi
               	mov	rsi, r14
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x210], rdi
               	mov	rdi, r15
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x280], r8
               	mov	r8, r12
               	mov	r9, r13
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x208], r11
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
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
               	bt	rax, r10
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x280], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x200], rsi
               	mov	rsi, qword ptr [rsp + 0x218]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f8], rdi
               	mov	rdi, qword ptr [rsp + 0x210]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x270], r8
               	mov	r8, qword ptr [rsp + 0x280]
               	mov	r9, qword ptr [rsp + 0x208]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1f0], r11
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x270], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1e8], rsi
               	mov	rsi, qword ptr [rsp + 0x200]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e0], rdi
               	mov	rdi, qword ptr [rsp + 0x1f8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x260], r8
               	mov	r8, qword ptr [rsp + 0x270]
               	mov	r9, qword ptr [rsp + 0x1f0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1d8], r11
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1d0], rsi
               	mov	rsi, qword ptr [rsp + 0x1e8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c8], rdi
               	mov	rdi, qword ptr [rsp + 0x1e0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x250], r8
               	mov	r8, qword ptr [rsp + 0x260]
               	mov	r9, qword ptr [rsp + 0x1d8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1c0], r11
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
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
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
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
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
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
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
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x250], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
               	jmp	 <L63>
<L62>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1b8], rsi
               	mov	rsi, qword ptr [rsp + 0x1d0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b0], rdi
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x240], r8
               	mov	r8, qword ptr [rsp + 0x250]
               	mov	r9, qword ptr [rsp + 0x1c0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1a8], r11
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
               	xor	qword ptr [rsp + 0x1a8], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	xor	qword ptr [rsp + 0x1b8], rsi
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
               	xor	qword ptr [rsp + 0x1a8], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	xor	qword ptr [rsp + 0x1b8], rsi
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
               	xor	qword ptr [rsp + 0x1a8], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	xor	qword ptr [rsp + 0x1b8], rsi
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
               	xor	qword ptr [rsp + 0x1a8], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	xor	qword ptr [rsp + 0x1b8], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1a0], rsi
               	mov	rsi, qword ptr [rsp + 0x1b8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x198], rdi
               	mov	rdi, qword ptr [rsp + 0x1b0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x230], r8
               	mov	r8, qword ptr [rsp + 0x240]
               	mov	r9, qword ptr [rsp + 0x1a8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x190], r11
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
               	xor	qword ptr [rsp + 0x190], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	xor	qword ptr [rsp + 0x1a0], rsi
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
               	xor	qword ptr [rsp + 0x190], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	xor	qword ptr [rsp + 0x1a0], rsi
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
               	xor	qword ptr [rsp + 0x190], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	xor	qword ptr [rsp + 0x1a0], rsi
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
               	xor	qword ptr [rsp + 0x190], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	xor	qword ptr [rsp + 0x1a0], rsi
               	jmp	 <L87>
<L86>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x188], rsi
               	mov	rsi, qword ptr [rsp + 0x1a0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x180], rdi
               	mov	rdi, qword ptr [rsp + 0x198]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x18], r8
               	mov	r8, qword ptr [rsp + 0x230]
               	mov	r9, qword ptr [rsp + 0x190]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x178], r11
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
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	xor	qword ptr [rsp + 0x188], rsi
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
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	xor	qword ptr [rsp + 0x188], rsi
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
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	xor	qword ptr [rsp + 0x188], rsi
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
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	xor	qword ptr [rsp + 0x188], rsi
               	jmp	 <L99>
<L98>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x170], rsi
               	mov	rsi, qword ptr [rsp + 0x188]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x168], rdi
               	mov	rdi, qword ptr [rsp + 0x180]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x68], r8
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	r9, qword ptr [rsp + 0x178]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x160], r11
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
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
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
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
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
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
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
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
               	jmp	 <L111>
<L110>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x158], rsi
               	mov	rsi, qword ptr [rsp + 0x170]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], rdi
               	mov	rdi, qword ptr [rsp + 0x168]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r8
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	r9, qword ptr [rsp + 0x160]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x148], r11
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
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
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
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
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
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
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
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x140], rsi
               	mov	rsi, qword ptr [rsp + 0x158]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], rdi
               	mov	rdi, qword ptr [rsp + 0x150]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x58], r8
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r9, qword ptr [rsp + 0x148]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x130], r11
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
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
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
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
               	jmp	 <L129>
<L128>:
               	xor	r10d, r10d
               	jmp	 <L130>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
               	jmp	 <L132>
<L131>:
               	xor	r10d, r10d
               	jmp	 <L133>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x128], rsi
               	mov	rsi, qword ptr [rsp + 0x140]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	mov	rdi, qword ptr [rsp + 0x138]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	r9, qword ptr [rsp + 0x130]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x118], r11
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
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L137>
<L136>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x110], rsi
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	mov	rdi, qword ptr [rsp + 0x120]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x48], r8
               	mov	r8, qword ptr [rsp + 0x50]
               	mov	r9, qword ptr [rsp + 0x118]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x100], r11
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
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L159>
<L158>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xf8], rsi
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	mov	rdi, qword ptr [rsp + 0x108]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x40], r8
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	r9, qword ptr [rsp + 0x100]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xe8], r11
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
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
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
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
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
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
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
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L171>
<L170>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xe0], rsi
               	mov	rsi, qword ptr [rsp + 0xf8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], rdi
               	mov	rdi, qword ptr [rsp + 0xf0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x38], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r9, qword ptr [rsp + 0xe8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xd0], r11
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xc8], rsi
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	mov	rdi, qword ptr [rsp + 0xd8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x30], r8
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	r9, qword ptr [rsp + 0xd0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xb8], r11
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
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
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
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
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
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
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
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xb0], rsi
               	mov	rsi, qword ptr [rsp + 0xc8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], rdi
               	mov	rdi, qword ptr [rsp + 0xc0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x28], r8
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	r9, qword ptr [rsp + 0xb8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xa0], r11
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
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
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
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
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
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
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
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L207>
<L206>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x98], rsi
               	mov	rsi, qword ptr [rsp + 0xb0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x90], rdi
               	mov	rdi, qword ptr [rsp + 0xa8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x20], r8
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0xa0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x88], r11
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
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x90], rdi
               	xor	qword ptr [rsp + 0x98], rsi
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
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x90], rdi
               	xor	qword ptr [rsp + 0x98], rsi
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
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x90], rdi
               	xor	qword ptr [rsp + 0x98], rsi
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
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x90], rdi
               	xor	qword ptr [rsp + 0x98], rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x290], r12
               	mov	qword ptr [rsp + 0x310], r15
               	mov	qword ptr [rsp + 0x318], r14
               	mov	qword ptr [rsp + 0x300], rbx
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, qword ptr [rsp + 0x98]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x220], rdi
               	mov	rdi, qword ptr [rsp + 0x90]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x2c0], r8
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x88]
               	xor	r14d, r14d
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
               	xor	qword ptr [rsp + 0x2c0], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	rbx, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	jmp	 <L223>
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
               	xor	qword ptr [rsp + 0x2c0], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	rbx, rsi
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
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
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L227>
<L226>:
               	bt	rcx, rax
               	jae	 <L228>
               	xor	r14, r9
               	xor	qword ptr [rsp + 0x2c0], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	rbx, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
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
               	xor	r14, r9
               	xor	qword ptr [rsp + 0x2c0], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	rbx, rsi
               	jmp	 <L231>
<L230>:
               	mov	rax, qword ptr [rsp + 0x298]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x380], rax
               	mov	rcx, qword ptr [rsp + 0x290]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x388], rcx
               	mov	rcx, qword ptr [rsp + 0x280]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x270]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x390], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x398], rcx
               	mov	rcx, qword ptr [rsp + 0x260]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a0], rcx
               	mov	rcx, qword ptr [rsp + 0x250]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a8], rcx
               	mov	rcx, qword ptr [rsp + 0x240]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x230]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3b0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3b8], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c0], rcx
               	mov	rcx, qword ptr [rsp + 0x68]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c8], rcx
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x58]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3d0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3d8], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3e0], rcx
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r12, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3e8], r12
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x38]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3f0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3f8], rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x400], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x408], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r8, [rcx + 8*rcx]
               	mov	rcx, qword ptr [rsp + 0x2c0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x410], r8
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x418], rcx
               	mov	rcx, qword ptr [rsp + 0x308]
               	test	ecx, ecx
               	je	 <L232>
               	mov	ecx, ecx
               	mov	qword ptr [rsp + 0x338], rcx
               	mov	ecx, 0x10
               	mov	qword ptr [rsp + 0x8], rcx
               	vbroadcastsd	ymm0, qword ptr  <strcmp+0x2200>
               	vmovaps	ymmword ptr [rsp + 0x720], ymm0
               	xor	r15d, r15d
               	mov	rdi, qword ptr [rsp + 0x228]
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L238>:
               	mov	rdx, qword ptr [rsp + 0x298]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x330]
               	mov	rsi, qword ptr [rsp + 0x328]
               	xor	rsi, rcx
               	mov	r8, qword ptr [rsp + 0x320]
               	xor	r8, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x298], rdx
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x330], rcx
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x320], r8
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x328], rsi
               	mov	rdx, qword ptr [rsp + 0x290]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x310]
               	xor	rsi, r13
               	mov	rcx, qword ptr [rsp + 0x318]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x290], rdx
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x10], r13
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x310], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x318], rcx
               	mov	rdx, qword ptr [rsp + 0x280]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x210]
               	mov	r11, qword ptr [rsp + 0x208]
               	xor	rsi, r11
               	mov	rcx, qword ptr [rsp + 0x218]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x280], rdx
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x208], r11
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x210], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x218], rcx
               	mov	rdx, qword ptr [rsp + 0x270]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1f8]
               	mov	r14, qword ptr [rsp + 0x1f0]
               	xor	rsi, r14
               	mov	rcx, qword ptr [rsp + 0x200]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x270], rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x1f0], r14
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1f8], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x200], rcx
               	mov	rdx, qword ptr [rsp + 0x260]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	mov	r10, qword ptr [rsp + 0x1d8]
               	xor	rsi, r10
               	mov	rcx, qword ptr [rsp + 0x1e8]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x260], rdx
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x1d8], r10
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1e8], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1e0], rsi
               	mov	rdx, qword ptr [rsp + 0x250]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	r8, r15
               	mov	r15, rcx
               	xor	rsi, rcx
               	mov	rcx, qword ptr [rsp + 0x1d0]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x250], rdx
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x1c0], r15
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1c8], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1d0], rcx
               	mov	rdx, qword ptr [rsp + 0x240]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1b0]
               	mov	r12, qword ptr [rsp + 0x1a8]
               	xor	rsi, r12
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x240], rdx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x1a8], r12
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1b0], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1b8], rcx
               	mov	rdx, qword ptr [rsp + 0x230]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x198]
               	mov	rcx, qword ptr [rsp + 0x190]
               	mov	qword ptr [rsp + 0x70], rbx
               	mov	rbx, rcx
               	xor	rsi, rcx
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x230], rdx
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x190], rbx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x198], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1a0], rcx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x180]
               	mov	r13, qword ptr [rsp + 0x178]
               	xor	rsi, r13
               	mov	rcx, qword ptr [rsp + 0x188]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x18], rdx
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x178], r13
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x188], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x180], rsi
               	mov	r13, qword ptr [rsp + 0x68]
               	mov	rdx, r13
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x168]
               	mov	rax, qword ptr [rsp + 0x160]
               	xor	rsi, rax
               	mov	rcx, qword ptr [rsp + 0x170]
               	xor	rcx, r13
               	xor	r13, rsi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x160], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x168], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x170], rcx
               	mov	r12, qword ptr [rsp + 0x60]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x150]
               	mov	rsi, qword ptr [rsp + 0x148]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x158]
               	xor	rcx, r12
               	xor	r12, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x148], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x150], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x158], rcx
               	mov	r15, qword ptr [rsp + 0x58]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x138]
               	mov	rsi, qword ptr [rsp + 0x130]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x140]
               	xor	rcx, r15
               	xor	r15, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x130], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x138], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x140], rcx
               	mov	r14, qword ptr [rsp + 0x50]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x120]
               	mov	rsi, qword ptr [rsp + 0x118]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x128]
               	xor	rcx, r14
               	xor	r14, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x118], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x128], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x120], rdx
               	mov	rbx, qword ptr [rsp + 0x48]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x108]
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x110]
               	xor	rcx, rbx
               	xor	rbx, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x100], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x108], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x110], rcx
               	mov	r11, qword ptr [rsp + 0x40]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xf0]
               	mov	rsi, qword ptr [rsp + 0xe8]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xf8]
               	xor	rcx, r11
               	xor	r11, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xe8], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xf0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xf8], rcx
               	mov	r10, qword ptr [rsp + 0x38]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xd8]
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xe0]
               	xor	rcx, r10
               	xor	r10, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xd0], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xd8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xe0], rcx
               	mov	r9, qword ptr [rsp + 0x30]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc0]
               	mov	rsi, qword ptr [rsp + 0xb8]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xc8]
               	xor	rcx, r9
               	xor	r9, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xb8], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xc8], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xc0], rdx
               	mov	rdi, qword ptr [rsp + 0x28]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xa8]
               	mov	rsi, qword ptr [rsp + 0xa0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xa0], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xa8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	qword ptr [rsp + 0x340], r8
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x90]
               	mov	rsi, qword ptr [rsp + 0x88]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x98]
               	xor	rcx, r8
               	xor	r8, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x88], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x90], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x98], rcx
               	mov	rax, qword ptr [rsp + 0x2c0]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2f8]
               	xor	qword ptr [rsp + 0x220], rcx
               	mov	rcx, qword ptr [rsp + 0x2c0]
               	xor	qword ptr [rsp + 0x70], rcx
               	mov	rcx, qword ptr [rsp + 0x2c0]
               	xor	rcx, qword ptr [rsp + 0x220]
               	mov	qword ptr [rsp + 0x2c0], rcx
               	xor	qword ptr [rsp + 0x220], rax
               	mov	rax, qword ptr [rsp + 0x298]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x290]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x280]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rsi, qword ptr [rsp + 0x270]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x380], rax
               	mov	qword ptr [rsp + 0x388], rcx
               	mov	rcx, qword ptr [rsp + 0x260]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x390], rdx
               	mov	rdx, qword ptr [rsp + 0x250]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x398], rsi
               	mov	rsi, qword ptr [rsp + 0x240]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x3a0], rcx
               	mov	rcx, qword ptr [rsp + 0x230]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a8], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3b0], rsi
               	mov	qword ptr [rsp + 0x68], r13
               	lea	rsi, [4*r13]
               	add	rsi, r13
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x3b8], rcx
               	mov	qword ptr [rsp + 0x60], r12
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3c0], rdx
               	mov	qword ptr [rsp + 0x58], r15
               	lea	rdx, [r15 + 4*r15]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3c8], rsi
               	mov	qword ptr [rsp + 0x50], r14
               	lea	rsi, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x2f8]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x3d0], rcx
               	mov	qword ptr [rsp + 0x48], rbx
               	lea	rcx, [rbx + 4*rbx]
               	mov	rbx, qword ptr [rsp + 0x70]
               	rol	rcx, 0x7
               	lea	r12, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3d8], rdx
               	mov	qword ptr [rsp + 0x40], r11
               	lea	rcx, [r11 + 4*r11]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3e0], rsi
               	mov	qword ptr [rsp + 0x38], r10
               	lea	rdx, [r10 + 4*r10]
               	mov	r13, qword ptr [rsp + 0x10]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3e8], r12
               	mov	qword ptr [rsp + 0x3f0], rcx
               	mov	qword ptr [rsp + 0x30], r9
               	lea	rcx, [r9 + 4*r9]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3f8], rdx
               	mov	qword ptr [rsp + 0x28], rdi
               	lea	rdx, [rdi + 4*rdi]
               	mov	rdi, qword ptr [rsp + 0x228]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x400], rcx
               	mov	qword ptr [rsp + 0x20], r8
               	lea	rcx, [r8 + 4*r8]
               	mov	r15, qword ptr [rsp + 0x340]
               	rol	rcx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	r8, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x408], rdx
               	mov	rcx, qword ptr [rsp + 0x2c0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x410], r8
               	mov	qword ptr [rsp + 0x418], rcx
               	xor	r14, rbx
               	rol	rbx, 0x2d
               	add	qword ptr [rsp + 0x8], 0x28
               	cmp	qword ptr [rsp + 0x338], r15
               	je	 <L234>
<L233>:
               	mov	qword ptr [rsp + 0x2f8], r14
               	mov	qword ptr [rsp + 0x10], r13
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x388]
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x3a8]
               	vmovdqa	ymm1, ymmword ptr [rsp + 0x720]
               	vmovdqa	ymmword ptr [rsp + 0x740], ymm0
               	vpand	ymm0, ymm0, ymm1
               	vmovdqa	ymmword ptr [rsp + 0x340], ymm2
               	vpand	ymm1, ymm2, ymm1
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x70], xmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x3c8]
               	vpshufb	xmm0, xmm0, xmmword ptr  <strcmp+0x2230>
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	lea	rcx,  <strcmp+0x229c>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Circle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	mov	r8, qword ptr [rsp + 0x8]
               	lea	rcx, [r14 + r8]
               	add	rcx, -0x10
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x70]
               	vcvtdq2ps	ymm0, ymm0
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpermilps	ymm0, ymm0, ymmword ptr  <strcmp+0x2260>
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Circle>+0x10>
               	mov	qword ptr [rax + 0x10], rdi
               	mov	qword ptr [rax + 0x18], rdx
               	mov	qword ptr [r14 + r8], rsi
               	jmp	 <L235>
               	vmovdqa	xmmword ptr [rsp + 0x2a0], xmm0
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [r14 + 8*rcx]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x70]
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <strcmp+0x2260>
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vpmovzxbd	xmm0, dword ptr [rsp + 0x2a0]
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>+0x10>
               	jmp	 <L236>
               	vmovdqa	xmmword ptr [rsp + 0x2a0], xmm0
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Triangle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x70]
               	vpextrb	ecx, xmm1, 0x7
               	vcvtsi2ss	xmm0, xmm6, ecx
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [r14 + 8*rcx]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpunpcklbw	xmm1, xmm1, xmmword ptr [rsp + 0x2a0] # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3],xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
               	vpshufb	xmm1, xmm1, xmmword ptr  <strcmp+0x2210>
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Triangle>+0x10>
               	jmp	 <L236>
               	mov	r14, r8
               	vmovups	ymm0, ymmword ptr [rsp + 0x3f0]
               	vmovaps	ymmword ptr [rsp + 0x2a0], ymm0
               	vmovups	xmm0, xmmword ptr [rsp + 0x3d8]
               	vmovaps	xmmword ptr [rsp + 0x370], xmm0
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Head@Evaluation.CRTP.Head, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r13, rdi
               	mov	edi, 0x80
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [8*rcx]
               	add	rcx, r13
               	movzx	edx, r14b
               	vcvtsi2ss	xmm0, xmm6, edx
               	movzx	edx, r12b
               	vcvtsi2ss	xmm1, xmm6, edx
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	vpmovzxbd	ymm2, qword ptr [rsp + 0x70]
               	vcvtdq2ps	ymm2, ymm2
               	vpermilps	ymm3, ymm2, ymmword ptr  <strcmp+0x2260>
               	vmovups	ymmword ptr [rax + 0x20], ymm3
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x370]
               	vpshufb	xmm3, xmm3, xmmword ptr  <strcmp+0x2220>
               	vcvtdq2ps	xmm3, xmm3
               	vmovlps	qword ptr [rax + 0x40], xmm3
               	vmovss	dword ptr [rax + 0x48], xmm1
               	vshufps	xmm2, xmm2, xmm2, 0xff  # xmm2 = xmm2[3,3,3,3]
               	vmovss	dword ptr [rax + 0x4c], xmm2
               	vmovaps	ymm5, ymmword ptr [rsp + 0x2a0]
               	vextractf128	xmm4, ymm5, 0x1
               	vshufps	xmm4, xmm5, xmm4, 0x88  # xmm4 = xmm5[0,2],xmm4[0,2]
               	vandps	xmm4, xmm4, xmmword ptr  <strcmp+0x2240>
               	vcvtdq2ps	xmm4, xmm4
               	vshufps	xmm5, xmm4, xmm4, 0xd8  # xmm5 = xmm4[0,2,1,3]
               	vmovups	xmmword ptr [rax + 0x50], xmm5
               	vmovlps	qword ptr [rax + 0x60], xmm3
               	vmovss	dword ptr [rax + 0x68], xmm1
               	vmovss	dword ptr [rax + 0x6c], xmm2
               	vmovss	dword ptr [rax + 0x70], xmm0
               	vshufps	xmm0, xmm4, xmm4, 0xe6  # xmm0 = xmm4[2,1,2,3]
               	vmovlps	qword ptr [rax + 0x74], xmm0
               	vextractps	dword ptr [rax + 0x7c], xmm4, 0x3
               	add	rdx, 0x20
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head>+0x10>
               	mov	qword ptr [rax + 0x10], r8
               	mov	qword ptr [rax + 0x18], rdx
               	mov	rdi, qword ptr [rsp + 0x8]
               	mov	qword ptr [r13 + rdi], rsi
               	mov	rdi, r13
               	jmp	 <L237>
               	vmovdqa	xmmword ptr [rsp + 0x2a0], xmm0
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [r14 + 8*rcx]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x2a0]
               	vpextrb	edx, xmm0, 0x1
               	vcvtsi2ss	xmm0, xmm6, edx
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x70]
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <strcmp+0x2260>
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>+0x10>
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp + 0x2a0], xmm0
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Rectangle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [r14 + 8*rcx]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x2a0]
               	vpextrb	edx, xmm0, 0x0
               	vcvtsi2ss	xmm0, xmm6, edx
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x70]
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <strcmp+0x2260>
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Rectangle>+0x10>
               	jmp	 <L236>
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Square, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [r14 + 8*rcx]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x70]
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <strcmp+0x2260>
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Square>+0x10>
               	jmp	 <L236>
               	vmovdqa	xmmword ptr [rsp + 0x2a0], xmm0
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [r14 + 8*rcx]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x70]
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x2a0]
               	vpunpcklbw	xmm0, xmm1, xmm2 # xmm0 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
               	vpshufb	xmm0, xmm0, xmmword ptr  <strcmp+0x2210>
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vpsrlq	xmm0, xmm1, 0x38
               	vpmovzxbq	xmm1, word ptr  <strcmp+0x2298>
               	vpblendvb	xmm0, xmm2, xmm0, xmm1
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>+0x10>
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp + 0x2a0], xmm0
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Ellipse, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [r14 + 8*rcx]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x2a0]
               	vpextrb	edx, xmm0, 0x0
               	vcvtsi2ss	xmm0, xmm6, edx
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x70]
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <strcmp+0x2260>
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipse>+0x10>
               	jmp	 <L236>
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cube@Evaluation.CRTP.Cube, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [r14 + 8*rcx]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x70]
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <strcmp+0x2260>
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube>+0x10>
               	jmp	 <L236>
               	vmovdqa	xmmword ptr [rsp + 0x2a0], xmm0
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [r14 + 8*rcx]
               	vpmovzxbd	xmm0, dword ptr [rsp + 0x2a0]
               	vcvtdq2ps	xmm0, xmm0
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x70]
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <strcmp+0x2260>
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>+0x10>
               	jmp	 <L236>
               	vmovdqa	xmmword ptr [rsp + 0x2a0], xmm0
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cone@Evaluation.CRTP.Cone, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [r14 + 8*rcx]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x2a0]
               	vpextrb	edx, xmm0, 0x1
               	vcvtsi2ss	xmm0, xmm6, edx
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x70]
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <strcmp+0x2260>
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone>+0x10>
               	jmp	 <L236>
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Sphere@Evaluation.CRTP.Sphere, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdi + rcx - 0x10], rax
               	mov	byte ptr [rdi + rcx - 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r15 + 4*r15]
               	lea	rcx, [r14 + 8*rcx]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x70]
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <strcmp+0x2260>
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	r8,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere>+0x10>
               	nop	dword ptr [rax + rax]
<L236>:
               	mov	qword ptr [rax + 0x10], r8
               	mov	qword ptr [rax + 0x18], rdx
               	mov	rdi, qword ptr [rsp + 0x8]
               	mov	qword ptr [r14 + rdi], rsi
<L235>:
               	mov	rdi, r14
<L237>:
               	mov	r13, qword ptr [rsp + 0x10]
               	mov	qword ptr [rcx + 0x18], rax
               	mov	qword ptr [rcx + 0x20], rdx
               	inc	r15
               	test	r15b, 0x7
               	mov	r14, qword ptr [rsp + 0x2f8]
               	je	 <L238>
               	vmovdqa	ymm0, ymmword ptr [rsp + 0x740]
               	vpblendd	ymm0, ymm0, ymmword ptr [rsp + 0x340], 0xc0 # ymm0 = ymm0[0,1,2,3,4,5],mem[6,7]
               	vpermq	ymm0, ymm0, 0x93        # ymm0 = ymm0[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x380]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x3c0]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x3e0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x400]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x380], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3a0], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3c0], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3e0], ymm0
               	vpsrlq	ymm2, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x400], ymm2
               	vmovq	rax, xmm1
               	vextracti128	xmm1, ymm2, 0x1
               	vmovq	r8, xmm1
               	vpextrq	r12, xmm0, 0x1
               	add	qword ptr [rsp + 0x8], 0x28
               	cmp	qword ptr [rsp + 0x338], r15
               	jne	 <L233>
<L234>:
               	shl	r15, 0x3
               	lea	r13, [r15 + 4*r15]
               	test	r13, r13
               	je	 <L239>
               	add	r13, rdi
               	add	qword ptr [rsp + 0x8], -0x10
               	mov	r12d, 0x1
               	xor	r14d, r14d
               	mov	eax, 0x1
               	mov	r15, rdi
               	jmp	 <L240>
               	nop	word ptr cs:[rax + rax]
<L242>:
               	add	r15, 0x140
               	inc	r12d
               	popcnt	eax, r12d
               	mov	r14d, ebx
               	cmp	r15, r13
               	je	 <L241>
<L240>:
               	mov	ebx, eax
               	mov	rax, qword ptr [r15]
               	mov	rdi, qword ptr [r15 + 0x20]
               	movzx	ecx, byte ptr [r15 + 0x8]
               	vzeroupper
               	call	qword ptr [rax + 8*rcx]
               	vmovaps	xmmword ptr [rsp + 0x2c0], xmm0
               	mov	rax, qword ptr [r15 + 0x28]
               	mov	rdi, qword ptr [r15 + 0x48]
               	movzx	ecx, byte ptr [r15 + 0x30]
               	call	qword ptr [rax + 8*rcx]
               	vmovaps	xmmword ptr [rsp + 0x280], xmm0
               	mov	rax, qword ptr [r15 + 0x50]
               	mov	rdi, qword ptr [r15 + 0x70]
               	movzx	ecx, byte ptr [r15 + 0x58]
               	call	qword ptr [rax + 8*rcx]
               	vmovaps	xmmword ptr [rsp + 0x270], xmm0
               	mov	rax, qword ptr [r15 + 0x78]
               	mov	rdi, qword ptr [r15 + 0x98]
               	movzx	ecx, byte ptr [r15 + 0x80]
               	call	qword ptr [rax + 8*rcx]
               	vmovaps	xmmword ptr [rsp + 0x260], xmm0
               	mov	rax, qword ptr [r15 + 0xa0]
               	mov	rdi, qword ptr [r15 + 0xc0]
               	movzx	ecx, byte ptr [r15 + 0xa8]
               	call	qword ptr [rax + 8*rcx]
               	vmovaps	xmmword ptr [rsp + 0x250], xmm0
               	mov	rax, qword ptr [r15 + 0xc8]
               	mov	rdi, qword ptr [r15 + 0xe8]
               	movzx	ecx, byte ptr [r15 + 0xd0]
               	call	qword ptr [rax + 8*rcx]
               	vmovaps	xmmword ptr [rsp + 0x240], xmm0
               	mov	rax, qword ptr [r15 + 0xf0]
               	mov	rdi, qword ptr [r15 + 0x110]
               	movzx	ecx, byte ptr [r15 + 0xf8]
               	call	qword ptr [rax + 8*rcx]
               	vmovaps	xmmword ptr [rsp + 0x230], xmm0
               	mov	rax, qword ptr [r15 + 0x118]
               	mov	rdi, qword ptr [r15 + 0x138]
               	movzx	ecx, byte ptr [r15 + 0x120]
               	call	qword ptr [rax + 8*rcx]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x2c0]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x280], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x270], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x260], 0x30 # xmm1 = xmm1[0,1,2],mem[0]
               	vmovaps	xmm2, xmmword ptr [rsp + 0x250]
               	vinsertps	xmm2, xmm2, dword ptr [rsp + 0x240], 0x10 # xmm2 = xmm2[0],mem[0],xmm2[2,3]
               	vinsertps	xmm2, xmm2, dword ptr [rsp + 0x230], 0x20 # xmm2 = xmm2[0,1],mem[0],xmm2[3]
               	vinsertps	xmm0, xmm2, xmm0, 0x30 # xmm0 = xmm2[0,1,2],xmm0[0]
               	movsxd	rcx, r14d
               	mov	rax, rcx
               	shl	rax, 0x5
               	vmovaps	xmmword ptr [rsp + rax + 0x390], xmm0
               	vmovaps	xmmword ptr [rsp + rax + 0x380], xmm1
               	sub	ecx, ebx
               	mov	rdi, qword ptr [rsp + 0x228]
               	jb	 <L242>
               	mov	eax, r14d
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x380]
               	inc	ecx
               	and	ecx, 0x3
               	je	 <L243>
               	lea	rsi, [rsp + 0x360]
               	add	rdx, rsi
               	xor	esi, esi
               	nop	word ptr [rax + rax]
<L244>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx], ymm0
               	inc	rsi
               	add	rdx, -0x20
               	cmp	rcx, rsi
               	jne	 <L244>
               	mov	rcx, rax
               	sub	rcx, rsi
               	mov	edx, ebx
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L242>
               	jmp	 <L245>
<L243>:
               	mov	rcx, rax
               	mov	edx, ebx
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L242>
<L245>:
               	mov	rax, rcx
               	shl	rax, 0x5
               	lea	rsi, [rsp + 0x360]
               	add	rax, rsi
               	inc	rcx
               	nop	word ptr cs:[rax + rax]
<L246>:
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
               	jg	 <L246>
               	jmp	 <L242>
<L241>:
               	cmp	ebx, 0x2
               	jb	 <L247>
               	mov	eax, ebx
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x360]
               	lea	rdx, [rsp + 0x380]
               	test	bl, 0x1
               	jne	 <L248>
               	dec	rax
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L248>:
               	cmp	ebx, 0x2
               	je	 <L247>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	add	rax, rdx
               	add	rax, -0x40
               	nop
<L249>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L249>
<L247>:
               	vmovaps	ymm0, ymmword ptr [rsp + 0x380]
               	vmovaps	ymmword ptr [rsp + 0x2c0], ymm0
               	lea	rbx, [rdi + 0x18]
               	mov	r15, qword ptr  <strcmp+0xa778>
               	jmp	 <L250>
<L255>:
               	mov	eax, 0xffffffff
               	lock
               	xadd	dword ptr [r14 + 0x8], eax
               	cmp	eax, 0x1
               	je	 <L251>
               	nop
<L253>:
               	add	rbx, 0x28
               	add	qword ptr [rsp + 0x8], -0x28
               	je	 <L252>
<L250>:
               	mov	r14, qword ptr [rbx]
               	test	r14, r14
               	je	 <L253>
               	mov	rax, qword ptr [r14 + 0x8]
               	movabs	rcx, 0x100000001
               	cmp	rax, rcx
               	jne	 <L254>
               	mov	qword ptr [r14 + 0x8], 0x0
               	mov	rax, qword ptr [r14]
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [rax + 0x10]
               	mov	rax, qword ptr [r14]
               	mov	rdi, r14
               	call	qword ptr [rax + 0x18]
<L256>:
               	mov	rdi, qword ptr [rsp + 0x228]
               	jmp	 <L253>
               	nop
<L254>:
               	cmp	byte ptr [r15], 0x0
               	je	 <L255>
               	lea	ecx, [rax - 0x1]
               	mov	dword ptr [r14 + 0x8], ecx
               	cmp	eax, 0x1
               	jne	 <L253>
<L251>:
               	mov	rdi, r14
               	vzeroupper
               	call	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release_last_use_cold()>
               	jmp	 <L256>
<L252>:
               	mov	rbx, qword ptr [rsp + 0x300]
               	test	rdi, rdi
               	mov	r14, qword ptr [rsp + 0x308]
               	je	 <L257>
<L260>:
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L257>:
               	cmp	ebx, 0x2a
               	jne	 <L258>
               	cmp	r14d, 0x186a0
               	jne	 <L258>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x2c0]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <strcmp+0x2290>
               	jne	 <L259>
<L258>:
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
<L232>:
               	mov	rdi, qword ptr [rsp + 0x228]
<L239>:
               	mov	rbx, qword ptr [rsp + 0x300]
               	test	rdi, rdi
               	mov	r14, qword ptr [rsp + 0x308]
               	jne	 <L260>
               	jmp	 <L257>
<L259>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x2c0], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x2c0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <strcmp+0xa770>
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
               	mov	rax, qword ptr  <strcmp+0xa778>
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
               	vmovups	ymm0, ymmword ptr [rbx + 0x10]
               	vmovups	ymm1, ymmword ptr [rbx + 0x30]
               	vmovups	ymm2, ymmword ptr [rbx + 0x50]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	vmovups	ymmword ptr [rax + 0x30], ymm1
               	vmovups	ymmword ptr [rax + 0x50], ymm2
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
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<polymorphic::detail::holder_impl<Bodies3D::Circle>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Square>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Ellipse>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Triangle>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Rectangle>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::~holder_impl()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
               	jmp	 <_ZdlPv@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
               	mov	rax, qword ptr [rdi + 0x10]
               	add	rdi, 0x10
               	jmp	qword ptr [rax + 0x8]
               	int3
               	int3
               	int3
               	int3
               	int3

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
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
               	vmulss	xmm1, xmm1, dword ptr  <strcmp+0x2294>
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

<polymorphic::detail::trampoline<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2294>
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
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2280>
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
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2284>
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
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2288>
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

<polymorphic::detail::holder_impl<Bodies3D::Triangle>::clone() const>:
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
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Triangle>+0x10>
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

<polymorphic::detail::trampoline<Bodies3D::Triangle, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x228c>
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

<polymorphic::detail::holder_impl<Bodies3D::Square>::clone() const>:
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
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Square>+0x10>
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

<polymorphic::detail::trampoline<Bodies3D::Square, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<polymorphic::detail::holder_impl<Bodies3D::Rectangle>::clone() const>:
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
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Rectangle>+0x10>
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

<polymorphic::detail::trampoline<Bodies3D::Rectangle, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<polymorphic::detail::holder_impl<Bodies3D::Ellipse>::clone() const>:
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
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipse>+0x10>
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

<polymorphic::detail::trampoline<Bodies3D::Ellipse, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2284>
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

<polymorphic::detail::holder_impl<Bodies3D::Circle>::clone() const>:
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
               	lea	rdx,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Circle>+0x10>
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

<polymorphic::detail::trampoline<Bodies3D::Circle, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2284>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <strcmp+0xa748>
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

<_ZdlPv@plt>:
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
