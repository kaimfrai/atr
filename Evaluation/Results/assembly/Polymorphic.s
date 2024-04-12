
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
               	call	qword ptr  <strcmp+0xa978>
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
               	mov	rax, qword ptr  <strcmp+0xa988>
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
               	mov	rax, qword ptr  <strcmp+0xa990>
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
               	cmp	qword ptr , 0x0 <strcmp+0xa998>
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
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
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
               	call	 <initializer for module Meta.Auto.Simd.Int32>
               	pop	rax
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Int32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
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

<initializer for module Meta.Auto.Simd.UInt32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
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

<initializer for module Meta.Auto.Simd.UInt8>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5UInt8__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5UInt8__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.UInt32>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
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
               	call	 <initializer for module Meta.Auto.Array.Bounded>
               	pop	rax
               	jmp	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Array.Bounded>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
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
               	call	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>
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
               	sub	rsp, 0x3c8
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r14d, byte ptr [rcx]
               	add	r14d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	dword ptr [rax]
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
               	movsx	ebx, byte ptr [rax]
               	add	ebx, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	edx, [rbx + 4*rbx]
               	movsx	ecx, cl
               	lea	ebx, [rcx + 2*rdx]
               	add	ebx, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movsxd	rax, ebx
               	shl	rax, 0x3
               	lea	rdi, [rax + 4*rax]
               	mov	rsi, qword ptr  <strcmp+0xa9a0>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	r13, rax
               	movsxd	rdx, r14d
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
               	mov	r8, rsi
               	shr	r8, 0x1f
               	xor	r8, rsi
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
               	mov	r11, rdi
               	shr	r11, 0x1f
               	xor	r11, rdi
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
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x370], rcx
               	mov	rsi, rcx
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x378], r11
               	mov	rdi, r11
               	xor	ebp, ebp
               	mov	qword ptr [rsp + 0x2a0], r8
               	mov	qword ptr [rsp + 0x380], r10
               	mov	r9, r10
               	xor	r10d, r10d
               	jmp	 <L4>
               	nop
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
               	xor	rbp, r8
               	xor	r12, rdi
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
               	xor	r10, r9
               	xor	rbp, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x260], r13
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	mov	r13, r10
               	jmp	 <L10>
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
               	xor	r13, r9
               	xor	rbp, r8
               	xor	r12, rdi
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
               	xor	r13, r9
               	xor	rbp, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x258], rsi
               	mov	rsi, r15
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x250], rdi
               	mov	rdi, r12
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r8
               	mov	r8, rbp
               	mov	r9, r13
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x248], r11
               	jmp	 <L16>
               	nop
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
               	xor	qword ptr [rsp + 0x248], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x250], rdi
               	xor	qword ptr [rsp + 0x258], rsi
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
               	xor	qword ptr [rsp + 0x248], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x250], rdi
               	xor	qword ptr [rsp + 0x258], rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x248], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x250], rdi
               	xor	qword ptr [rsp + 0x258], rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x248], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x250], rdi
               	xor	qword ptr [rsp + 0x258], rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x240], rsi
               	mov	rsi, qword ptr [rsp + 0x258]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x238], rdi
               	mov	rdi, qword ptr [rsp + 0x250]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x18], r8
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r9, qword ptr [rsp + 0x248]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x230], r11
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x238], rdi
               	xor	qword ptr [rsp + 0x240], rsi
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
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x238], rdi
               	xor	qword ptr [rsp + 0x240], rsi
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
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x238], rdi
               	xor	qword ptr [rsp + 0x240], rsi
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
               	xor	qword ptr [rsp + 0x230], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x238], rdi
               	xor	qword ptr [rsp + 0x240], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x228], rsi
               	mov	rsi, qword ptr [rsp + 0x240]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x220], rdi
               	mov	rdi, qword ptr [rsp + 0x238]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x58], r8
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	r9, qword ptr [rsp + 0x230]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x218], r11
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
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	qword ptr [rsp + 0x228], rsi
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
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	qword ptr [rsp + 0x228], rsi
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
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	qword ptr [rsp + 0x228], rsi
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
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x210], rsi
               	mov	rsi, qword ptr [rsp + 0x228]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x208], rdi
               	mov	rdi, qword ptr [rsp + 0x220]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	r9, qword ptr [rsp + 0x218]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x200], r11
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x208], rdi
               	xor	qword ptr [rsp + 0x210], rsi
               	jmp	 <L63>
<L62>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1f8], rsi
               	mov	rsi, qword ptr [rsp + 0x210]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f0], rdi
               	mov	rdi, qword ptr [rsp + 0x208]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x48], r8
               	mov	r8, qword ptr [rsp + 0x50]
               	mov	r9, qword ptr [rsp + 0x200]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1e8], r11
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
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
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
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
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
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
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
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1e0], rsi
               	mov	rsi, qword ptr [rsp + 0x1f8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x40], r8
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	r9, qword ptr [rsp + 0x1e8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1d0], r11
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
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
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
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
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
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
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
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L87>
<L86>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1c8], rsi
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	mov	rdi, qword ptr [rsp + 0x1d8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x38], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r9, qword ptr [rsp + 0x1d0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1b8], r11
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
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
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
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
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
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
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
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L99>
<L98>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1b0], rsi
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	mov	rdi, qword ptr [rsp + 0x1c0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xc0], r8
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	r9, qword ptr [rsp + 0x1b8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1a0], r11
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
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
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
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
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
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
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
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L111>
<L110>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x198], rsi
               	mov	rsi, qword ptr [rsp + 0x1b0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xb8], r8
               	mov	r8, qword ptr [rsp + 0xc0]
               	mov	r9, qword ptr [rsp + 0x1a0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x188], r11
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
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
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
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
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
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
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
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x180], rsi
               	mov	rsi, qword ptr [rsp + 0x198]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	mov	rdi, qword ptr [rsp + 0x190]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xb0], r8
               	mov	r8, qword ptr [rsp + 0xb8]
               	mov	r9, qword ptr [rsp + 0x188]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x170], r11
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
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
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
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
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
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
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
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x168], rsi
               	mov	rsi, qword ptr [rsp + 0x180]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	mov	rdi, qword ptr [rsp + 0x178]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa8], r8
               	mov	r8, qword ptr [rsp + 0xb0]
               	mov	r9, qword ptr [rsp + 0x170]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x158], r11
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
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
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
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
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
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
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
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x150], rsi
               	mov	rsi, qword ptr [rsp + 0x168]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	mov	rdi, qword ptr [rsp + 0x160]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa0], r8
               	mov	r8, qword ptr [rsp + 0xa8]
               	mov	r9, qword ptr [rsp + 0x158]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x140], r11
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
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
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
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
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
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
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
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L159>
<L158>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x138], rsi
               	mov	rsi, qword ptr [rsp + 0x150]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	mov	rdi, qword ptr [rsp + 0x148]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x98], r8
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	r9, qword ptr [rsp + 0x140]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x128], r11
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
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
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
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L165>
<L164>:
               	xor	r10d, r10d
               	jmp	 <L166>
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
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L168>
<L167>:
               	xor	r10d, r10d
               	jmp	 <L169>
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
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L171>
<L170>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x120], rsi
               	mov	rsi, qword ptr [rsp + 0x138]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x118], rdi
               	mov	rdi, qword ptr [rsp + 0x130]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x90], r8
               	mov	r8, qword ptr [rsp + 0x98]
               	mov	r9, qword ptr [rsp + 0x128]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x110], r11
               	jmp	 <L172>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
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
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L177>
<L176>:
               	xor	r10d, r10d
               	jmp	 <L178>
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
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L180>
<L179>:
               	xor	r10d, r10d
               	jmp	 <L181>
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
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x108], rsi
               	mov	rsi, qword ptr [rsp + 0x120]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x100], rdi
               	mov	rdi, qword ptr [rsp + 0x118]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x88], r8
               	mov	r8, qword ptr [rsp + 0x90]
               	mov	r9, qword ptr [rsp + 0x110]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xf8], r11
               	jmp	 <L184>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L189>
<L188>:
               	xor	r10d, r10d
               	jmp	 <L190>
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L192>
<L191>:
               	xor	r10d, r10d
               	jmp	 <L193>
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
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xf0], rsi
               	mov	rsi, qword ptr [rsp + 0x108]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], rdi
               	mov	rdi, qword ptr [rsp + 0x100]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x80], r8
               	mov	r8, qword ptr [rsp + 0x88]
               	mov	r9, qword ptr [rsp + 0xf8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xe0], r11
               	jmp	 <L196>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
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
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L201>
<L200>:
               	xor	r10d, r10d
               	jmp	 <L202>
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
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L204>
<L203>:
               	xor	r10d, r10d
               	jmp	 <L205>
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
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x360], r12
               	mov	qword ptr [rsp + 0x2a8], r14
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xd8], rsi
               	mov	rsi, qword ptr [rsp + 0xf0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc8], rdi
               	mov	rdi, qword ptr [rsp + 0xe8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	r9, qword ptr [rsp + 0xe0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xd0], r11
               	jmp	 <L208>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x358], r13
               	mov	qword ptr [rsp + 0x298], rbp
               	mov	qword ptr [rsp + 0x368], r15
               	mov	qword ptr [rsp + 0x350], rbx
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, qword ptr [rsp + 0xd8]
               	xor	r15d, r15d
               	mov	rdi, qword ptr [rsp + 0xc8]
               	xor	ebp, ebp
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	r9, qword ptr [rsp + 0xd0]
               	xor	r13d, r13d
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
               	xor	r13, r9
               	xor	rbp, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	jmp	 <L223>
               	nop	word ptr cs:[rax + rax]
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
               	xor	r13, r9
               	xor	rbp, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	mov	r11, r13
               	jmp	 <L226>
               	nop
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
               	xor	r11, r9
               	xor	rbp, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	mov	r13, qword ptr [rsp + 0x260]
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
               	xor	r11, r9
               	xor	rbp, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L231>
<L230>:
               	mov	rax, qword ptr [rsp + 0x2a0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2b0], rax
               	mov	rcx, qword ptr [rsp + 0x298]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x18]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2c0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x40]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2e0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f0], rcx
               	mov	rcx, qword ptr [rsp + 0xc0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f8], rcx
               	mov	rcx, qword ptr [rsp + 0xb8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0xb0]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x300], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x308], rcx
               	mov	rcx, qword ptr [rsp + 0xa8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x310], rcx
               	mov	rcx, qword ptr [rsp + 0xa0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r14, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x318], r14
               	mov	rcx, qword ptr [rsp + 0x98]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x90]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x320], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x328], rcx
               	mov	rcx, qword ptr [rsp + 0x88]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x330], rcx
               	mov	rcx, qword ptr [rsp + 0x80]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x338], rcx
               	mov	rcx, qword ptr [rsp + 0x78]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r12, [rcx + 8*rcx]
               	lea	rcx, [4*rbp]
               	add	rcx, rbp
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x340], r12
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x348], rcx
               	mov	rcx, qword ptr [rsp + 0x350]
               	test	ecx, ecx
               	je	 <L232>
               	mov	ecx, ecx
               	mov	qword ptr [rsp + 0x388], rcx
               	mov	esi, 0x20
               	xor	edi, edi
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L237>:
               	vpermq	ymm0, ymmword ptr [rsp + 0x390], 0x93 # ymm0 = mem[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x2b0]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x2f0]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x310]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x330]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2d0], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2f0], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x310], ymm0
               	vpsrlq	ymm2, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x330], ymm2
               	vmovq	rax, xmm1
               	vpextrq	r14, xmm0, 0x1
               	vextracti128	xmm0, ymm2, 0x1
               	vmovq	r12, xmm0
               	add	rsi, 0x28
               	cmp	qword ptr [rsp + 0x388], rdi
               	je	 <L234>
<L233>:
               	mov	qword ptr [rsp + 0x8], rdi
               	mov	qword ptr [rsp + 0x10], r11
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x2f8]
               	vmovups	ymm1, ymmword ptr [rsp + 0x2c8]
               	vmovups	ymm2, ymmword ptr [rsp + 0x2d8]
               	vperm2f128	ymm3, ymm2, ymmword ptr [rsp + 0x2b8], 0x2 # ymm3 = mem[0,1],ymm2[0,1]
               	vinsertf128	ymm1, ymm1, xmmword ptr [rsp + 0x2e8], 0x1
               	vshufps	ymm1, ymm3, ymm1, 0x88  # ymm1 = ymm3[0,2],ymm1[0,2],ymm3[4,6],ymm1[4,6]
               	vandps	ymm1, ymm1, ymmword ptr  <strcmp+0x2300>
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [rsp + 0x270], ymm1
               	vpshufb	xmm0, xmm0, xmmword ptr  <strcmp+0x2320>
               	vcvtdq2ps	xmm1, xmm0
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	vblendps	ymm0, ymm2, ymmword ptr [rsp + 0x2b8], 0xc0 # ymm0 = ymm2[0,1,2,3,4,5],mem[6,7]
               	vmovups	ymmword ptr [rsp + 0x390], ymm0
               	sub	al, cl
               	movzx	eax, al
               	lea	rcx,  <strcmp+0x235c>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Circle@Evaluation.CRTP.Circle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x20], xmm1
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x20]
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x20], xmm1
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Triangle@Evaluation.CRTP.Triangle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x20]
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle>+0x10>
               	jmp	 <L235>
               	vmovups	xmm0, xmmword ptr [rsp + 0x308]
               	vmovaps	xmmword ptr [rsp + 0x3b0], xmm0
               	vmovups	xmm0, xmmword ptr [rsp + 0x320]
               	vshufps	xmm0, xmm0, xmmword ptr [rsp + 0x330], 0x88 # xmm0 = xmm0[0,2],mem[0,2]
               	vmovaps	xmmword ptr [rsp + 0x20], xmm0
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Head@Evaluation.CRTP.Head, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
               	mov	edi, 0x80
               	mov	qword ptr [rsp + 0x268], rsi
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x3b0]
               	vpshufb	xmm0, xmm0, xmmword ptr  <strcmp+0x2320>
               	vcvtdq2ps	xmm0, xmm0
               	movzx	ecx, r14b
               	vcvtsi2ss	xmm1, xmm5, ecx
               	vbroadcastss	ymm2, dword ptr  <strcmp+0x2340>
               	vandps	xmm2, xmm2, xmmword ptr [rsp + 0x20]
               	movzx	ecx, r12b
               	vcvtsi2ss	xmm3, xmm5, ecx
               	vcvtdq2ps	xmm2, xmm2
               	movabs	rcx, 0x100000001
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
               	mov	qword ptr [rax], rcx
               	lea	rdx, [rax + 0x10]
               	mov	rcx, rax
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x270]
               	vmovdqu	ymmword ptr [rax + 0x20], ymm4
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	vmovss	dword ptr [rax + 0x48], xmm1
               	vpshufd	xmm4, xmm4, 0xff        # xmm4 = xmm4[3,3,3,3]
               	vmovd	dword ptr [rax + 0x4c], xmm4
               	vmovups	xmmword ptr [rax + 0x50], xmm2
               	vmovlps	qword ptr [rax + 0x60], xmm0
               	vmovss	dword ptr [rax + 0x68], xmm1
               	vmovd	dword ptr [rax + 0x6c], xmm4
               	vmovss	dword ptr [rax + 0x70], xmm3
               	vshufps	xmm0, xmm2, xmm2, 0xe9  # xmm0 = xmm2[1,2,2,3]
               	vmovlps	qword ptr [rax + 0x74], xmm0
               	vextractps	dword ptr [rax + 0x7c], xmm2, 0x3
               	add	rcx, 0x20
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head>+0x10>
               	mov	qword ptr [rax + 0x10], rsi
               	mov	qword ptr [rax + 0x18], rcx
               	mov	rsi, qword ptr [rsp + 0x268]
               	mov	qword ptr [r13 + rsi - 0x10], rdx
               	mov	r11, qword ptr [rsp + 0x10]
               	jmp	 <L236>
               	vmovaps	xmmword ptr [rsp + 0x20], xmm1
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x20]
               	vextractps	dword ptr [rax + 0x40], xmm0, 0x1
               	add	rcx, 0x20
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x20], xmm1
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x20]
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>+0x10>
               	jmp	 <L235>
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Square@Evaluation.CRTP.Square, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x20], xmm1
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x20]
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x20], xmm1
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x20]
               	vmovss	dword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>+0x10>
               	jmp	 <L235>
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cube@Evaluation.CRTP.Cube, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x20], xmm1
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x20]
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>+0x10>
               	jmp	 <L235>
               	vmovaps	xmmword ptr [rsp + 0x20], xmm1
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Cone@Evaluation.CRTP.Cone, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x20]
               	vextractps	dword ptr [rax + 0x40], xmm0, 0x1
               	add	rcx, 0x20
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone>+0x10>
               	jmp	 <L235>
               	lea	rax,  <polymorphic::detail::vtable<Bodies3D::Sphere@Evaluation.CRTP.Sphere, float (Bodies3D::ComputeVolumeTag) const>>
               	mov	qword ptr [r13 + rsi - 0x20], rax
               	mov	byte ptr [r13 + rsi - 0x18], 0x0
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
               	vmovups	ymm0, ymmword ptr [rsp + 0x270]
               	vmovups	ymmword ptr [rax + 0x20], ymm0
               	lea	rsi,  <vtable for polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere>+0x10>
               	nop
<L235>:
               	mov	qword ptr [rax + 0x10], rsi
               	mov	qword ptr [rax + 0x18], rcx
               	mov	qword ptr [r13 + r14 - 0x10], rdx
               	mov	r11, qword ptr [rsp + 0x10]
               	mov	rsi, r14
<L236>:
               	mov	rdi, qword ptr [rsp + 0x8]
               	mov	qword ptr [r13 + rsi - 0x8], rax
               	mov	qword ptr [r13 + rsi], rcx
               	inc	rdi
               	test	dil, 0x7
               	jne	 <L237>
               	mov	rdx, qword ptr [rsp + 0x2a0]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x380]
               	mov	qword ptr [rsp + 0x268], rsi
               	mov	rsi, qword ptr [rsp + 0x378]
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x8], rdi
               	mov	rdi, qword ptr [rsp + 0x370]
               	xor	rdi, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x2a0], rdx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x380], rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x370], rdi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x378], rsi
               	mov	rdx, qword ptr [rsp + 0x298]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x360]
               	mov	r8, qword ptr [rsp + 0x358]
               	xor	rsi, r8
               	mov	rcx, qword ptr [rsp + 0x368]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x298], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x358], r8
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x360], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x368], rcx
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x250]
               	mov	r9, qword ptr [rsp + 0x248]
               	xor	rsi, r9
               	mov	rcx, qword ptr [rsp + 0x258]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x60], rdx
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x248], r9
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x250], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x258], rcx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x238]
               	mov	r11, qword ptr [rsp + 0x230]
               	xor	rsi, r11
               	mov	rcx, qword ptr [rsp + 0x240]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x18], rdx
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x230], r11
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x238], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x240], rcx
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x220]
               	mov	r13, qword ptr [rsp + 0x218]
               	xor	rsi, r13
               	mov	rcx, qword ptr [rsp + 0x228]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x58], rdx
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x218], r13
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x228], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x220], rsi
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x208]
               	mov	r10, qword ptr [rsp + 0x200]
               	xor	rsi, r10
               	mov	rcx, qword ptr [rsp + 0x210]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x50], rdx
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x200], r10
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x208], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x210], rcx
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1f0]
               	mov	r12, qword ptr [rsp + 0x1e8]
               	xor	rsi, r12
               	mov	rcx, qword ptr [rsp + 0x1f8]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x48], rdx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x1e8], r12
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1f0], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1f8], rcx
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	mov	rcx, qword ptr [rsp + 0x1d0]
               	mov	qword ptr [rsp + 0x270], rbp
               	mov	rbp, rcx
               	xor	rsi, rcx
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x40], rdx
               	xor	rbp, rcx
               	mov	qword ptr [rsp + 0x1d0], rbp
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1d8], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1e0], rcx
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	mov	qword ptr [rsp + 0x20], rbx
               	mov	rbx, rcx
               	xor	rsi, rcx
               	mov	rcx, qword ptr [rsp + 0x1c8]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x38], rdx
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x1b8], rbx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1c8], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1c0], rsi
               	mov	rbp, qword ptr [rsp + 0xc0]
               	mov	rax, rbp
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	qword ptr [rsp + 0x390], r15
               	mov	r15, rcx
               	xor	rsi, rcx
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	xor	rcx, rbp
               	xor	rbp, rsi
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x1a0], r15
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1a8], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1b0], rcx
               	mov	r13, qword ptr [rsp + 0xb8]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x190]
               	mov	r14, qword ptr [rsp + 0x188]
               	mov	r12, qword ptr [rsp + 0xd8]
               	xor	rsi, r14
               	mov	rcx, qword ptr [rsp + 0x198]
               	xor	rcx, r13
               	xor	r13, rsi
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x188], r14
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x190], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x198], rcx
               	mov	r15, qword ptr [rsp + 0xb0]
               	mov	rdx, r15
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x178]
               	mov	rax, qword ptr [rsp + 0x170]
               	xor	rsi, rax
               	mov	rcx, qword ptr [rsp + 0x180]
               	xor	rcx, r15
               	xor	r15, rsi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x170], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x178], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x180], rcx
               	mov	r14, qword ptr [rsp + 0xa8]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x160]
               	mov	rsi, qword ptr [rsp + 0x158]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x168]
               	xor	rcx, r14
               	xor	r14, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x158], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x168], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x160], rdx
               	mov	rbx, qword ptr [rsp + 0xa0]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x148]
               	mov	rsi, qword ptr [rsp + 0x140]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x150]
               	xor	rcx, rbx
               	xor	rbx, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x140], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x148], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x150], rcx
               	mov	r11, qword ptr [rsp + 0x98]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x130]
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x138]
               	xor	rcx, r11
               	xor	r11, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x128], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x130], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x138], rcx
               	mov	r10, qword ptr [rsp + 0x90]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x118]
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x120]
               	xor	rcx, r10
               	xor	r10, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x110], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x118], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x120], rcx
               	mov	r9, qword ptr [rsp + 0x88]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x100]
               	mov	rsi, qword ptr [rsp + 0xf8]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x108]
               	xor	rcx, r9
               	xor	r9, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xf8], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x108], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x100], rdx
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xe8]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	rcx, r8
               	xor	r8, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xe0], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xe8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	rdi, qword ptr [rsp + 0x78]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xd0]
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	r12, rdi
               	xor	rdi, qword ptr [rsp + 0xc8]
               	xor	qword ptr [rsp + 0xd0], r12
               	xor	qword ptr [rsp + 0xc8], rax
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0xd8], r12
               	mov	rax, qword ptr [rsp + 0x270]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x10]
               	xor	qword ptr [rsp + 0x390], rcx
               	mov	rcx, qword ptr [rsp + 0x270]
               	xor	qword ptr [rsp + 0x20], rcx
               	mov	rcx, qword ptr [rsp + 0x270]
               	xor	rcx, qword ptr [rsp + 0x390]
               	mov	qword ptr [rsp + 0x270], rcx
               	xor	qword ptr [rsp + 0x390], rax
               	mov	rax, qword ptr [rsp + 0x2a0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x298]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x60]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rsi, qword ptr [rsp + 0x18]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2b0], rax
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c0], rdx
               	mov	rdx, qword ptr [rsp + 0x50]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2c8], rsi
               	mov	rsi, qword ptr [rsp + 0x48]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d8], rdx
               	mov	rdx, qword ptr [rsp + 0x38]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2e0], rsi
               	mov	qword ptr [rsp + 0xc0], rbp
               	lea	rsi, [4*rbp]
               	add	rsi, rbp
               	mov	rbp, qword ptr [rsp + 0x270]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	qword ptr [rsp + 0xb8], r13
               	lea	rcx, [4*r13]
               	add	rcx, r13
               	mov	r13, qword ptr [rsp + 0x260]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2f0], rdx
               	mov	qword ptr [rsp + 0xb0], r15
               	lea	rdx, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0x390]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2f8], rsi
               	mov	qword ptr [rsp + 0xa8], r14
               	lea	rsi, [r14 + 4*r14]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x300], rcx
               	mov	qword ptr [rsp + 0xa0], rbx
               	lea	rcx, [rbx + 4*rbx]
               	mov	rbx, qword ptr [rsp + 0x20]
               	rol	rcx, 0x7
               	lea	r14, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x308], rdx
               	mov	qword ptr [rsp + 0x98], r11
               	lea	rcx, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x10]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x310], rsi
               	mov	rsi, qword ptr [rsp + 0x268]
               	mov	qword ptr [rsp + 0x90], r10
               	lea	rdx, [r10 + 4*r10]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x318], r14
               	mov	qword ptr [rsp + 0x320], rcx
               	mov	qword ptr [rsp + 0x88], r9
               	lea	rcx, [r9 + 4*r9]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x328], rdx
               	mov	qword ptr [rsp + 0x80], r8
               	lea	rdx, [r8 + 4*r8]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x330], rcx
               	mov	qword ptr [rsp + 0x78], rdi
               	lea	rcx, [rdi + 4*rdi]
               	mov	rdi, qword ptr [rsp + 0x8]
               	rol	rcx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	r12, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x338], rdx
               	lea	rcx, [4*rbp]
               	add	rcx, rbp
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x340], r12
               	mov	qword ptr [rsp + 0x348], rcx
               	xor	r11, rbx
               	rol	rbx, 0x2d
               	add	rsi, 0x28
               	cmp	qword ptr [rsp + 0x388], rdi
               	jne	 <L233>
<L234>:
               	shl	rdi, 0x3
               	lea	rcx, [rdi + 4*rdi]
               	mov	rax, rcx
               	shr	rax, 0x3
               	imul	ebp, eax, 0xcccccccd
               	test	ebp, ebp
               	je	 <L238>
               	mov	qword ptr [rsp + 0x18], rcx
               	mov	qword ptr [rsp + 0x268], rsi
               	vxorps	xmm0, xmm0, xmm0
               	vmovups	ymmword ptr [rsp + 0x310], ymm0
               	vmovups	ymmword ptr [rsp + 0x2f0], ymm0
               	vmovups	ymmword ptr [rsp + 0x2d0], ymm0
               	vmovups	ymmword ptr [rsp + 0x2b0], ymm0
               	mov	r12, r13
               	jmp	 <L239>
               	nop	word ptr cs:[rax + rax]
<L240>:
               	vmovss	xmm0, dword ptr [rsp + 0x2b4]
               	vmovss	dword ptr [rsp + 0x2b8], xmm0
               	mov	r13d, 0x1
<L248>:
               	mov	eax, r13d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x2b0]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r12, rbx
<L239>:
               	mov	r14d, ebp
               	neg	r14d
               	and	r14d, ebp
               	lea	rax, [r14 + 4*r14]
               	lea	rbx, [r12 + 8*rax]
               	je	 <L240>
               	mov	dword ptr [rsp + 0x60], ebp
               	mov	r15d, 0x1
               	xor	ecx, ecx
               	mov	ebp, 0x1
               	jmp	 <L241>
               	nop
<L243>:
               	mov	ebp, r13d
               	movsxd	rax, r13d
               	vmovss	dword ptr [rsp + 4*rax + 0x2b0], xmm0
               	add	r12, 0x28
               	mov	ecx, 0xfffffffe
               	sub	ecx, r15d
               	lea	edx, [r15 + 0x1]
               	bsr	esi, edx
               	xor	esi, 0x1f
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r15d, edx
               	cmp	r12, rbx
               	je	 <L242>
<L241>:
               	mov	r13d, ecx
               	mov	rax, qword ptr [r12]
               	mov	rdi, qword ptr [r12 + 0x20]
               	movzx	ecx, byte ptr [r12 + 0x8]
               	vzeroupper
               	call	qword ptr [rax + 8*rcx]
               	mov	ecx, r13d
               	sub	ecx, ebp
               	jl	 <L243>
               	movsxd	rax, ebp
               	cmp	ecx, 0x1f
               	jb	 <L244>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vblendps	xmm0, xmm0, xmmword ptr , 0xe <strcmp+0x2330> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0x310]
               	lea	rsi, [rsi + 4*rax]
               	vxorps	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vxorps	xmm2, xmm2, xmm2
               	vxorps	xmm3, xmm3, xmm3
<L245>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi + 4*rdi - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rsi + 4*rdi - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rsi + 4*rdi]
               	add	rdi, 0x20
               	cmp	rdx, rdi
               	jne	 <L245>
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
               	je	 <L243>
               	add	rax, rdx
<L244>:
               	mov	ecx, r13d
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x2b0
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L246>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L246>
               	jmp	 <L243>
               	nop	word ptr cs:[rax + rax]
<L242>:
               	mov	ebp, dword ptr [rsp + 0x60]
               	sub	ebp, r14d
               	je	 <L247>
               	vmovss	dword ptr [rsp + 4*rax + 0x2b4], xmm0
               	mov	r12, rbx
               	test	r13d, r13d
               	jns	 <L248>
               	jmp	 <L239>
<L247>:
               	mov	r12, qword ptr [rsp + 0x2a8]
               	mov	r13, qword ptr [rsp + 0x260]
               	mov	rsi, qword ptr [rsp + 0x268]
               	mov	rcx, qword ptr [rsp + 0x18]
               	test	rcx, rcx
               	jne	 <L249>
               	jmp	 <L250>
<L232>:
               	vxorps	xmm0, xmm0, xmm0
               	mov	r12, qword ptr [rsp + 0x2a8]
<L250>:
               	test	r13, r13
               	mov	rbx, qword ptr [rsp + 0x350]
               	je	 <L251>
               	mov	rdi, r13
               	vmovaps	xmmword ptr [rsp + 0x60], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x60]
<L251>:
               	cmp	r12d, 0x2a
               	jne	 <L252>
               	cmp	ebx, 0x186a0
               	jne	 <L252>
               	vucomiss	xmm0, dword ptr  <strcmp+0x2354>
               	jne	 <L253>
<L252>:
               	xor	eax, eax
               	add	rsp, 0x3c8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L238>:
               	vxorps	xmm0, xmm0, xmm0
               	mov	r12, qword ptr [rsp + 0x2a8]
               	test	rcx, rcx
               	je	 <L250>
<L249>:
               	add	rsi, -0x20
               	lea	rbx, [r13 + 0x18]
               	mov	r15, qword ptr  <strcmp+0xa9b0>
               	vmovaps	xmmword ptr [rsp + 0x60], xmm0
               	jmp	 <L254>
<L258>:
               	mov	eax, 0xffffffff
               	lock
               	xadd	dword ptr [r14 + 0x8], eax
               	cmp	eax, 0x1
               	jne	 <L255>
               	jmp	 <L256>
               	nop	word ptr [rax + rax]
<L254>:
               	mov	r14, qword ptr [rbx]
               	test	r14, r14
               	je	 <L255>
               	mov	rax, qword ptr [r14 + 0x8]
               	movabs	rcx, 0x100000001
               	cmp	rax, rcx
               	jne	 <L257>
               	mov	qword ptr [r14 + 0x8], 0x0
               	mov	rax, qword ptr [r14]
               	mov	rdi, r14
               	mov	r13, rsi
               	vzeroupper
               	call	qword ptr [rax + 0x10]
               	mov	rax, qword ptr [r14]
               	mov	rdi, r14
               	call	qword ptr [rax + 0x18]
               	vmovaps	xmm0, xmmword ptr [rsp + 0x60]
               	mov	rsi, r13
<L259>:
               	mov	r13, qword ptr [rsp + 0x260]
               	jmp	 <L255>
               	nop
<L257>:
               	cmp	byte ptr [r15], 0x0
               	je	 <L258>
               	lea	ecx, [rax - 0x1]
               	mov	dword ptr [r14 + 0x8], ecx
               	cmp	eax, 0x1
               	je	 <L256>
               	nop	word ptr cs:[rax + rax]
<L255>:
               	add	rbx, 0x28
               	add	rsi, -0x28
               	jne	 <L254>
               	jmp	 <L250>
<L256>:
               	mov	rdi, r14
               	mov	r14, rsi
               	vzeroupper
               	call	 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release_last_use_cold()>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x60]
               	mov	rsi, r14
               	jmp	 <L259>
<L253>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x60], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x60]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <strcmp+0xa9a8>
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
               	mov	rax, qword ptr  <strcmp+0xa9b0>
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

<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::~holder_impl()>:
<polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>::~holder_impl()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square> const, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
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
               	vmulss	xmm1, xmm1, dword ptr  <strcmp+0x2358>
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
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2358>
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
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2344>
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
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2348>
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
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x234c>
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
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2350>
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
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2348>
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
               	vmulss	xmm0, xmm0, dword ptr  <strcmp+0x2348>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <strcmp+0xa980>
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

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x68>
               	push	0xa
               	jmp	 <.plt>
