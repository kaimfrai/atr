
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
               	call	qword ptr  <strcmp+0xa720>
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
               	mov	rax, qword ptr  <strcmp+0xa730>
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
               	mov	rax, qword ptr  <strcmp+0xa738>
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
               	cmp	qword ptr , 0x0 <strcmp+0xa740>
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
               	sub	rsp, 0x7a0
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r14d, byte ptr [rcx]
               	add	r14d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
<L1>:
               	lea	esi, [r14 + 4*r14]
               	movsx	edx, dl
               	lea	r14d, [rdx + 2*rsi]
               	add	r14d, -0x30
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	r15d, byte ptr [rax]
               	add	r15d, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax]
<L3>:
               	lea	edx, [r15 + 4*r15]
               	movsx	ecx, cl
               	lea	r15d, [rcx + 2*rdx]
               	add	r15d, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movsxd	rax, r15d
               	shl	rax, 0x3
               	lea	rdi, [rax + 4*rax]
               	mov	rsi, qword ptr  <strcmp+0xa748>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x228], rax
               	movsxd	rax, r14d
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <strcmp+0x2200>
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
               	vpbroadcastq	ymm1, qword ptr  <strcmp+0x2260>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <strcmp+0x2248>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <strcmp+0x2250>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <strcmp+0x2258>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovq	rdi, xmm0
               	vpextrq	r10, xmm0, 0x1
               	vmovdqa	ymmword ptr [rsp + 0x3a0], ymm0
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	r8, xmm0
               	vpextrq	r9, xmm0, 0x1
               	xor	r12d, r12d
               	xor	r13d, r13d
               	xor	eax, eax
               	xor	r11d, r11d
               	xor	ecx, ecx
               	mov	rdx, r10
               	mov	qword ptr [rsp + 0x230], r10
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
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
               	movabs	rdx, 0x180ec6d33cfd0aba
               	bt	rdx, rcx
               	jae	 <L6>
               	xor	rax, rdi
               	xor	r12, r10
               	xor	r13, r8
               	xor	r11, r9
               	jmp	 <L6>
<L5>:
               	movabs	rcx, -0x2a59ed990f36c6d4
               	xor	edx, edx
               	jmp	 <L7>
               	nop
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
               	xor	rax, rdi
               	xor	r12, r10
               	xor	r13, r8
               	xor	r11, r9
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x298], r11
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
               	jae	 <L12>
               	mov	r11, rax
               	xor	r11, rdi
               	mov	rax, r11
               	xor	r12, r10
               	xor	r13, r8
               	xor	qword ptr [rsp + 0x298], r9
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
               	xor	rax, rdi
               	xor	r12, r10
               	xor	r13, r8
               	xor	qword ptr [rsp + 0x298], r9
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x78], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x298]
               	mov	r8, r13
               	mov	r9, r12
               	mov	r10, rax
               	jmp	 <L16>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	jmp	 <L18>
<L17>:
               	xor	r11d, r11d
               	jmp	 <L19>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
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
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
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
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	jmp	 <L27>
<L26>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x70], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1e0]
               	mov	r8, qword ptr [rsp + 0x1e8]
               	mov	r9, qword ptr [rsp + 0x78]
               	mov	r10, qword ptr [rsp + 0x1f0]
               	jmp	 <L28>
               	nop
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
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L30>
<L29>:
               	xor	r11d, r11d
               	jmp	 <L31>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L33>
<L32>:
               	xor	r11d, r11d
               	jmp	 <L34>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L36>
<L35>:
               	xor	r11d, r11d
               	jmp	 <L37>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x270], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	mov	r8, qword ptr [rsp + 0x1d0]
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	r10, qword ptr [rsp + 0x1d8]
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
               	xor	qword ptr [rsp + 0x270], r9
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
               	xor	qword ptr [rsp + 0x270], r9
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
               	xor	qword ptr [rsp + 0x270], r9
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
               	xor	qword ptr [rsp + 0x270], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x260], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x198], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1b0]
               	mov	r8, qword ptr [rsp + 0x1b8]
               	mov	r9, qword ptr [rsp + 0x270]
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
               	xor	qword ptr [rsp + 0x260], r9
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
               	xor	qword ptr [rsp + 0x260], r9
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
               	xor	qword ptr [rsp + 0x260], r9
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
               	xor	qword ptr [rsp + 0x260], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x250], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x188], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x180], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x198]
               	mov	r8, qword ptr [rsp + 0x1a0]
               	mov	r9, qword ptr [rsp + 0x260]
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
               	xor	qword ptr [rsp + 0x250], r9
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
               	xor	qword ptr [rsp + 0x250], r9
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
               	xor	qword ptr [rsp + 0x250], r9
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
               	xor	qword ptr [rsp + 0x250], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x240], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x170], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x168], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x180]
               	mov	r8, qword ptr [rsp + 0x188]
               	mov	r9, qword ptr [rsp + 0x250]
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
               	xor	qword ptr [rsp + 0x240], r9
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
               	xor	qword ptr [rsp + 0x240], r9
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
               	xor	qword ptr [rsp + 0x240], r9
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
               	xor	qword ptr [rsp + 0x240], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x18], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x158], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x168]
               	mov	r8, qword ptr [rsp + 0x170]
               	mov	r9, qword ptr [rsp + 0x240]
               	mov	r10, qword ptr [rsp + 0x178]
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
               	xor	qword ptr [rsp + 0x160], r10
               	xor	qword ptr [rsp + 0x18], r9
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
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x158], r8
               	xor	qword ptr [rsp + 0x150], rdi
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
               	xor	qword ptr [rsp + 0x160], r10
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x158], r8
               	xor	qword ptr [rsp + 0x150], rdi
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
               	xor	qword ptr [rsp + 0x160], r10
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x158], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x40], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x140], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x150]
               	mov	r8, qword ptr [rsp + 0x158]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	r10, qword ptr [rsp + 0x160]
               	jmp	 <L100>
               	nop
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
               	xor	qword ptr [rsp + 0x40], r9
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
               	xor	qword ptr [rsp + 0x40], r9
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
               	xor	qword ptr [rsp + 0x40], r9
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
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x140], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x38], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x128], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x138]
               	mov	r8, qword ptr [rsp + 0x140]
               	mov	r9, qword ptr [rsp + 0x40]
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
               	xor	qword ptr [rsp + 0x38], r9
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
               	xor	qword ptr [rsp + 0x38], r9
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
               	xor	qword ptr [rsp + 0x38], r9
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
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x128], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x118], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x30], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x110], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x120]
               	mov	r8, qword ptr [rsp + 0x128]
               	mov	r9, qword ptr [rsp + 0x38]
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
               	xor	qword ptr [rsp + 0x30], r9
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
               	xor	qword ptr [rsp + 0x30], r9
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
               	xor	qword ptr [rsp + 0x30], r9
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
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x110], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x100], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x28], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x108]
               	mov	r8, qword ptr [rsp + 0x110]
               	mov	r9, qword ptr [rsp + 0x30]
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
               	xor	qword ptr [rsp + 0x28], r9
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
               	xor	qword ptr [rsp + 0x28], r9
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
               	xor	qword ptr [rsp + 0x28], r9
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
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	jmp	 <L147>
<L146>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x20], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xf0]
               	mov	r8, qword ptr [rsp + 0xf8]
               	mov	r9, qword ptr [rsp + 0x28]
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
               	xor	qword ptr [rsp + 0x20], r9
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
               	xor	qword ptr [rsp + 0x20], r9
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
               	xor	qword ptr [rsp + 0x20], r9
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
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x68], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xd8]
               	mov	r8, qword ptr [rsp + 0xe0]
               	mov	r9, qword ptr [rsp + 0x20]
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
               	xor	qword ptr [rsp + 0x68], r9
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
               	xor	qword ptr [rsp + 0x68], r9
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
               	xor	qword ptr [rsp + 0x68], r9
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
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x208], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x60], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x300], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xc0]
               	mov	r8, qword ptr [rsp + 0xc8]
               	mov	r9, qword ptr [rsp + 0x68]
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
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x300], rdi
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
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x300], rdi
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
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x300], rdi
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
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x300], rdi
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x200], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x58], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x300]
               	mov	r8, qword ptr [rsp + 0xb8]
               	mov	r9, qword ptr [rsp + 0x60]
               	mov	r10, qword ptr [rsp + 0x208]
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
               	xor	qword ptr [rsp + 0x200], r10
               	xor	qword ptr [rsp + 0x58], r9
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
               	xor	qword ptr [rsp + 0x200], r10
               	xor	qword ptr [rsp + 0x58], r9
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
               	xor	qword ptr [rsp + 0x200], r10
               	xor	qword ptr [rsp + 0x58], r9
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
               	xor	qword ptr [rsp + 0x200], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L195>
<L194>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x50], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x98], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xa8]
               	mov	r8, qword ptr [rsp + 0xb0]
               	mov	r9, qword ptr [rsp + 0x58]
               	mov	r10, qword ptr [rsp + 0x200]
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
               	xor	qword ptr [rsp + 0x1f8], r10
               	xor	qword ptr [rsp + 0x50], r9
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
               	xor	qword ptr [rsp + 0x1f8], r10
               	xor	qword ptr [rsp + 0x50], r9
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
               	xor	qword ptr [rsp + 0x1f8], r10
               	xor	qword ptr [rsp + 0x50], r9
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
               	xor	qword ptr [rsp + 0x1f8], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x98], rdi
               	jmp	 <L207>
<L206>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x90], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x48], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x88], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x80], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x98]
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	r10, qword ptr [rsp + 0x1f8]
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
               	xor	qword ptr [rsp + 0x48], r9
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
               	xor	qword ptr [rsp + 0x48], r9
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
               	xor	qword ptr [rsp + 0x48], r9
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
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x380], r13
               	mov	qword ptr [rsp + 0x2b8], r12
               	mov	qword ptr [rsp + 0x338], r15
               	mov	qword ptr [rsp + 0x378], r14
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x238], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x280], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x2a0], rdi
               	xor	r14d, r14d
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x80]
               	mov	r8, qword ptr [rsp + 0x88]
               	mov	r9, qword ptr [rsp + 0x48]
               	mov	r10, qword ptr [rsp + 0x90]
               	jmp	 <L220>
               	nop	dword ptr [rax + rax]
<L222>:
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x280], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	mov	r14, r12
               	xor	r14, rdi
<L223>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r12
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L221>
<L220>:
               	mov	r12, r14
               	movabs	r14, 0x180ec6d33cfd0aba
               	bt	r14, r11
               	jb	 <L222>
               	mov	r14, r12
               	jmp	 <L223>
<L221>:
               	xor	r11d, r11d
               	jmp	 <L224>
               	nop
<L226>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r12
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L225>
<L224>:
               	bt	rcx, r11
               	jae	 <L226>
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x280], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	xor	r14, rdi
               	jmp	 <L226>
<L225>:
               	xor	ecx, ecx
               	jmp	 <L227>
               	nop	word ptr [rax + rax]
<L229>:
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
               	je	 <L228>
<L227>:
               	bt	rdx, rcx
               	jae	 <L229>
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x280], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	xor	r14, rdi
               	jmp	 <L229>
<L228>:
               	xor	ecx, ecx
               	mov	r11, rax
               	jmp	 <L230>
               	nop	dword ptr [rax]
<L232>:
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
               	je	 <L231>
<L230>:
               	bt	rsi, rcx
               	jae	 <L232>
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x280], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	xor	r14, rdi
               	jmp	 <L232>
<L231>:
               	mov	rax, qword ptr [rsp + 0x230]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x3c0], rax
               	mov	rcx, qword ptr [rsp + 0x2b8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c8], rcx
               	mov	rcx, qword ptr [rsp + 0x78]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x70]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3d0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3d8], rcx
               	mov	rcx, qword ptr [rsp + 0x270]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3e0], rcx
               	mov	rcx, qword ptr [rsp + 0x260]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3e8], rcx
               	mov	rcx, qword ptr [rsp + 0x250]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x240]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3f0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3f8], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x400], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x408], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x30]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x410], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x418], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x420], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r13, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x428], r13
               	mov	rcx, qword ptr [rsp + 0x68]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x60]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x430], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x438], rcx
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x440], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x448], rcx
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r10, [rcx + 8*rcx]
               	mov	rcx, qword ptr [rsp + 0x280]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x450], r10
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x458], rcx
               	mov	rcx, qword ptr [rsp + 0x338]
               	test	ecx, ecx
               	je	 <L233>
               	neg	ecx
               	mov	qword ptr [rsp + 0x388], rcx
               	mov	r9d, 0x1
               	vpbroadcastq	ymm0, qword ptr  <strcmp+0x2240>
               	vmovdqa	ymmword ptr [rsp + 0x760], ymm0
               	xor	esi, esi
               	mov	rdi, qword ptr [rsp + 0x228]
               	jmp	 <L234>
<L239>:
               	vpblendd	ymm0, ymm0, ymm2, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm2[6,7]
               	vpermq	ymm0, ymm0, 0x93        # ymm0 = ymm0[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x3c0]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x400]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x420]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x440]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3c0], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3e0], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x400], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x420], ymm0
               	vpsrlq	ymm2, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x440], ymm2
               	vmovq	rax, xmm1
               	vextracti128	xmm1, ymm2, 0x1
               	vmovq	r10, xmm1
               	vpextrq	r13, xmm0, 0x1
<L240>:
               	mov	rcx, qword ptr [rsp + 0x388]
               	add	ecx, r9d
               	inc	ecx
               	mov	edx, r9d
               	inc	edx
               	mov	r9d, edx
               	cmp	ecx, 0x1
               	je	 <L235>
<L234>:
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x3c8]
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x3e8]
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	cmp	al, 0xc
               	mov	qword ptr [rsp + 0x230], r14
               	mov	qword ptr [rsp + 0x10], r9
               	ja	 <L236>
               	mov	qword ptr [rsp + 0x8], r11
               	vmovdqa	ymm1, ymmword ptr [rsp + 0x760]
               	vmovdqa	ymmword ptr [rsp + 0x340], ymm0
               	vpand	ymm0, ymm0, ymm1
               	vmovdqa	ymmword ptr [rsp + 0x2e0], ymm2
               	vpand	ymm1, ymm2, ymm1
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x210], xmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x408]
               	vpshufb	xmm0, xmm0, xmmword ptr  <strcmp+0x22a0>
               	movzx	eax, al
               	lea	rcx,  <strcmp+0x22d8>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Circle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r14 + 8*r12]
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x210] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpermilps	ymm0, ymm0, ymmword ptr  <strcmp+0x2220>
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Circle>+0x10>
               	jmp	 <L237>
               	vmovdqa	xmmword ptr [rsp + 0x2c0], xmm0
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r14 + 8*r12]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x210] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <strcmp+0x2220>
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vpmovzxbd	xmm0, dword ptr [rsp + 0x2c0] # xmm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>+0x10>
               	jmp	 <L237>
               	vmovdqa	xmmword ptr [rsp + 0x2c0], xmm0
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Triangle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x210]
               	vpextrb	ecx, xmm1, 0x7
               	vcvtsi2ss	xmm0, xmm6, ecx
               	lea	rcx, [r14 + 8*r12]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpunpcklbw	xmm1, xmm1, xmmword ptr [rsp + 0x2c0] # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3],xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
               	vpshufb	xmm1, xmm1, xmmword ptr  <strcmp+0x2280>
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Triangle>+0x10>
               	jmp	 <L237>
               	mov	r15, r10
               	mov	r14, r13
               	vmovups	ymm0, ymmword ptr [rsp + 0x430]
               	vmovaps	ymmword ptr [rsp + 0x2c0], ymm0
               	vmovups	xmm0, xmmword ptr [rsp + 0x418]
               	vmovaps	xmmword ptr [rsp + 0x390], xmm0
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Head@Evaluation.CRTP.Head, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	rbx, rdi
               	mov	edi, 0x80
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [rbx + 8*r12]
               	movzx	edx, r15b
               	vcvtsi2ss	xmm0, xmm6, edx
               	movzx	edx, r14b
               	vcvtsi2ss	xmm1, xmm6, edx
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	vpmovzxbd	ymm2, qword ptr [rsp + 0x210] # ymm2 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm2, ymm2
               	vpermilps	ymm3, ymm2, ymmword ptr  <strcmp+0x2220>
               	vmovups	ymmword ptr [rax + 0x20], ymm3
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x390]
               	vpshufb	xmm3, xmm3, xmmword ptr  <strcmp+0x2290>
               	vcvtdq2ps	xmm3, xmm3
               	vmovlps	qword ptr [rax + 0x40], xmm3
               	vmovss	dword ptr [rax + 0x48], xmm1
               	vshufps	xmm2, xmm2, xmm2, 0xff  # xmm2 = xmm2[3,3,3,3]
               	vmovss	dword ptr [rax + 0x4c], xmm2
               	vmovaps	ymm5, ymmword ptr [rsp + 0x2c0]
               	vextractf128	xmm4, ymm5, 0x1
               	vshufps	xmm4, xmm5, xmm4, 0x88  # xmm4 = xmm5[0,2],xmm4[0,2]
               	vandps	xmm4, xmm4, xmmword ptr  <strcmp+0x22b0>
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
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head>+0x10>
               	mov	qword ptr [rax + 0x10], rdi
               	mov	qword ptr [rax + 0x18], rdx
               	mov	qword ptr [rcx + 0x10], rsi
               	mov	rdi, rbx
               	jmp	 <L238>
               	vmovdqa	xmmword ptr [rsp + 0x2c0], xmm0
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r14 + 8*r12]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x2c0]
               	vpextrb	edx, xmm0, 0x1
               	vcvtsi2ss	xmm0, xmm6, edx
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x210] # ymm1 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <strcmp+0x2220>
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>+0x10>
               	jmp	 <L237>
               	vmovaps	xmmword ptr [rsp + 0x2c0], xmm0
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Rectangle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r14 + 8*r12]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x2c0]
               	vpextrb	edx, xmm0, 0x0
               	vcvtsi2ss	xmm0, xmm6, edx
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x210] # ymm1 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <strcmp+0x2220>
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Rectangle>+0x10>
               	jmp	 <L237>
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Square, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r14 + 8*r12]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x210] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <strcmp+0x2220>
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Square>+0x10>
               	jmp	 <L237>
               	vmovdqa	xmmword ptr [rsp + 0x2c0], xmm0
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r14 + 8*r12]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x210]
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x2c0]
               	vpunpcklbw	xmm0, xmm1, xmm2 # xmm0 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
               	vpshufb	xmm0, xmm0, xmmword ptr  <strcmp+0x2280>
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vpsrlq	xmm0, xmm1, 0x38
               	vmovdqa	xmm1, xmmword ptr  <strcmp+0x2270>
               	vpblendvb	xmm0, xmm2, xmm0, xmm1
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>+0x10>
               	jmp	 <L237>
               	vmovaps	xmmword ptr [rsp + 0x2c0], xmm0
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Ellipse, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r14 + 8*r12]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x2c0]
               	vpextrb	edx, xmm0, 0x0
               	vcvtsi2ss	xmm0, xmm6, edx
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x210] # ymm1 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <strcmp+0x2220>
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipse>+0x10>
               	jmp	 <L237>
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cube@Evaluation.CRTP.Cube, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r14 + 8*r12]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x210] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <strcmp+0x2220>
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube>+0x10>
               	jmp	 <L237>
               	vmovdqa	xmmword ptr [rsp + 0x2c0], xmm0
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r14 + 8*r12]
               	vpmovzxbd	xmm0, dword ptr [rsp + 0x2c0] # xmm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x210] # ymm1 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <strcmp+0x2220>
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>+0x10>
               	jmp	 <L237>
               	vmovdqa	xmmword ptr [rsp + 0x2c0], xmm0
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cone@Evaluation.CRTP.Cone, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x48
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r14 + 8*r12]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x2c0]
               	vpextrb	edx, xmm0, 0x1
               	vcvtsi2ss	xmm0, xmm6, edx
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x210] # ymm1 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <strcmp+0x2220>
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone>+0x10>
               	jmp	 <L237>
               	mov	r13, rsi
               	lea	r12, [rsi + 4*rsi]
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Sphere@Evaluation.CRTP.Sphere, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [rdi + 8*r12], rax
               	mov	byte ptr [rdi + 8*r12 + 0x8], 0x0
               	mov	r14, rdi
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx, [r14 + 8*r12]
               	movabs	rdx, 0x100000001
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rdx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rdx
               	lea	rsi, [rax + 0x10]
               	mov	rdx, rax
               	add	rdx, 0x20
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x210] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <strcmp+0x2220>
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	rdi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere>+0x10>
               	nop	word ptr cs:[rax + rax]
<L237>:
               	mov	qword ptr [rax + 0x10], rdi
               	mov	qword ptr [rax + 0x18], rdx
               	mov	qword ptr [rcx + 0x10], rsi
               	mov	rdi, r14
<L238>:
               	mov	r11, qword ptr [rsp + 0x8]
               	mov	r9, qword ptr [rsp + 0x10]
               	vmovdqa	ymm2, ymmword ptr [rsp + 0x2e0]
               	vmovdqa	ymm0, ymmword ptr [rsp + 0x340]
               	mov	qword ptr [rcx + 0x18], rax
               	mov	qword ptr [rcx + 0x20], rdx
               	mov	rsi, r13
               	inc	rsi
               	mov	r14, qword ptr [rsp + 0x230]
<L236>:
               	test	r9b, 0x7
               	jne	 <L239>
               	vmovdqa	ymm3, ymmword ptr [rsp + 0x3a0]
               	vpermq	ymm0, ymm3, 0xe3        # ymm0 = ymm3[3,0,2,3]
               	vpermq	ymm1, ymm3, 0xe9        # ymm1 = ymm3[1,2,2,3]
               	vpextrq	rax, xmm3, 0x1
               	shl	rax, 0x11
               	vpxor	xmm2, xmm1, xmm0
               	vpextrq	rcx, xmm2, 0x1
               	vpxor	xmm0, xmm2, xmm3
               	xor	rcx, rax
               	vmovq	xmm1, rcx
               	vmovq	rax, xmm2
               	rol	rax, 0x2d
               	vmovq	xmm2, rax
               	mov	rdx, qword ptr [rsp + 0x2b8]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x380]
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x2e0], rsi
               	mov	rsi, qword ptr [rsp + 0x298]
               	xor	rsi, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x2b8], rdx
               	xor	r11, rsi
               	mov	qword ptr [rsp + 0x8], r11
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x380], rcx
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x298], rsi
               	mov	rdx, qword ptr [rsp + 0x78]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1f0]
               	mov	r8, qword ptr [rsp + 0x1e8]
               	xor	r8, rcx
               	mov	r9, qword ptr [rsp + 0x1e0]
               	xor	r9, rdx
               	xor	rdx, r8
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x1f0], rcx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x1e0], r9
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x1e8], r8
               	mov	rsi, qword ptr [rsp + 0x70]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1d8]
               	mov	r9, qword ptr [rsp + 0x1d0]
               	xor	r9, rcx
               	mov	r10, qword ptr [rsp + 0x1c8]
               	xor	r10, rsi
               	xor	rsi, r9
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x1d8], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x1d0], r9
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x1c8], r10
               	mov	r8, qword ptr [rsp + 0x270]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	r10, qword ptr [rsp + 0x1b8]
               	xor	r10, rcx
               	mov	r14, qword ptr [rsp + 0x1b0]
               	xor	r14, r8
               	xor	r8, r10
               	mov	qword ptr [rsp + 0x270], r8
               	xor	rcx, r14
               	mov	qword ptr [rsp + 0x1c0], rcx
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x1b8], r10
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x1b0], r14
               	mov	r8, qword ptr [rsp + 0x260]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	mov	r14, qword ptr [rsp + 0x1a0]
               	xor	r14, rcx
               	mov	r12, qword ptr [rsp + 0x198]
               	xor	r12, r8
               	xor	r8, r14
               	mov	qword ptr [rsp + 0x260], r8
               	xor	rcx, r12
               	mov	qword ptr [rsp + 0x1a8], rcx
               	xor	r14, rax
               	mov	qword ptr [rsp + 0x1a0], r14
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x198], r12
               	mov	r8, qword ptr [rsp + 0x250]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x190]
               	mov	r12, qword ptr [rsp + 0x188]
               	xor	r12, rcx
               	mov	r11, qword ptr [rsp + 0x180]
               	xor	r11, r8
               	xor	r8, r12
               	mov	qword ptr [rsp + 0x250], r8
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x190], rcx
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x180], r11
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x188], r12
               	mov	r8, qword ptr [rsp + 0x240]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x178]
               	mov	r12, qword ptr [rsp + 0x170]
               	xor	r12, rcx
               	mov	r13, qword ptr [rsp + 0x168]
               	xor	r13, r8
               	xor	r8, r12
               	mov	qword ptr [rsp + 0x240], r8
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0x178], rcx
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x170], r12
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x168], r13
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x160]
               	mov	r13, qword ptr [rsp + 0x158]
               	xor	r13, rcx
               	mov	rbx, qword ptr [rsp + 0x150]
               	xor	rbx, r8
               	xor	r8, r13
               	mov	qword ptr [rsp + 0x18], r8
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x160], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x158], r13
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x150], rbx
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x148]
               	mov	r13, qword ptr [rsp + 0x140]
               	xor	r13, rcx
               	mov	r15, qword ptr [rsp + 0x138]
               	xor	r15, r8
               	xor	r8, r13
               	mov	qword ptr [rsp + 0x40], r8
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x148], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x140], r13
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x138], r15
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x130]
               	mov	r13, qword ptr [rsp + 0x128]
               	xor	r13, rcx
               	mov	r9, qword ptr [rsp + 0x120]
               	xor	r9, r8
               	xor	r8, r13
               	mov	qword ptr [rsp + 0x38], r8
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x130], rcx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x120], r9
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x128], r13
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	r13, qword ptr [rsp + 0x110]
               	xor	r13, rcx
               	mov	rdi, qword ptr [rsp + 0x108]
               	xor	rdi, r8
               	xor	r8, r13
               	mov	qword ptr [rsp + 0x30], r8
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x118], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x110], r13
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x108], rdi
               	mov	rdi, qword ptr [rsp + 0x28]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x100]
               	mov	r13, qword ptr [rsp + 0xf8]
               	xor	r13, rcx
               	mov	r10, qword ptr [rsp + 0xf0]
               	xor	r10, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x28], rdi
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x100], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0xf8], r13
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0xf0], r10
               	mov	rdi, qword ptr [rsp + 0x20]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xe8]
               	mov	r13, qword ptr [rsp + 0xe0]
               	xor	r13, rcx
               	mov	r14, qword ptr [rsp + 0xd8]
               	xor	r14, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x20], rdi
               	xor	rcx, r14
               	mov	qword ptr [rsp + 0xe8], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0xe0], r13
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0xd8], r14
               	mov	r12, qword ptr [rsp + 0x68]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xd0]
               	mov	r13, qword ptr [rsp + 0xc8]
               	xor	r13, rcx
               	mov	r11, qword ptr [rsp + 0xc0]
               	xor	r11, r12
               	xor	r12, r13
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0xd0], rcx
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0xc0], r11
               	xor	r13, rax
               	mov	qword ptr [rsp + 0xc8], r13
               	mov	r14, qword ptr [rsp + 0x60]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x208]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	xor	rcx, r11
               	mov	rdi, qword ptr [rsp + 0x300]
               	xor	rdi, r14
               	mov	qword ptr [rsp + 0x300], rdi
               	xor	r14, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xb8], rcx
               	mov	r10, qword ptr [rsp + 0x58]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x200]
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, r11
               	mov	r15, qword ptr [rsp + 0xa8]
               	xor	r15, r10
               	xor	r10, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x1f8]
               	mov	rcx, qword ptr [rsp + 0xa0]
               	xor	rcx, r11
               	mov	rbx, qword ptr [rsp + 0x98]
               	xor	rbx, r9
               	xor	r9, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xa0], rcx
               	mov	rdi, qword ptr [rsp + 0x48]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x90]
               	mov	rcx, qword ptr [rsp + 0x88]
               	xor	rcx, r11
               	mov	r8, qword ptr [rsp + 0x80]
               	xor	r8, rdi
               	xor	rdi, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x88], rcx
               	mov	rax, qword ptr [rsp + 0x280]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2a0]
               	xor	rcx, qword ptr [rsp + 0x238]
               	mov	qword ptr [rsp + 0x2a0], rcx
               	mov	rcx, qword ptr [rsp + 0x230]
               	xor	rcx, qword ptr [rsp + 0x280]
               	mov	qword ptr [rsp + 0x230], rcx
               	mov	rcx, qword ptr [rsp + 0x2a0]
               	xor	qword ptr [rsp + 0x280], rcx
               	vpextrq	rcx, xmm0, 0x1
               	xor	qword ptr [rsp + 0x2a0], rax
               	lea	rax, [rcx + 4*rcx]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x2b8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x78], rdx
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x70], rsi
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x3c0], rax
               	mov	qword ptr [rsp + 0x3c8], rcx
               	mov	rcx, qword ptr [rsp + 0x270]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3d0], rdx
               	mov	rdx, qword ptr [rsp + 0x260]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3d8], rsi
               	mov	rsi, qword ptr [rsp + 0x250]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x3e0], rcx
               	mov	rcx, qword ptr [rsp + 0x240]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3e8], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3f0], rsi
               	mov	rsi, qword ptr [rsp + 0x40]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x3f8], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x400], rdx
               	mov	rdx, qword ptr [rsp + 0x30]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x408], rsi
               	mov	rsi, qword ptr [rsp + 0x28]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x410], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r13, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x418], rdx
               	mov	qword ptr [rsp + 0x68], r12
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x420], rsi
               	mov	rsi, qword ptr [rsp + 0x2e0]
               	mov	qword ptr [rsp + 0x60], r14
               	lea	rdx, [r14 + 4*r14]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x428], r13
               	mov	qword ptr [rsp + 0x430], rcx
               	mov	qword ptr [rsp + 0x58], r10
               	lea	rcx, [r10 + 4*r10]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x438], rdx
               	mov	qword ptr [rsp + 0x50], r9
               	lea	rdx, [r9 + 4*r9]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x440], rcx
               	mov	qword ptr [rsp + 0x48], rdi
               	lea	rcx, [rdi + 4*rdi]
               	mov	r9, qword ptr [rsp + 0x10]
               	rol	rcx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	r10, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x448], rdx
               	mov	rcx, qword ptr [rsp + 0x280]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x450], r10
               	mov	qword ptr [rsp + 0x458], rcx
               	mov	rdx, qword ptr [rsp + 0x300]
               	xor	qword ptr [rsp + 0x208], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x300], rdx
               	vpbroadcastq	ymm1, xmm1
               	xor	qword ptr [rsp + 0x200], r15
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xa8], r15
               	mov	r14, qword ptr [rsp + 0x230]
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	xor	qword ptr [rsp + 0x1f8], rbx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x98], rbx
               	vpbroadcastq	ymm1, xmm2
               	xor	r11, r8
               	mov	qword ptr [rsp + 0x90], r11
               	mov	r11, qword ptr [rsp + 0x8]
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x80], r8
               	mov	rdi, qword ptr [rsp + 0x228]
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vmovdqa	ymmword ptr [rsp + 0x3a0], ymm0
               	xor	qword ptr [rsp + 0x238], r14
               	rol	r14, 0x2d
               	jmp	 <L240>
<L235>:
               	shl	rsi, 0x3
               	lea	rax, [rsi + 4*rsi]
               	test	rax, rax
               	je	 <L241>
               	mov	qword ptr [rsp + 0x18], rax
               	lea	r15, [rdi + rax]
               	mov	r13d, 0x1
               	xor	ebx, ebx
               	mov	eax, 0x1
               	mov	r12, rdi
               	jmp	 <L242>
               	nop
<L244>:
               	add	r12, 0x140
               	inc	r13d
               	popcnt	eax, r13d
               	mov	ebx, r14d
               	cmp	r12, r15
               	je	 <L243>
<L242>:
               	mov	r14d, eax
               	mov	rax, qword ptr [r12]
               	mov	rdi, qword ptr [r12 + 0x20]
               	movzx	ecx, byte ptr [r12 + 0x8]
               	vzeroupper
               	call	qword ptr [rax + 8*rcx]
               	vmovdqa	xmmword ptr [rsp + 0x300], xmm0
               	mov	rax, qword ptr [r12 + 0x28]
               	mov	rdi, qword ptr [r12 + 0x48]
               	movzx	ecx, byte ptr [r12 + 0x30]
               	call	qword ptr [rax + 8*rcx]
               	vmovdqa	xmmword ptr [rsp + 0x280], xmm0
               	mov	rax, qword ptr [r12 + 0x50]
               	mov	rdi, qword ptr [r12 + 0x70]
               	movzx	ecx, byte ptr [r12 + 0x58]
               	call	qword ptr [rax + 8*rcx]
               	vmovdqa	xmmword ptr [rsp + 0x2a0], xmm0
               	mov	rax, qword ptr [r12 + 0x78]
               	mov	rdi, qword ptr [r12 + 0x98]
               	movzx	ecx, byte ptr [r12 + 0x80]
               	call	qword ptr [rax + 8*rcx]
               	vmovdqa	xmmword ptr [rsp + 0x270], xmm0
               	mov	rax, qword ptr [r12 + 0xa0]
               	mov	rdi, qword ptr [r12 + 0xc0]
               	movzx	ecx, byte ptr [r12 + 0xa8]
               	call	qword ptr [rax + 8*rcx]
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	mov	rax, qword ptr [r12 + 0xc8]
               	mov	rdi, qword ptr [r12 + 0xe8]
               	movzx	ecx, byte ptr [r12 + 0xd0]
               	call	qword ptr [rax + 8*rcx]
               	vmovdqa	xmmword ptr [rsp + 0x250], xmm0
               	mov	rax, qword ptr [r12 + 0xf0]
               	mov	rdi, qword ptr [r12 + 0x110]
               	movzx	ecx, byte ptr [r12 + 0xf8]
               	call	qword ptr [rax + 8*rcx]
               	vmovdqa	xmmword ptr [rsp + 0x240], xmm0
               	mov	rax, qword ptr [r12 + 0x118]
               	mov	rdi, qword ptr [r12 + 0x138]
               	movzx	ecx, byte ptr [r12 + 0x120]
               	call	qword ptr [rax + 8*rcx]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x300]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x280], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x2a0], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x270], 0x30 # xmm1 = xmm1[0,1,2],mem[0]
               	vmovaps	xmm2, xmmword ptr [rsp + 0x260]
               	vinsertps	xmm2, xmm2, dword ptr [rsp + 0x250], 0x10 # xmm2 = xmm2[0],mem[0],xmm2[2,3]
               	vinsertps	xmm2, xmm2, dword ptr [rsp + 0x240], 0x20 # xmm2 = xmm2[0,1],mem[0],xmm2[3]
               	vinsertps	xmm0, xmm2, xmm0, 0x30 # xmm0 = xmm2[0,1,2],xmm0[0]
               	movsxd	rcx, ebx
               	mov	rax, rcx
               	shl	rax, 0x5
               	vmovaps	xmmword ptr [rsp + rax + 0x3d0], xmm0
               	vmovaps	xmmword ptr [rsp + rax + 0x3c0], xmm1
               	sub	ecx, r14d
               	mov	rdi, qword ptr [rsp + 0x228]
               	jb	 <L244>
               	mov	eax, ebx
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x3c0]
               	inc	ecx
               	and	ecx, 0x3
               	je	 <L245>
               	lea	rsi, [rsp + 0x3a0]
               	add	rdx, rsi
               	xor	esi, esi
               	nop	word ptr cs:[rax + rax]
<L246>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx], ymm0
               	inc	rsi
               	add	rdx, -0x20
               	cmp	rcx, rsi
               	jne	 <L246>
               	mov	rcx, rax
               	sub	rcx, rsi
               	mov	edx, r14d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L244>
               	jmp	 <L247>
<L245>:
               	mov	rcx, rax
               	mov	edx, r14d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L244>
<L247>:
               	mov	rax, rcx
               	shl	rax, 0x5
               	lea	rsi, [rsp + 0x3a0]
               	add	rax, rsi
               	inc	rcx
               	nop	word ptr cs:[rax + rax]
<L248>:
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
               	jg	 <L248>
               	jmp	 <L244>
<L243>:
               	cmp	r14d, 0x2
               	mov	r12, qword ptr [rsp + 0x338]
               	mov	r13, qword ptr [rsp + 0x18]
               	jb	 <L249>
               	mov	eax, r14d
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x3a0]
               	lea	rdx, [rsp + 0x3c0]
               	test	r14b, 0x1
               	jne	 <L250>
               	dec	rax
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L250>:
               	cmp	r14d, 0x2
               	je	 <L249>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	add	rax, rdx
               	add	rax, -0x40
<L251>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L251>
<L249>:
               	vmovaps	ymm0, ymmword ptr [rsp + 0x3c0]
               	vmovaps	ymmword ptr [rsp + 0x300], ymm0
               	xor	ebx, ebx
               	mov	r15, qword ptr  <strcmp+0xa758>
               	jmp	 <L252>
               	nop	dword ptr [rax]
<L257>:
               	cmp	byte ptr [r15], 0x0
               	je	 <L253>
               	lea	ecx, [rax - 0x1]
               	mov	dword ptr [r14 + 0x8], ecx
               	cmp	eax, 0x1
               	jne	 <L254>
               	jmp	 <L255>
<L253>:
               	mov	eax, 0xffffffff
               	lock
               	xadd	dword ptr [r14 + 0x8], eax
               	cmp	eax, 0x1
               	jne	 <L254>
<L255>:
               	mov	rdi, r14
               	vzeroupper
               	call	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release_last_use_cold()>
               	jmp	 <L256>
               	nop	word ptr cs:[rax + rax]
<L252>:
               	mov	r14, qword ptr [rdi + rbx + 0x18]
               	test	r14, r14
               	je	 <L254>
               	mov	rax, qword ptr [r14 + 0x8]
               	movabs	rcx, 0x100000001
               	cmp	rax, rcx
               	jne	 <L257>
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
<L254>:
               	add	rbx, 0x28
               	cmp	r13, rbx
               	jne	 <L252>
               	mov	rbx, qword ptr [rsp + 0x378]
               	test	rdi, rdi
               	jne	 <L258>
               	jmp	 <L259>
<L233>:
               	mov	rdi, qword ptr [rsp + 0x228]
<L241>:
               	mov	rbx, qword ptr [rsp + 0x378]
               	mov	r12, qword ptr [rsp + 0x338]
               	test	rdi, rdi
               	je	 <L259>
<L258>:
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L259>:
               	cmp	ebx, 0x2a
               	jne	 <L260>
               	cmp	r12d, 0x186a0
               	jne	 <L260>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x300]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <strcmp+0x22d0>
               	jne	 <L261>
<L260>:
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
<L261>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x300], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x300] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <strcmp+0xa750>
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
               	mov	rax, qword ptr  <strcmp+0xa758>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <strcmp+0x22d4>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x22d4>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x22c0>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x22c4>
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
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x22c8>
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
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
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
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x22cc>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
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
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x22c4>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x22c4>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <strcmp+0xa728>
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
