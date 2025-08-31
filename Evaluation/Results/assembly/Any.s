
build/Evaluation/Speed/bin/Any:	file format elf64-x86-64

Disassembly of section .fini:

<_fini>:
	endbr64
	sub
		rsp, 0x8
	add
		rsp, 0x8
	ret

Disassembly of section .init:

<_init>:
	endbr64
	sub
		rsp, 0x8
	mov
		rax, qword ptr <__gmon_start__$got>
	test
		rax, rax
	je
		<L0>
	call
		rax
<L0>:
	add
		rsp, 0x8
	ret

Disassembly of section .plt:

<_PROCEDURE_LINKAGE_TABLE_>:
	endbr64
	push
		r11
	push
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x8>
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x10>

<_ZSt9terminatev$plt>:
	mov
		r11d, 0x0

<_ZSt9terminatev@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x18>

<_ZdlPvm$plt>:
	mov
		r11d, 0x1

<_ZdlPvm@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x20>

<__cxa_throw$plt>:
	mov
		r11d, 0x2

<__cxa_throw@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x28>

<__cxa_begin_catch$plt>:
	mov
		r11d, 0x3

<__cxa_begin_catch@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x30>

<__cxa_allocate_exception$plt>:
	mov
		r11d, 0x4

<__cxa_allocate_exception@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x38>

<_ZdaPv$plt>:
	mov
		r11d, 0x5

<_ZdaPv@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x40>

<_ZnamRKSt9nothrow_t$plt>:
	mov
		r11d, 0x6

<_ZnamRKSt9nothrow_t@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x48>

<_Znwm$plt>:
	mov
		r11d, 0x7

<_Znwm@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x50>

<memset$plt>:
	mov
		r11d, 0x8

<memset@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x58>

<memcpy$plt>:
	mov
		r11d, 0x9

<memcpy@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x60>

<strcmp$plt>:
	mov
		r11d, 0xa

<strcmp@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x68>

Disassembly of section .plt.got:

<_ZNSt8bad_castD2Ev$pltgot>:
<_ZNSt8bad_castD2Ev@plt>:
	jmp
		qword ptr <_ZNSt8bad_castD2Ev$got>

Disassembly of section .text:

<_start>:
	endbr64
	xor
		ebp, ebp
	mov
		r9, rdx
	pop
		rsi
	mov
		rdx, rsp
	and
		rsp, -0x10
	push
		rax
	push
		rsp
	xor
		r8d, r8d
	xor
		ecx, ecx
	lea
		rdi, <main>
	call
		qword ptr <__libc_start_main$got>
	hlt
<L0>:
	lea
		rdi, <__bss_start>
	lea
		rax, <__bss_start>
	cmp
		rax, rdi
	je
		<L1>
	mov
		rax, qword ptr <_ITM_deregisterTMCloneTable$got>
	test
		rax, rax
	je
		<L1>
	jmp
		rax
	nop
		dword ptr [rax]
<L1>:
	ret
	nop
		dword ptr [rax]
<L2>:
	lea
		rdi, <__bss_start>
	lea
		rsi, <__bss_start>
	sub
		rsi, rdi
	mov
		rax, rsi
	shr
		rsi, 0x3f
	sar
		rax, 0x3
	add
		rsi, rax
	sar
		rsi
	je
		<L3>
	mov
		rax, qword ptr <_ITM_registerTMCloneTable$got>
	test
		rax, rax
	je
		<L3>
	jmp
		rax
	nop
		word ptr [rax + rax]
<L3>:
	ret
	nop
		dword ptr [rax]
	endbr64
	cmp
		byte ptr, 0x0 <__bss_start>
	jne
		<L5>
	push
		rbp
	cmp
		qword ptr, 0x0 <__cxa_finalize$got>
	mov
		rbp, rsp
	je
		<L4>
	mov
		rdi, qword ptr <__dso_handle>
	call
		qword ptr <__cxa_finalize$got>
<L4>:
	call
		<L0>
	mov
		byte ptr, 0x1 <__bss_start>
	pop
		rbp
	ret
	nop
		word ptr cs:[rax + rax]
<L5>:
	ret
	nop
		dword ptr [rax]
	nop
		word ptr cs:[rax + rax]
	endbr64
	jmp
		<L2>

<main>:
	push
		rbp
	push
		r15
	push
		r14
	push
		r13
	push
		r12
	push
		rbx
	sub
		rsp, 0xd38
	mov
		rcx, qword ptr [rsi + 0x8]
	mov
		rax, qword ptr [rsi + 0x10]
	movsx
		r15d, byte ptr [rcx]
	movzx
		edx, byte ptr [rcx + 0x1]
	add
		r15d, -0x30
	test
		dl, dl
	je
		<L1>
	add
		rcx, 0x2
	nop
		dword ptr [rax]
<L0>:
	lea
		esi, [r15 + 4*r15]
	movsx
		edx, dl
	lea
		r15d, [rdx + 2*rsi - 0x30]
	movzx
		edx, byte ptr [rcx]
	inc
		rcx
	test
		dl, dl
	jne
		<L0>
<L1>:
	movsx
		r12d, byte ptr [rax]
	movzx
		ecx, byte ptr [rax + 0x1]
	add
		r12d, -0x30
	test
		cl, cl
	je
		<L3>
	add
		rax, 0x2
	nop
		word ptr [rax + rax]
<L2>:
	lea
		edx, [r12 + 4*r12]
	movsx
		ecx, cl
	lea
		r12d, [rcx + 2*rdx - 0x30]
	movzx
		ecx, byte ptr [rax]
	inc
		rax
	test
		cl, cl
	jne
		<L2>
<L3>:
	mov
		eax, r12d
	shl
		eax, 0x4
	mov
		rsi, qword ptr <_ZSt7nothrow$got>
	mov
		dword ptr [rsp + 0x30], eax
	cdqe
	shl
		rax, 0x3
	lea
		rdi, [rax + 2*rax]
	call
		<_ZnamRKSt9nothrow_t$plt>
	lea
		rsi, <PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence::begin() const::vStart>
	lea
		rdi, [rsp + 0x6e0]
	mov
		edx, 0x650
	mov
		r13, rax
	call
		<memcpy$plt>
	test
		r15d, r15d
	je
		<L5>
	lea
		r14, [rsp + 0x6e0]
	mov
		ebx, r15d
	nop
		word ptr cs:[rax + rax]
<L4>:
	mov
		rdi, r14
	call
		<CountedXoroshiro@Evaluation.Dependency.PseudoRandomSequence::operator++() &>
	dec
		ebx
	jne
		<L4>
<L5>:
	lea
		rdi, [rsp + 0x90]
	lea
		rsi, [rsp + 0x6e0]
	mov
		edx, 0x650
	call
		<memcpy$plt>
	mov
		ebx, dword ptr [rsp + 0x30]
	cmp
		dword ptr [rsp + 0x590], ebx
	jne
		<L9>
	vxorps
		xmm0, xmm0, xmm0
	vmovaps
		xmmword ptr [rsp + 0x10], xmm0
	test
		r13, r13
	je
		<L7>
<L6>:
	mov
		rdi, r13
	vzeroupper
	call
		<_ZdaPv$plt>
<L7>:
	test
		r15d, r15d
	jne
		<L35>
	cmp
		r12d, 0x30d4
	je
		<L27>
	cmp
		r12d, 0x186a
	jne
		<L8>
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
	vucomiss
		xmm0, dword ptr <.LCPI0_3>
	jne
		<L28>
<L8>:
	xor
		eax, eax
	add
		rsp, 0xd38
	pop
		rbx
	pop
		r12
	pop
		r13
	pop
		r14
	pop
		r15
	pop
		rbp
	vzeroupper
	ret
<L9>:
	mov
		qword ptr [rsp + 0x38], r12
	mov
		qword ptr [rsp + 0x40], r15
	lea
		r15, <strcmp+0x1fd0>
	lea
		r12, [rsp + 0x90]
	xor
		ebp, ebp
	xor
		r14d, r14d
	mov
		qword ptr [rsp + 0x48], r13
	jmp
		<L12>
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cube>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x28
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Cube>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Cube, RGBAColor const&, Point const&, float const&>(std::in_place_type_t<Bodies3D::Cube>, RGBAColor const&, Point const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
<L10>:
	vmovups
		ymmword ptr [rax + 0x8], ymm0
<L11>:
	mov
		qword ptr [r13 + rbp + 0x8], rax
	mov
		rdi, r12
	mov
		qword ptr [r13 + rbp + 0x10], rcx
	inc
		r14
	vzeroupper
	call
		<CountedXoroshiro@Evaluation.Dependency.PseudoRandomSequence::operator++() &>
	add
		rbp, 0x18
	cmp
		dword ptr [rsp + 0x590], ebx
	je
		<L13>
<L12>:
	vmovq
		xmm1, qword ptr <.LCPI0_4>
	vmovdqu64
		zmm0, zmmword ptr [rsp + 0x5b0]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x610]
	movzx
		eax, byte ptr [rsp + 0x5a0]
	movzx
		ecx, byte ptr [rsp + 0x630]
	movzx
		edx, byte ptr [rsp + 0x640]
	vpermt2b
		zmm0, zmm1, zmmword ptr [rsp + 0x5f0]
	vmovd
		xmm1, dword ptr [rsp + 0x620]
	vpunpcklbw
		xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	insertq
		xmm0, xmm1, 0x10, 0x30 # xmm0 = xmm0[0,1,2,3,4,5],xmm1[0,1],xmm0[u,u,u,u,u,u,u,u]
	vpmovzxbd
		ymm0, xmm0 # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
	vcvtdq2ps
		ymm0, ymm0
	vmovups
		ymmword ptr [rsp + 0x10], ymm0
	vcvtsi2ss
		xmm0, xmm15, ecx
	imul
		ecx, eax, 0x4f
	shr
		ecx, 0xa
	vcvtsi2ss
		xmm1, xmm15, edx
	lea
		edx, [rcx + 2*rcx]
	lea
		ecx, [rcx + 4*rdx]
	sub
		al, cl
	movzx
		eax, al
	movsxd
		rax, dword ptr [r15 + 4*rax]
	add
		rax, r15
	jmp
		rax
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Circle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x28
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Circle>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Circle, RGBAColor const&, Point const&, float const&>(std::in_place_type_t<Bodies3D::Circle>, RGBAColor const&, Point const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	jmp
		<L10>
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	vmovss
		dword ptr [rsp], xmm1
	vmovss
		dword ptr [rsp + 0x50], xmm0
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x30
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovss
		xmm2, dword ptr [rsp + 0x50]
	vmovd
		xmm1, dword ptr [rsp]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipsoid, RGBAColor const&, Point const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Ellipsoid>, RGBAColor const&, Point const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	vmovss
		dword ptr [rax + 0x28], xmm2
	vmovd
		dword ptr [rax + 0x2c], xmm1
	jmp
		<L11>
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Triangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	vmovss
		dword ptr [rsp + 0x50], xmm0
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x30
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovd
		xmm1, dword ptr [rsp + 0x50]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Triangle>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Triangle, RGBAColor const&, Point const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Triangle>, RGBAColor const&, Point const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	vmovd
		dword ptr [rax + 0x28], xmm1
	jmp
		<L11>
	vmovss
		xmm0, dword ptr [rsp + 0x6b0]
	mov
		rax, r13
	movzx
		ebx, byte ptr [rsp + 0x650]
	movzx
		r12d, byte ptr [rsp + 0x660]
	movzx
		r13d, byte ptr [rsp + 0x670]
	movzx
		r15d, byte ptr [rsp + 0x6c0]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Head>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		qword ptr [rax + rbp], rcx
	mov
		qword ptr [rax + rbp + 0x8], 0x0
	vmovaps
		xmmword ptr [rsp], xmm0
	vmovd
		xmm0, dword ptr <.LCPI0_5>
	vpermb
		zmm0, zmm0, zmmword ptr [rsp + 0x680]
	vmovdqu64
		zmmword ptr [rsp + 0x50], zmm0
	mov
		edi, 0x68
	vzeroupper
	call
		<_Znwm$plt>
	vmovdqu64
		zmm3, zmmword ptr [rsp + 0x50]
	vmovdqa
		xmm0, xmmword ptr [rsp]
	vmovups
		ymm6, ymmword ptr [rsp + 0x10]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Head>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Head, RGBAColor const&, Point const&, float const&, Bodies3D::Sphere, Bodies3D::Sphere>(std::in_place_type_t<Bodies3D::Head>, RGBAColor const&, Point const&, float const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	insertq
		xmm3, xmm0, 0x8, 0x18 # xmm3 = xmm3[0,1,2],xmm0[0],xmm3[4,5,6,7,u,u,u,u,u,u,u,u]
	vcvtsi2ss
		xmm0, xmm15, ebx
	mov
		ebx, dword ptr [rsp + 0x30]
	vshufps
		xmm5, xmm6, xmm6, 0xff # xmm5 = xmm6[3,3,3,3]
	vmovups
		ymmword ptr [rax + 0x8], ymm6
	vpmovzxbd
		xmm3, xmm3 # xmm3 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero
	vcvtsi2ss
		xmm2, xmm15, r13d
	mov
		r13, qword ptr [rsp + 0x48]
	vcvtsi2ss
		xmm1, xmm15, r12d
	vcvtsi2ss
		xmm4, xmm15, r15d
	vmovss
		dword ptr [rax + 0x28], xmm0
	lea
		r15, <strcmp+0x1fd0>
	lea
		r12, [rsp + 0x90]
	vcvtdq2ps
		xmm3, xmm3
	vmovss
		dword ptr [rax + 0x2c], xmm1
	vmovss
		dword ptr [rax + 0x30], xmm2
	vmovss
		dword ptr [rax + 0x34], xmm5
	vmovdqu
		xmmword ptr [rax + 0x38], xmm3
	vmovss
		dword ptr [rax + 0x48], xmm0
	vmovss
		dword ptr [rax + 0x4c], xmm1
	vpshufd
		xmm1, xmm3, 0xe9 # xmm1 = xmm3[1,2,2,3]
	vmovss
		dword ptr [rax + 0x50], xmm2
	vmovss
		dword ptr [rax + 0x54], xmm5
	vmovss
		dword ptr [rax + 0x58], xmm4
	vmovq
		qword ptr [rax + 0x5c], xmm1
	vextractps
		dword ptr [rax + 0x64], xmm3, 0x3
	jmp
		<L11>
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cylinder>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	vmovss
		dword ptr [rsp], xmm1
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x30
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovd
		xmm1, dword ptr [rsp]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Cylinder>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Cylinder, RGBAColor const&, Point const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cylinder>, RGBAColor const&, Point const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	vmovd
		dword ptr [rax + 0x28], xmm1
	jmp
		<L11>
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Rectangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	vmovss
		dword ptr [rsp + 0x50], xmm0
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x30
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovd
		xmm1, dword ptr [rsp + 0x50]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Rectangle>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Rectangle, RGBAColor const&, Point const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Rectangle>, RGBAColor const&, Point const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	vmovd
		dword ptr [rax + 0x28], xmm1
	jmp
		<L11>
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Square>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x28
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Square>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Square, RGBAColor const&, Point const&, float const&>(std::in_place_type_t<Bodies3D::Square>, RGBAColor const&, Point const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	jmp
		<L10>
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Pyramid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	vmovss
		dword ptr [rsp], xmm1
	vmovss
		dword ptr [rsp + 0x50], xmm0
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x30
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovss
		xmm2, dword ptr [rsp + 0x50]
	vmovd
		xmm1, dword ptr [rsp]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Pyramid>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Pyramid, RGBAColor const&, Point const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Pyramid>, RGBAColor const&, Point const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	vmovss
		dword ptr [rax + 0x28], xmm2
	vmovd
		dword ptr [rax + 0x2c], xmm1
	jmp
		<L11>
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipse>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	vmovss
		dword ptr [rsp + 0x50], xmm0
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x30
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovd
		xmm1, dword ptr [rsp + 0x50]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Ellipse>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipse, RGBAColor const&, Point const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Ellipse>, RGBAColor const&, Point const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	vmovd
		dword ptr [rax + 0x28], xmm1
	jmp
		<L11>
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cuboid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	vmovss
		dword ptr [rsp], xmm1
	vmovss
		dword ptr [rsp + 0x50], xmm0
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x30
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovss
		xmm2, dword ptr [rsp + 0x50]
	vmovd
		xmm1, dword ptr [rsp]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Cuboid>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Cuboid, RGBAColor const&, Point const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cuboid>, RGBAColor const&, Point const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	vmovss
		dword ptr [rax + 0x28], xmm2
	vmovd
		dword ptr [rax + 0x2c], xmm1
	jmp
		<L11>
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cone>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	vmovss
		dword ptr [rsp], xmm1
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x30
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovd
		xmm1, dword ptr [rsp]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Cone>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Cone, RGBAColor const&, Point const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cone>, RGBAColor const&, Point const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	vmovd
		dword ptr [rax + 0x28], xmm1
	jmp
		<L11>
	lea
		rax, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Sphere>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		qword ptr [r13 + rbp], rax
	mov
		qword ptr [r13 + rbp + 0x8], 0x0
	mov
		edi, 0x28
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Sphere>+0x10>
	mov
		qword ptr [rax], rcx
	lea
		rcx, <Bodies3D::AnyBody::AnyBody<Bodies3D::Sphere, RGBAColor const&, Point const&, float const&>(std::in_place_type_t<Bodies3D::Sphere>, RGBAColor const&, Point const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>
	jmp
		<L10>
<L13>:
	shl
		r14, 0x3
	lea
		rcx, [r14 + 2*r14]
	mov
		rax, rcx
	shr
		rax, 0x3
	imul
		ebx, eax, 0xaaaaaaab
	test
		ebx, ebx
	je
		<L30>
	vxorps
		xmm0, xmm0, xmm0
	mov
		r15, r13
	mov
		qword ptr [rsp + 0x30], rcx
	vmovups
		zmmword ptr [rsp + 0x720], zmm0
	vmovups
		zmmword ptr [rsp + 0x6e0], zmm0
	jmp
		<L16>
	nop
		dword ptr [rax]
<L14>:
	vmovss
		xmm0, dword ptr [rsp + 0x6e4]
	mov
		r13d, 0x1
	vmovss
		dword ptr [rsp + 0x6e8], xmm0
<L15>:
	mov
		eax, r13d
	lea
		rdx, [4*rax + 0x4]
	lea
		rdi, [rsp + 0x6e0]
	xor
		esi, esi
	vzeroupper
	call
		<memset$plt>
	mov
		r15, r12
<L16>:
	blsi
		ecx, ebx
	lea
		rax, [rcx + 2*rcx]
	lea
		r12, [r15 + 8*rax]
	je
		<L14>
	mov
		dword ptr [rsp + 0x50], ebx
	mov
		ebx, 0x1
	mov
		r14d, 0x1
	mov
		qword ptr [rsp], rcx
	xor
		ecx, ecx
	jmp
		<L18>
	nop
<L17>:
	mov
		ecx, 0xfffffffe
	lea
		edx, [rbx + 0x1]
	movsxd
		rax, r13d
	add
		r15, 0x18
	mov
		r14d, r13d
	sub
		ecx, ebx
	lzcnt
		esi, edx
	vmovss
		dword ptr [rsp + 4*rax + 0x6e0], xmm0
	mov
		ebx, edx
	popcnt
		ecx, ecx
	sub
		ecx, esi
	cmp
		r15, r12
	je
		<L26>
<L18>:
	mov
		rdi, r15
	mov
		r13d, ecx
	vzeroupper
	call
		qword ptr [r15 + 0x10]
	mov
		rcx, qword ptr [rax]
	mov
		rdi, rax
	call
		qword ptr [rcx]
	mov
		edx, r13d
	sub
		edx, r14d
	jl
		<L17>
	movsxd
		rax, r14d
	cmp
		edx, 0x7
	jb
		<L24>
	lea
		rcx, [rdx + 0x1]
	cmp
		edx, 0x3f
	jae
		<L19>
	xor
		edx, edx
	jmp
		<L21>
<L19>:
	movabs
		rsi, 0x1ffffffc0
	lea
		r8, [rsp + 0x7a0]
	mov
		rdx, rcx
	vpxor
		xmm1, xmm1, xmm1
	vpblendd
		xmm0, xmm1, xmm0, 0x1 # xmm0 = xmm0[0],xmm1[1,2,3]
	vpxor
		xmm1, xmm1, xmm1
	xor
		edi, edi
	vxorps
		xmm2, xmm2, xmm2
	vpxor
		xmm3, xmm3, xmm3
	and
		rdx, rsi
	lea
		rsi, [r8 + 4*rax]
	nop
<L20>:
	vaddps
		zmm0, zmm0, zmmword ptr [rsi + 4*rdi - 0xc0]
	vaddps
		zmm1, zmm1, zmmword ptr [rsi + 4*rdi - 0x80]
	vaddps
		zmm2, zmm2, zmmword ptr [rsi + 4*rdi - 0x40]
	vaddps
		zmm3, zmm3, zmmword ptr [rsi + 4*rdi]
	add
		rdi, 0x40
	cmp
		rdx, rdi
	jne
		<L20>
	vaddps
		zmm0, zmm1, zmm0
	vaddps
		zmm2, zmm3, zmm2
	vaddps
		zmm0, zmm2, zmm0
	vextractf64x4
		ymm1, zmm0, 0x1
	vaddps
		zmm0, zmm0, zmm1
	vextractf128
		xmm1, ymm0, 0x1
	vaddps
		xmm0, xmm0, xmm1
	vshufpd
		xmm1, xmm0, xmm0, 0x1 # xmm1 = xmm0[1,0]
	vaddps
		xmm0, xmm0, xmm1
	vmovshdup
		xmm1, xmm0 # xmm1 = xmm0[1,1,3,3]
	vaddss
		xmm0, xmm0, xmm1
	cmp
		rcx, rdx
	je
		<L17>
	test
		cl, 0x38
	je
		<L23>
<L21>:
	movabs
		rsi, 0x1ffffffc0
	lea
		rdi, [rsp + 4*rax + 0x6e0]
	vpxor
		xmm1, xmm1, xmm1
	vpblendd
		xmm0, xmm1, xmm0, 0x1 # xmm0 = xmm0[0],xmm1[1,2,3]
	add
		rsi, 0x38
	and
		rsi, rcx
	nop
		word ptr cs:[rax + rax]
<L22>:
	vaddps
		ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
	add
		rdx, 0x8
	cmp
		rsi, rdx
	jne
		<L22>
	vextractf128
		xmm1, ymm0, 0x1
	vaddps
		xmm0, xmm0, xmm1
	vshufpd
		xmm1, xmm0, xmm0, 0x1 # xmm1 = xmm0[1,0]
	vaddps
		xmm0, xmm0, xmm1
	vmovshdup
		xmm1, xmm0 # xmm1 = xmm0[1,1,3,3]
	vaddss
		xmm0, xmm0, xmm1
	cmp
		rcx, rsi
	je
		<L17>
	add
		rax, rsi
	jmp
		<L24>
<L23>:
	add
		rax, rdx
	nop
		word ptr [rax + rax]
<L24>:
	mov
		ecx, r13d
	sub
		ecx, eax
	lea
		rax, [rsp + 4*rax + 0x6e0]
	xor
		edx, edx
	inc
		ecx
	nop
		word ptr cs:[rax + rax]
<L25>:
	vaddss
		xmm0, xmm0, dword ptr [rax + 4*rdx]
	inc
		rdx
	cmp
		ecx, edx
	jne
		<L25>
	jmp
		<L17>
	nop
		word ptr cs:[rax + rax]
<L26>:
	mov
		ebx, dword ptr [rsp + 0x50]
	vmovaps
		xmmword ptr [rsp + 0x10], xmm0
	sub
		ebx, dword ptr [rsp]
	je
		<L29>
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
	mov
		r15, r12
	vmovss
		dword ptr [rsp + 4*rax + 0x6e4], xmm0
	test
		r13d, r13d
	jns
		<L15>
	jmp
		<L16>
<L27>:
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
	vucomiss
		xmm0, dword ptr <.LCPI0_2>
	je
		<L8>
<L28>:
	mov
		edi, 0x4
	vzeroupper
	call
		<__cxa_allocate_exception$plt>
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
	mov
		rsi, qword ptr <_ZTIf$got>
	vmovss
		dword ptr [rax], xmm0
	mov
		rdi, rax
	xor
		edx, edx
	call
		<__cxa_throw$plt>
<L29>:
	mov
		r13, qword ptr [rsp + 0x48]
	mov
		rcx, qword ptr [rsp + 0x30]
	test
		rcx, rcx
	jne
		<L31>
	jmp
		<L34>
<L30>:
	vxorps
		xmm0, xmm0, xmm0
	vmovaps
		xmmword ptr [rsp + 0x10], xmm0
	test
		rcx, rcx
	je
		<L34>
<L31>:
	mov
		r14, r13
	jmp
		<L33>
<L32>:
	add
		r14, 0x18
	add
		rbp, -0x18
	je
		<L34>
<L33>:
	mov
		rax, qword ptr [r14]
	test
		rax, rax
	je
		<L32>
	mov
		edi, 0x3
	mov
		rsi, r14
	xor
		edx, edx
	vzeroupper
	call
		rax
	mov
		qword ptr [r14], 0x0
	jmp
		<L32>
<L34>:
	mov
		r15, qword ptr [rsp + 0x40]
	mov
		r12, qword ptr [rsp + 0x38]
	test
		r13, r13
	jne
		<L6>
	jmp
		<L7>
<L35>:
	mov
		edi, 0x4
	vzeroupper
	call
		<__cxa_allocate_exception$plt>
	mov
		rsi, qword ptr <_ZTIi$got>
	mov
		dword ptr [rax], r15d
	mov
		rdi, rax
	xor
		edx, edx
	call
		<__cxa_throw$plt>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<CountedXoroshiro@Evaluation.Dependency.PseudoRandomSequence::operator++() &>:
	mov
		ecx, dword ptr [rdi + 0x500]
	mov
		rax, rdi
	inc
		ecx
	mov
		dword ptr [rdi + 0x500], ecx
	test
		cl, 0xf
	je
		<L0>
	vpsrldq
		xmm0, xmmword ptr [rax + 0x510], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x510], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x520], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x520], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x530], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x530], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x540], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x540], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x550], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x550], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x560], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x560], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x570], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x570], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x580], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x580], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x590], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x590], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x5a0], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x5a0], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x5b0], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x5b0], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x5c0], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x5c0], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x5d0], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x5d0], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x5e0], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x5e0], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x5f0], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x5f0], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x600], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x600], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x610], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x610], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x620], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x620], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x630], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x630], xmm0
	vpsrldq
		xmm0, xmmword ptr [rax + 0x640], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rax + 0x640], xmm0
	ret
<L0>:
	vmovdqa
		xmm1, xmmword ptr [rax + 0x10]
	vmovdqa
		xmm0, xmmword ptr [rax]
	vmovdqa
		xmm2, xmmword ptr [rax + 0x40]
	vmovdqa
		xmm3, xmmword ptr [rax + 0x50]
	vpxor
		xmm5, xmm0, xmmword ptr [rax + 0x20]
	vpxor
		xmm6, xmm1, xmmword ptr [rax + 0x30]
	vpsllq
		xmm4, xmm1, 0x11
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm0, xmm6, xmm0
	vmovdqa
		xmmword ptr [rax + 0x10], xmm1
	vmovdqa
		xmmword ptr [rax], xmm0
	vpxor
		xmm0, xmm5, xmm4
	vmovdqa
		xmmword ptr [rax + 0x20], xmm0
	vprolq
		xmm0, xmm6, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x30], xmm0
	vpsllq
		xmm0, xmm3, 0x11
	vpxor
		xmm1, xmm2, xmmword ptr [rax + 0x60]
	vpxor
		xmm4, xmm3, xmmword ptr [rax + 0x70]
	vpxor
		xmm3, xmm1, xmm3
	vpxor
		xmm2, xmm4, xmm2
	vpxor
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rax + 0x50], xmm3
	vmovdqa
		xmmword ptr [rax + 0x40], xmm2
	vmovdqa
		xmmword ptr [rax + 0x60], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x70], xmm0
	vmovdqa
		xmm2, xmmword ptr [rax + 0x80]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x90]
	vpxor
		xmm3, xmm2, xmmword ptr [rax + 0xa0]
	vpxor
		xmm4, xmm0, xmmword ptr [rax + 0xb0]
	vpsllq
		xmm1, xmm0, 0x11
	vpxor
		xmm0, xmm3, xmm0
	vmovdqa
		xmmword ptr [rax + 0x90], xmm0
	vpxor
		xmm0, xmm4, xmm2
	vmovdqa
		xmmword ptr [rax + 0x80], xmm0
	vpxor
		xmm0, xmm3, xmm1
	vmovdqa
		xmmword ptr [rax + 0xa0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0xb0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0xd0]
	vmovdqa
		xmm0, xmmword ptr [rax + 0xc0]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0xe0]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0xf0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0xd0], xmm1
	vmovdqa
		xmmword ptr [rax + 0xc0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0xe0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0xf0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x110]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x100]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x120]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x130]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x110], xmm1
	vmovdqa
		xmmword ptr [rax + 0x100], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x120], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x130], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x150]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x140]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x160]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x170]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x150], xmm1
	vmovdqa
		xmmword ptr [rax + 0x140], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x160], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x170], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x190]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x180]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x1a0]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x1b0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x190], xmm1
	vmovdqa
		xmmword ptr [rax + 0x180], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x1a0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x1b0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x1d0]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x1c0]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x1e0]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x1f0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x1d0], xmm1
	vmovdqa
		xmmword ptr [rax + 0x1c0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x1e0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x1f0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x210]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x200]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x220]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x230]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x210], xmm1
	vmovdqa
		xmmword ptr [rax + 0x200], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x220], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x230], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x250]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x240]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x260]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x270]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x250], xmm1
	vmovdqa
		xmmword ptr [rax + 0x240], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x260], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x270], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x290]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x280]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x2a0]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x2b0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x290], xmm1
	vmovdqa
		xmmword ptr [rax + 0x280], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x2a0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x2b0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x2d0]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x2c0]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x2e0]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x2f0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x2d0], xmm1
	vmovdqa
		xmmword ptr [rax + 0x2c0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x2e0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x2f0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x310]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x300]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x320]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x330]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x310], xmm1
	vmovdqa
		xmmword ptr [rax + 0x300], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x320], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x330], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x350]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x340]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x360]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x370]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x350], xmm1
	vmovdqa
		xmmword ptr [rax + 0x340], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x360], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x370], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x390]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x380]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x3a0]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x3b0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x390], xmm1
	vmovdqa
		xmmword ptr [rax + 0x380], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x3a0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x3b0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x3d0]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x3c0]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x3e0]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x3f0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x3d0], xmm1
	vmovdqa
		xmmword ptr [rax + 0x3c0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x3e0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x3f0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x410]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x400]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x420]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x430]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x410], xmm1
	vmovdqa
		xmmword ptr [rax + 0x400], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x420], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x430], xmm0
	vmovdqa
		xmm1, xmmword ptr [rax + 0x450]
	vmovdqa
		xmm0, xmmword ptr [rax + 0x440]
	vpxor
		xmm3, xmm0, xmmword ptr [rax + 0x460]
	vpxor
		xmm4, xmm1, xmmword ptr [rax + 0x470]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rax + 0x450], xmm1
	vmovdqa
		xmmword ptr [rax + 0x440], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x460], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x470], xmm0
	vmovdqa
		xmm0, xmmword ptr [rax + 0x490]
	vmovdqa
		xmm1, xmmword ptr [rax + 0x480]
	vpxor
		xmm3, xmm1, xmmword ptr [rax + 0x4a0]
	vpxor
		xmm4, xmm0, xmmword ptr [rax + 0x4b0]
	vpsllq
		xmm2, xmm0, 0x11
	vpxor
		xmm0, xmm3, xmm0
	vpxor
		xmm1, xmm4, xmm1
	vmovdqa
		xmmword ptr [rax + 0x490], xmm0
	vmovdqa
		xmmword ptr [rax + 0x480], xmm1
	vpxor
		xmm1, xmm3, xmm2
	vmovdqa
		xmmword ptr [rax + 0x4a0], xmm1
	vprolq
		xmm1, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x4b0], xmm1
	vmovdqa
		xmm1, xmmword ptr [rax + 0x4d0]
	vmovdqa
		xmm2, xmmword ptr [rax + 0x4c0]
	vpxor
		xmm4, xmm2, xmmword ptr [rax + 0x4e0]
	vpxor
		xmm5, xmm1, xmmword ptr [rax + 0x4f0]
	vpsllq
		xmm3, xmm1, 0x11
	vpxor
		xmm1, xmm4, xmm1
	vpxor
		xmm2, xmm5, xmm2
	vmovdqa
		xmmword ptr [rax + 0x4d0], xmm1
	vmovdqa
		xmmword ptr [rax + 0x4c0], xmm2
	vpxor
		xmm2, xmm4, xmm3
	vmovdqa
		xmmword ptr [rax + 0x4e0], xmm2
	vprolq
		xmm2, xmm5, 0x2d
	vmovdqa
		xmmword ptr [rax + 0x4f0], xmm2
	vmovdqa
		xmm2, xmmword ptr [rax + 0x10]
	vmovdqa
		xmm3, xmmword ptr [rax + 0x50]
	vmovdqa
		xmm4, xmmword ptr [rax + 0x90]
	vmovdqa
		xmm5, xmmword ptr [rax + 0xd0]
	vpsllq
		xmm6, xmm2, 0x2
	vpaddq
		xmm2, xmm6, xmm2
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm6, xmm2, 0x3
	vpaddq
		xmm2, xmm6, xmm2
	vpsllq
		xmm6, xmm3, 0x2
	vpaddq
		xmm3, xmm6, xmm3
	vprolq
		xmm3, xmm3, 0x7
	vpsllq
		xmm6, xmm3, 0x3
	vpaddq
		xmm3, xmm6, xmm3
	vpsllq
		xmm6, xmm4, 0x2
	vpaddq
		xmm4, xmm6, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm6, xmm4, 0x3
	vpaddq
		xmm4, xmm6, xmm4
	vpsllq
		xmm6, xmm5, 0x2
	vpaddq
		xmm5, xmm6, xmm5
	vprolq
		xmm5, xmm5, 0x7
	vpsllq
		xmm6, xmm5, 0x3
	vpaddq
		xmm5, xmm6, xmm5
	vmovdqa
		xmm6, xmmword ptr [rax + 0x110]
	vpsllq
		xmm7, xmm6, 0x2
	vpaddq
		xmm6, xmm7, xmm6
	vprolq
		xmm6, xmm6, 0x7
	vpsllq
		xmm7, xmm6, 0x3
	vpaddq
		xmm6, xmm7, xmm6
	vmovdqa
		xmm7, xmmword ptr [rax + 0x150]
	vpsllq
		xmm8, xmm7, 0x2
	vpaddq
		xmm7, xmm8, xmm7
	vprolq
		xmm7, xmm7, 0x7
	vpsllq
		xmm8, xmm7, 0x3
	vpaddq
		xmm7, xmm8, xmm7
	vmovdqa
		xmm8, xmmword ptr [rax + 0x190]
	vpsllq
		xmm9, xmm8, 0x2
	vpaddq
		xmm8, xmm9, xmm8
	vprolq
		xmm8, xmm8, 0x7
	vpsllq
		xmm9, xmm8, 0x3
	vpaddq
		xmm8, xmm9, xmm8
	vmovdqa
		xmm9, xmmword ptr [rax + 0x1d0]
	vpsllq
		xmm10, xmm9, 0x2
	vpaddq
		xmm9, xmm10, xmm9
	vprolq
		xmm9, xmm9, 0x7
	vpsllq
		xmm10, xmm9, 0x3
	vpaddq
		xmm9, xmm10, xmm9
	vmovdqa
		xmm10, xmmword ptr [rax + 0x210]
	vpsllq
		xmm11, xmm10, 0x2
	vpaddq
		xmm10, xmm11, xmm10
	vprolq
		xmm10, xmm10, 0x7
	vpsllq
		xmm11, xmm10, 0x3
	vpaddq
		xmm10, xmm11, xmm10
	vmovdqa
		xmm11, xmmword ptr [rax + 0x250]
	vpsllq
		xmm12, xmm11, 0x2
	vpaddq
		xmm11, xmm12, xmm11
	vprolq
		xmm11, xmm11, 0x7
	vpsllq
		xmm12, xmm11, 0x3
	vpaddq
		xmm11, xmm12, xmm11
	vmovdqa
		xmm12, xmmword ptr [rax + 0x290]
	vpsllq
		xmm13, xmm12, 0x2
	vpaddq
		xmm12, xmm13, xmm12
	vprolq
		xmm12, xmm12, 0x7
	vpsllq
		xmm13, xmm12, 0x3
	vpaddq
		xmm12, xmm13, xmm12
	vmovdqa
		xmm13, xmmword ptr [rax + 0x2d0]
	vpsllq
		xmm14, xmm13, 0x2
	vpaddq
		xmm13, xmm14, xmm13
	vprolq
		xmm13, xmm13, 0x7
	vpsllq
		xmm14, xmm13, 0x3
	vpaddq
		xmm13, xmm14, xmm13
	vmovdqa
		xmm14, xmmword ptr [rax + 0x310]
	vpsllq
		xmm15, xmm14, 0x2
	vpaddq
		xmm14, xmm15, xmm14
	vprolq
		xmm14, xmm14, 0x7
	vpsllq
		xmm15, xmm14, 0x3
	vpaddq
		xmm14, xmm15, xmm14
	vmovdqa
		xmm15, xmmword ptr [rax + 0x350]
	vpsllq
		xmm16, xmm15, 0x2
	vpaddq
		xmm15, xmm16, xmm15
	vprolq
		xmm15, xmm15, 0x7
	vpsllq
		xmm16, xmm15, 0x3
	vpaddq
		xmm15, xmm16, xmm15
	vmovdqa64
		xmm16, xmmword ptr [rax + 0x390]
	vpsllq
		xmm17, xmm16, 0x2
	vpaddq
		xmm16, xmm17, xmm16
	vprolq
		xmm16, xmm16, 0x7
	vpsllq
		xmm17, xmm16, 0x3
	vpaddq
		xmm16, xmm17, xmm16
	vmovdqa64
		xmm17, xmmword ptr [rax + 0x3d0]
	vpsllq
		xmm18, xmm17, 0x2
	vpaddq
		xmm17, xmm18, xmm17
	vprolq
		xmm17, xmm17, 0x7
	vpsllq
		xmm18, xmm17, 0x3
	vpaddq
		xmm17, xmm18, xmm17
	vmovdqa64
		xmm18, xmmword ptr [rax + 0x410]
	vpsllq
		xmm19, xmm18, 0x2
	vpaddq
		xmm18, xmm19, xmm18
	vprolq
		xmm18, xmm18, 0x7
	vpsllq
		xmm19, xmm18, 0x3
	vpaddq
		xmm18, xmm19, xmm18
	vmovdqa64
		xmm19, xmmword ptr [rax + 0x450]
	vmovdqa
		xmmword ptr [rax + 0x510], xmm2
	vmovdqa
		xmmword ptr [rax + 0x520], xmm3
	vmovdqa
		xmmword ptr [rax + 0x530], xmm4
	vmovdqa
		xmmword ptr [rax + 0x540], xmm5
	vmovdqa
		xmmword ptr [rax + 0x550], xmm6
	vmovdqa
		xmmword ptr [rax + 0x560], xmm7
	vmovdqa
		xmmword ptr [rax + 0x570], xmm8
	vmovdqa
		xmmword ptr [rax + 0x580], xmm9
	vmovdqa
		xmmword ptr [rax + 0x590], xmm10
	vmovdqa
		xmmword ptr [rax + 0x5a0], xmm11
	vmovdqa
		xmmword ptr [rax + 0x5b0], xmm12
	vmovdqa
		xmmword ptr [rax + 0x5c0], xmm13
	vmovdqa
		xmmword ptr [rax + 0x5d0], xmm14
	vmovdqa
		xmmword ptr [rax + 0x5e0], xmm15
	vmovdqa64
		xmmword ptr [rax + 0x5f0], xmm16
	vmovdqa64
		xmmword ptr [rax + 0x600], xmm17
	vmovdqa64
		xmmword ptr [rax + 0x610], xmm18
	vpsllq
		xmm20, xmm19, 0x2
	vpaddq
		xmm19, xmm20, xmm19
	vprolq
		xmm19, xmm19, 0x7
	vpsllq
		xmm20, xmm19, 0x3
	vpaddq
		xmm19, xmm20, xmm19
	vpsllq
		xmm20, xmm0, 0x2
	vpaddq
		xmm0, xmm20, xmm0
	vmovdqa64
		xmmword ptr [rax + 0x620], xmm19
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm20, xmm0, 0x3
	vpaddq
		xmm0, xmm20, xmm0
	vpsllq
		xmm20, xmm1, 0x2
	vpaddq
		xmm1, xmm20, xmm1
	vmovdqa
		xmmword ptr [rax + 0x630], xmm0
	vprolq
		xmm1, xmm1, 0x7
	vpsllq
		xmm20, xmm1, 0x3
	vpaddq
		xmm1, xmm20, xmm1
	vmovdqa
		xmmword ptr [rax + 0x640], xmm1
	ret

<__clang_call_terminate>:
	push
		rax
	call
		<__cxa_begin_catch$plt>
	call
		<_ZSt9terminatev$plt>

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Circle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x2004>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x28
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Circle>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Circle>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipse>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x2018>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x30
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Ellipse>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		ecx, dword ptr [rbx + 0x28]
	mov
		dword ptr [rax + 0x28], ecx
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Ellipse>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Rectangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x202c>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x30
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Rectangle>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		ecx, dword ptr [rbx + 0x28]
	mov
		dword ptr [rax + 0x28], ecx
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Rectangle>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Square>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x2040>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x28
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Square>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Square>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Triangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x2054>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x30
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Triangle>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		ecx, dword ptr [rbx + 0x28]
	mov
		dword ptr [rax + 0x28], ecx
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Triangle>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cube>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x2068>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x28
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Cube>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Cube>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cuboid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x207c>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x30
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Cuboid>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		rcx, qword ptr [rbx + 0x28]
	mov
		qword ptr [rax + 0x28], rcx
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Cuboid>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Pyramid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x2090>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x30
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Pyramid>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		rcx, qword ptr [rbx + 0x28]
	mov
		qword ptr [rax + 0x28], rcx
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Pyramid>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Sphere>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x20a4>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x28
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Sphere>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Sphere>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cylinder>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x20b8>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x30
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Cylinder>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		ecx, dword ptr [rbx + 0x28]
	mov
		dword ptr [rax + 0x28], ecx
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Cylinder>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cone>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x20cc>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x30
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Cone>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		ecx, dword ptr [rbx + 0x28]
	mov
		dword ptr [rax + 0x28], ecx
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Cone>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x20e0>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x30
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		ymm0, ymmword ptr [rbx + 0x8]
	vmovups
		ymmword ptr [rax + 0x8], ymm0
	mov
		rcx, qword ptr [rbx + 0x28]
	mov
		qword ptr [rax + 0x28], rcx
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Head>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>:
	push
		r15
	push
		r14
	push
		rbx
	cmp
		edi, 0x4
	ja
		<L0>
	lea
		rcx, <strcmp+0x20f4>
	mov
		eax, edi
	mov
		rbx, qword ptr [rsi + 0x8]
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	mov
		qword ptr [rdx], rbx
<L0>:
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		rax, qword ptr [rdx]
	mov
		qword ptr [rax + 0x8], rbx
	mov
		rax, qword ptr [rsi]
	mov
		rcx, qword ptr [rdx]
	mov
		qword ptr [rcx], rax
	mov
		qword ptr [rsi], 0x0
	pop
		rbx
	pop
		r14
	pop
		r15
	ret
	mov
		edi, 0x68
	mov
		r14, rdx
	mov
		r15, rsi
	call
		<_Znwm$plt>
	lea
		rcx, <vtable for Bodies3D::BodyAdapter<Bodies3D::Head>+0x10>
	mov
		qword ptr [rax], rcx
	vmovups
		zmm0, zmmword ptr [rbx + 0x8]
	vmovups
		zmm1, zmmword ptr [rbx + 0x28]
	vmovups
		zmmword ptr [rax + 0x8], zmm0
	vmovups
		zmmword ptr [rax + 0x28], zmm1
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx + 0x8], rax
	mov
		rax, qword ptr [r15]
	mov
		rcx, qword ptr [r14]
	mov
		qword ptr [rcx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	vzeroupper
	ret
	test
		rbx, rbx
	je
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	pop
		r14
	pop
		r15
	jmp
		qword ptr [rax + 0x10]
	lea
		rax, <typeinfo for Bodies3D::BodyAdapter<Bodies3D::Head>>
	mov
		qword ptr [rdx], rax
	pop
		rbx
	pop
		r14
	pop
		r15
	ret

<Bodies3D::AnyBody::AnyBody<Bodies3D::Head, RGBAColor const&, Point const&, float const&, Bodies3D::Sphere, Bodies3D::Sphere>(std::in_place_type_t<Bodies3D::Head>, RGBAColor const&, Point const&, float const&, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&, Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Head>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Head>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Head>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Head>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipsoid, RGBAColor const&, Point const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Ellipsoid>, RGBAColor const&, Point const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipsoid>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cone, RGBAColor const&, Point const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cone>, RGBAColor const&, Point const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cone>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cone>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cone>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cone>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cylinder, RGBAColor const&, Point const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cylinder>, RGBAColor const&, Point const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cylinder>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cylinder>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cylinder>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cylinder>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Sphere, RGBAColor const&, Point const&, float const&>(std::in_place_type_t<Bodies3D::Sphere>, RGBAColor const&, Point const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Sphere>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Sphere>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Sphere>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Sphere>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Pyramid, RGBAColor const&, Point const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Pyramid>, RGBAColor const&, Point const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Pyramid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Pyramid>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Pyramid>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Pyramid>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cuboid, RGBAColor const&, Point const&, float const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Cuboid>, RGBAColor const&, Point const&, float const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cuboid>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cuboid>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cuboid>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cuboid>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Cube, RGBAColor const&, Point const&, float const&>(std::in_place_type_t<Bodies3D::Cube>, RGBAColor const&, Point const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Cube>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cube>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cube>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Cube>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Triangle, RGBAColor const&, Point const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Triangle>, RGBAColor const&, Point const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Triangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Triangle>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Triangle>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Triangle>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Square, RGBAColor const&, Point const&, float const&>(std::in_place_type_t<Bodies3D::Square>, RGBAColor const&, Point const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Square>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Square>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Square>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Square>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Rectangle, RGBAColor const&, Point const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Rectangle>, RGBAColor const&, Point const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Rectangle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Rectangle>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Rectangle>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Rectangle>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Ellipse, RGBAColor const&, Point const&, float const&, float const&>(std::in_place_type_t<Bodies3D::Ellipse>, RGBAColor const&, Point const&, float const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Ellipse>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipse>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipse>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Ellipse>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<Bodies3D::AnyBody::AnyBody<Bodies3D::Circle, RGBAColor const&, Point const&, float const&>(std::in_place_type_t<Bodies3D::Circle>, RGBAColor const&, Point const&, float const&)::'lambda'(std::any const&)::__invoke(std::any const&)>:
	push
		rbx
	sub
		rsp, 0x10
	mov
		rax, qword ptr [rdi]
	lea
		rcx, <std::any::_Manager_external<Bodies3D::BodyAdapter<Bodies3D::Circle>>::_S_manage(std::any::_Op, std::any const*, std::any::_Arg*)>
	mov
		rbx, rdi
	cmp
		rax, rcx
	je
		<L2>
	test
		rax, rax
	je
		<L0>
	lea
		rdx, [rsp + 0x8]
	mov
		edi, 0x1
	mov
		rsi, rbx
	call
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Circle>>
	cmp
		rdi, rax
	jne
		<L1>
	jmp
		<L2>
<L0>:
	mov
		rax, qword ptr <_ZTIv$got>
	mov
		rdi, qword ptr [rax + 0x8]
	lea
		rax, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Circle>>
	cmp
		rdi, rax
	je
		<L2>
<L1>:
	cmp
		byte ptr [rdi], 0x2a
	je
		<L3>
	lea
		rsi, <typeinfo name for Bodies3D::BodyAdapter<Bodies3D::Circle>>
	call
		<strcmp$plt>
	test
		eax, eax
	jne
		<L3>
<L2>:
	mov
		rax, qword ptr [rbx + 0x8]
	test
		rax, rax
	je
		<L3>
	add
		rsp, 0x10
	pop
		rbx
	ret
<L3>:
	call
		<std::__throw_bad_any_cast()>
	mov
		rdi, rax
	call
		<__clang_call_terminate>
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<std::__throw_bad_any_cast()>:
	push
		rax
	mov
		edi, 0x8
	call
		<__cxa_allocate_exception$plt>
	mov
		rdx, qword ptr <_ZNSt8bad_castD2Ev$got>
	lea
		rcx, <vtable for std::bad_any_cast+0x10>
	lea
		rsi, <typeinfo for std::bad_any_cast>
	mov
		rdi, rax
	mov
		qword ptr [rax], rcx
	call
		<__cxa_throw$plt>

<std::bad_any_cast::~bad_any_cast()>:
	push
		rbx
	mov
		rbx, rdi
	call
		<_ZNSt8bad_castD2Ev@plt>
	mov
		esi, 0x8
	mov
		rdi, rbx
	pop
		rbx
	jmp
		<_ZdlPvm$plt>

<std::bad_any_cast::what() const>:
	lea
		rax, <.L.str>
	ret

<Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x24]
	vmulss
		xmm1, xmm0, xmm0
	vmulss
		xmm1, xmm1, dword ptr <.LCPI41_0>
	vmulss
		xmm0, xmm1, xmm0
	ret

<Bodies3D::IBody::~IBody()>:
	ret

<Bodies3D::BodyAdapter<Bodies3D::Head@Evaluation.CRTP.Head>::~BodyAdapter()>:
	mov
		esi, 0x68
	jmp
		<_ZdlPvm$plt>

<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x24]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI41_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x28]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x2c]
	ret

<Bodies3D::BodyAdapter<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::~BodyAdapter()>:
	mov
		esi, 0x30
	jmp
		<_ZdlPvm$plt>

<Bodies3D::BodyAdapter<Bodies3D::Cone@Evaluation.CRTP.Cone>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x24]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI37_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x28]
	ret

<Bodies3D::BodyAdapter<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x24]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI57_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x28]
	ret

<Bodies3D::BodyAdapter<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::~BodyAdapter()>:
	mov
		esi, 0x28
	jmp
		<_ZdlPvm$plt>

<Bodies3D::BodyAdapter<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x24]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI43_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x28]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x2c]
	ret

<Bodies3D::BodyAdapter<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x28]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x24]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x2c]
	ret

<Bodies3D::BodyAdapter<Bodies3D::Cube@Evaluation.CRTP.Cube>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x24]
	vmulss
		xmm1, xmm0, xmm0
	vmulss
		xmm0, xmm1, xmm0
	ret

<Bodies3D::BodyAdapter<Bodies3D::Triangle@Evaluation.CRTP.Triangle>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x24]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI49_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x28]
	ret

<Bodies3D::BodyAdapter<Bodies3D::Square@Evaluation.CRTP.Square>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x24]
	vmulss
		xmm0, xmm0, xmm0
	ret

<Bodies3D::BodyAdapter<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x28]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x24]
	ret

<Bodies3D::BodyAdapter<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x24]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI57_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x28]
	ret

<Bodies3D::BodyAdapter<Bodies3D::Circle@Evaluation.CRTP.Circle>::ComputeVolume() const>:
	vmovss
		xmm0, dword ptr [rdi + 0x24]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI57_0>
	ret
