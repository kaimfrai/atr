
build/Evaluation/Speed/bin/TypeErasure:	file format elf64-x86-64

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
		rsp, 0xd48
	mov
		rcx, qword ptr [rsi + 0x8]
	mov
		rax, qword ptr [rsi + 0x10]
	movsx
		ebx, byte ptr [rcx]
	movzx
		edx, byte ptr [rcx + 0x1]
	add
		ebx, -0x30
	test
		dl, dl
	je
		<L1>
	add
		rcx, 0x2
	nop
		dword ptr [rax + rax]
<L0>:
	lea
		esi, [rbx + 4*rbx]
	movsx
		edx, dl
	lea
		ebx, [rdx + 2*rsi - 0x30]
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
		edx, byte ptr [rax]
	movzx
		ecx, byte ptr [rax + 0x1]
	add
		edx, -0x30
	test
		cl, cl
	je
		<L3>
	add
		rax, 0x2
	nop
		word ptr cs:[rax + rax]
<L2>:
	lea
		edx, [rdx + 4*rdx]
	movsx
		ecx, cl
	lea
		edx, [rcx + 2*rdx - 0x30]
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
		rsi, qword ptr <_ZSt7nothrow$got>
	mov
		eax, edx
	shl
		eax, 0x4
	mov
		qword ptr [rsp + 0x58], rdx
	movsxd
		rdi, eax
	mov
		dword ptr [rsp + 0x48], eax
	shl
		rdi, 0x5
	call
		<_ZnamRKSt9nothrow_t$plt>
	lea
		rsi, <PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence::begin() const::vStart>
	lea
		rdi, [rsp + 0x6f0]
	mov
		edx, 0x650
	mov
		qword ptr [rsp + 0x8], rax
	call
		<memcpy$plt>
	mov
		qword ptr [rsp + 0x50], rbx
	test
		ebx, ebx
	je
		<L5>
	mov
		rax, qword ptr [rsp + 0x50]
	lea
		r14, [rsp + 0x6f0]
	mov
		ebx, eax
	nop
		dword ptr [rax + rax]
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
		rdi, [rsp + 0xa0]
	lea
		rsi, [rsp + 0x6f0]
	mov
		edx, 0x650
	call
		<memcpy$plt>
	mov
		eax, dword ptr [rsp + 0x48]
	cmp
		dword ptr [rsp + 0x5a0], eax
	jne
		<L10>
	vxorps
		xmm0, xmm0, xmm0
<L6>:
	mov
		rdi, qword ptr [rsp + 0x8]
<L7>:
	mov
		rbx, qword ptr [rsp + 0x50]
	mov
		r14, qword ptr [rsp + 0x58]
	test
		rdi, rdi
	je
		<L8>
	vmovaps
		xmmword ptr [rsp + 0x10], xmm0
	vzeroupper
	call
		<_ZdaPv$plt>
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
<L8>:
	test
		ebx, ebx
	jne
		<L38>
	cmp
		r14d, 0x30d4
	je
		<L31>
	cmp
		r14d, 0x186a
	jne
		<L9>
	vucomiss
		xmm0, dword ptr <.LCPI0_3>
	jne
		<L32>
<L9>:
	xor
		eax, eax
	add
		rsp, 0xd48
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
<L10>:
	mov
		r14, qword ptr [rsp + 0x8]
	xor
		ebx, ebx
	jmp
		<L13>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Square const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Square>>::value>
	mov
		qword ptr [r14], rax
	mov
		edi, 0x20
	vzeroupper
	call
		<_Znwm$plt>
<L11>:
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovups
		ymmword ptr [rax], ymm0
<L12>:
	lea
		rdi, [rsp + 0xa0]
	mov
		rbx, r15
	mov
		qword ptr [r14 + 0x18], rax
	inc
		rbx
	vzeroupper
	call
		<CountedXoroshiro@Evaluation.Dependency.PseudoRandomSequence::operator++() &>
	mov
		eax, dword ptr [rsp + 0x48]
	add
		r14, 0x20
	cmp
		dword ptr [rsp + 0x5a0], eax
	je
		<L17>
<L13>:
	vmovq
		xmm1, qword ptr <.LCPI0_4>
	vmovdqu64
		zmm0, zmmword ptr [rsp + 0x5c0]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x620]
	movzx
		eax, byte ptr [rsp + 0x5b0]
	movzx
		ecx, byte ptr [rsp + 0x640]
	movzx
		edx, byte ptr [rsp + 0x650]
	vmovss
		xmm4, dword ptr [rsp + 0x6c0]
	mov
		r15, rbx
	movzx
		ebp, byte ptr [rsp + 0x660]
	movzx
		r12d, byte ptr [rsp + 0x670]
	movzx
		r13d, byte ptr [rsp + 0x680]
	movzx
		ebx, byte ptr [rsp + 0x6d0]
	vpermt2b
		zmm0, zmm1, zmmword ptr [rsp + 0x600]
	vmovd
		xmm1, dword ptr [rsp + 0x630]
	vpunpcklbw
		xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	insertq
		xmm0, xmm1, 0x10, 0x30 # xmm0 = xmm0[0,1,2,3,4,5],xmm1[0,1],xmm0[u,u,u,u,u,u,u,u]
	vmovd
		xmm1, dword ptr <.LCPI0_5>
	vpermb
		zmm3, zmm1, zmmword ptr [rsp + 0x690]
	vpmovzxbd
		ymm0, xmm0 # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
	vcvtsi2ss
		xmm1, xmm15, ecx
	imul
		ecx, eax, 0x4f
	vcvtsi2ss
		xmm2, xmm15, edx
	vcvtdq2ps
		ymm0, ymm0
	shr
		ecx, 0xa
	vmovups
		ymmword ptr [rsp + 0x10], ymm0
	vxorps
		xmm0, xmm0, xmm0
	vmovups
		xmmword ptr [r14 + 0x8], xmm0
	lea
		edx, [rcx + 2*rcx]
	lea
		ecx, [rcx + 4*rdx]
	sub
		al, cl
	lea
		rcx, <memset+0xeb0>
	movzx
		eax, al
	movsxd
		rax, dword ptr [rcx + 4*rax]
	add
		rax, rcx
	jmp
		rax
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Circle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Circle>>::value>
	mov
		qword ptr [r14], rax
	mov
		edi, 0x20
	vzeroupper
	call
		<_Znwm$plt>
	jmp
		<L11>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipsoid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Ellipsoid>>::value>
	vmovss
		dword ptr [rsp + 0x30], xmm2
	vmovss
		dword ptr [rsp + 0x60], xmm1
	mov
		qword ptr [r14], rax
	mov
		edi, 0x28
	vzeroupper
	call
		<_Znwm$plt>
	jmp
		<L15>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Triangle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Triangle>>::value>
	vmovss
		dword ptr [rsp + 0x60], xmm1
	mov
		qword ptr [r14], rax
	mov
		edi, 0x24
	vzeroupper
	call
		<_Znwm$plt>
	jmp
		<L14>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Head const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Head>>::value>
	vmovaps
		xmmword ptr [rsp + 0x30], xmm4
	vmovdqu64
		zmmword ptr [rsp + 0x60], zmm3
	mov
		qword ptr [r14], rax
	mov
		edi, 0x60
	vzeroupper
	call
		<_Znwm$plt>
	vmovdqu64
		zmm3, zmmword ptr [rsp + 0x60]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x30]
	vmovups
		ymm6, ymmword ptr [rsp + 0x10]
	insertq
		xmm3, xmm0, 0x8, 0x18 # xmm3 = xmm3[0,1,2],xmm0[0],xmm3[4,5,6,7,u,u,u,u,u,u,u,u]
	vcvtsi2ss
		xmm0, xmm15, ebp
	vshufps
		xmm5, xmm6, xmm6, 0xff # xmm5 = xmm6[3,3,3,3]
	vmovups
		ymmword ptr [rax], ymm6
	vpmovzxbd
		xmm3, xmm3 # xmm3 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero
	vcvtsi2ss
		xmm1, xmm15, r12d
	vcvtsi2ss
		xmm2, xmm15, r13d
	vcvtsi2ss
		xmm4, xmm15, ebx
	vmovss
		dword ptr [rax + 0x20], xmm0
	vcvtdq2ps
		xmm3, xmm3
	vmovss
		dword ptr [rax + 0x24], xmm1
	vmovss
		dword ptr [rax + 0x28], xmm2
	vmovss
		dword ptr [rax + 0x2c], xmm5
	vmovdqa
		xmmword ptr [rax + 0x30], xmm3
	vmovss
		dword ptr [rax + 0x40], xmm0
	vmovss
		dword ptr [rax + 0x44], xmm1
	vpshufd
		xmm1, xmm3, 0xe9 # xmm1 = xmm3[1,2,2,3]
	vmovss
		dword ptr [rax + 0x48], xmm2
	vmovss
		dword ptr [rax + 0x4c], xmm5
	vmovss
		dword ptr [rax + 0x50], xmm4
	vmovq
		qword ptr [rax + 0x54], xmm1
	vextractps
		dword ptr [rax + 0x5c], xmm3, 0x3
	jmp
		<L12>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cylinder const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Cylinder>>::value>
	vmovss
		dword ptr [rsp + 0x30], xmm2
	mov
		qword ptr [r14], rax
	mov
		edi, 0x24
	vzeroupper
	call
		<_Znwm$plt>
	jmp
		<L16>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Rectangle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Rectangle>>::value>
	vmovss
		dword ptr [rsp + 0x60], xmm1
	mov
		qword ptr [r14], rax
	mov
		edi, 0x24
	vzeroupper
	call
		<_Znwm$plt>
	jmp
		<L14>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Pyramid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Pyramid>>::value>
	vmovss
		dword ptr [rsp + 0x30], xmm2
	vmovss
		dword ptr [rsp + 0x60], xmm1
	mov
		qword ptr [r14], rax
	mov
		edi, 0x28
	vzeroupper
	call
		<_Znwm$plt>
	jmp
		<L15>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipse const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Ellipse>>::value>
	vmovss
		dword ptr [rsp + 0x60], xmm1
	mov
		qword ptr [r14], rax
	mov
		edi, 0x24
	vzeroupper
	call
		<_Znwm$plt>
<L14>:
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovd
		xmm1, dword ptr [rsp + 0x60]
	vmovups
		ymmword ptr [rax], ymm0
	vmovd
		dword ptr [rax + 0x20], xmm1
	jmp
		<L12>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cube const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Cube>>::value>
	mov
		qword ptr [r14], rax
	mov
		edi, 0x20
	vzeroupper
	call
		<_Znwm$plt>
	jmp
		<L11>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cuboid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Cuboid>>::value>
	vmovss
		dword ptr [rsp + 0x30], xmm2
	vmovss
		dword ptr [rsp + 0x60], xmm1
	mov
		qword ptr [r14], rax
	mov
		edi, 0x28
	vzeroupper
	call
		<_Znwm$plt>
<L15>:
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovss
		xmm2, dword ptr [rsp + 0x60]
	vmovd
		xmm1, dword ptr [rsp + 0x30]
	vmovups
		ymmword ptr [rax], ymm0
	vmovss
		dword ptr [rax + 0x20], xmm2
	vmovd
		dword ptr [rax + 0x24], xmm1
	jmp
		<L12>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cone const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Cone>>::value>
	vmovss
		dword ptr [rsp + 0x30], xmm2
	mov
		qword ptr [r14], rax
	mov
		edi, 0x24
	vzeroupper
	call
		<_Znwm$plt>
<L16>:
	vmovups
		ymm0, ymmword ptr [rsp + 0x10]
	vmovd
		xmm1, dword ptr [rsp + 0x30]
	vmovups
		ymmword ptr [rax], ymm0
	vmovd
		dword ptr [rax + 0x20], xmm1
	jmp
		<L12>
	lea
		rax, <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Sphere const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::destructible<Bodies3D::Sphere>>::value>
	mov
		qword ptr [r14], rax
	mov
		edi, 0x20
	vzeroupper
	call
		<_Znwm$plt>
	jmp
		<L11>
<L17>:
	test
		ebx, ebx
	je
		<L34>
	mov
		r15, qword ptr [rsp + 0x8]
	vxorps
		xmm0, xmm0, xmm0
	mov
		r14d, ebx
	vmovups
		zmmword ptr [rsp + 0x730], zmm0
	vmovups
		zmmword ptr [rsp + 0x6f0], zmm0
	mov
		qword ptr [rsp + 0x48], rbx
	jmp
		<L20>
	nop
		word ptr cs:[rax + rax]
<L18>:
	vmovss
		xmm0, dword ptr [rsp + 0x6f4]
	mov
		ebx, 0x1
	vmovss
		dword ptr [rsp + 0x6f8], xmm0
<L19>:
	mov
		eax, ebx
	lea
		rdx, [4*rax + 0x4]
	lea
		rdi, [rsp + 0x6f0]
	xor
		esi, esi
	vzeroupper
	call
		<memset$plt>
	mov
		r15, r12
<L20>:
	blsi
		eax, r14d
	mov
		r12, rax
	shl
		r12, 0x5
	add
		r12, r15
	test
		eax, eax
	je
		<L18>
	mov
		ebp, 0x1
	mov
		r13d, 0x1
	xor
		ecx, ecx
	mov
		qword ptr [rsp + 0x10], rax
	jmp
		<L22>
	nop
		dword ptr [rax]
<L21>:
	mov
		ecx, 0xfffffffe
	lea
		edx, [rbp + 0x1]
	movsxd
		rax, ebx
	add
		r15, 0x20
	mov
		r13d, ebx
	sub
		ecx, ebp
	lzcnt
		esi, edx
	vmovss
		dword ptr [rsp + 4*rax + 0x6f0], xmm0
	mov
		ebp, edx
	popcnt
		ecx, ecx
	sub
		ecx, esi
	cmp
		r15, r12
	je
		<L30>
<L22>:
	mov
		rax, qword ptr [r15]
	mov
		ebx, ecx
	lea
		rdi, [r15 + 0x18]
	vzeroupper
	call
		qword ptr [rax]
	mov
		edx, ebx
	sub
		edx, r13d
	jl
		<L21>
	movsxd
		rax, r13d
	cmp
		edx, 0x7
	jb
		<L28>
	lea
		rcx, [rdx + 0x1]
	cmp
		edx, 0x3f
	jae
		<L23>
	xor
		edx, edx
	jmp
		<L25>
<L23>:
	movabs
		rsi, 0x1ffffffc0
	lea
		r8, [rsp + 0x7b0]
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
		word ptr [rax + rax]
<L24>:
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
		<L24>
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
		<L21>
	test
		cl, 0x38
	je
		<L27>
<L25>:
	movabs
		rsi, 0x1ffffffc0
	lea
		rdi, [rsp + 4*rax + 0x6f0]
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
<L26>:
	vaddps
		ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
	add
		rdx, 0x8
	cmp
		rsi, rdx
	jne
		<L26>
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
		<L21>
	add
		rax, rsi
	jmp
		<L28>
<L27>:
	add
		rax, rdx
	nop
		word ptr [rax + rax]
<L28>:
	mov
		ecx, ebx
	sub
		ecx, eax
	lea
		rax, [rsp + 4*rax + 0x6f0]
	xor
		edx, edx
	inc
		ecx
<L29>:
	vaddss
		xmm0, xmm0, dword ptr [rax + 4*rdx]
	inc
		rdx
	cmp
		ecx, edx
	jne
		<L29>
	jmp
		<L21>
	nop
		word ptr cs:[rax + rax]
<L30>:
	sub
		r14d, dword ptr [rsp + 0x10]
	je
		<L33>
	vmovss
		dword ptr [rsp + 4*rax + 0x6f4], xmm0
	mov
		r15, r12
	test
		ebx, ebx
	jns
		<L19>
	jmp
		<L20>
<L31>:
	vucomiss
		xmm0, dword ptr <.LCPI0_2>
	je
		<L9>
<L32>:
	mov
		edi, 0x4
	vmovaps
		xmmword ptr [rsp + 0x10], xmm0
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
<L33>:
	mov
		rdi, qword ptr [rsp + 0x8]
	mov
		rbx, qword ptr [rsp + 0x48]
	shl
		rbx, 0x5
	jne
		<L35>
	jmp
		<L7>
<L34>:
	mov
		rdi, qword ptr [rsp + 0x8]
	vxorps
		xmm0, xmm0, xmm0
	shl
		rbx, 0x5
	je
		<L7>
<L35>:
	add
		rbx, rdi
	mov
		r14, rdi
	vmovaps
		xmmword ptr [rsp + 0x10], xmm0
	jmp
		<L37>
	nop
		word ptr cs:[rax + rax]
<L36>:
	add
		r14, 0x8
	cmp
		r14, rbx
	je
		<L6>
<L37>:
	mov
		rax, qword ptr [r14]
	add
		r14, 0x18
	mov
		rdi, r14
	vzeroupper
	call
		qword ptr [rax + 0x8]
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
	mov
		r15, qword ptr [r14 - 0x8]
	test
		r15, r15
	je
		<L36>
	lock
	dec
		dword ptr [r15 + 0x8]
	jne
		<L36>
	mov
		rax, qword ptr [r15]
	mov
		rdi, r15
	call
		qword ptr [rax + 0x10]
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
	lock
	dec
		dword ptr [r15 + 0xc]
	jne
		<L36>
	mov
		rax, qword ptr [r15]
	mov
		rdi, r15
	call
		qword ptr [rax + 0x18]
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
	jmp
		<L36>
<L38>:
	mov
		edi, 0x4
	vzeroupper
	call
		<__cxa_allocate_exception$plt>
	mov
		rsi, qword ptr <_ZTIi$got>
	mov
		dword ptr [rax], ebx
	mov
		rdi, rax
	xor
		edx, edx
	call
		<__cxa_throw$plt>
	jmp
		<L39>
	jmp
		<L39>
	jmp
		<L39>
	jmp
		<L39>
	jmp
		<L39>
	jmp
		<L39>
	jmp
		<L39>
	jmp
		<L39>
	jmp
		<L39>
	jmp
		<L39>
	jmp
		<L39>
	jmp
		<L39>
<L39>:
	xor
		edi, edi
	mov
		rbx, rax
	call
		<boost::type_erasure::binding<boost::mpl::vector<Bodies3D::has_ComputeVolume<float () const, boost::type_erasure::_self>, boost::type_erasure::destructible<boost::type_erasure::_self>, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na>>::~binding()>
	mov
		rdi, rbx
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

<boost::type_erasure::binding<boost::mpl::vector<Bodies3D::has_ComputeVolume<float () const, boost::type_erasure::_self>, boost::type_erasure::destructible<boost::type_erasure::_self>, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na>>::~binding()>:
	push
		rbx
	test
		rdi, rdi
	je
		<L0>
	lock
	dec
		dword ptr [rdi + 0x8]
	jne
		<L0>
	mov
		rax, qword ptr [rdi]
	mov
		rbx, rdi
	call
		qword ptr [rax + 0x10]
	lock
	dec
		dword ptr [rbx + 0xc]
	jne
		<L0>
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	call
		qword ptr [rax + 0x18]
<L0>:
	pop
		rbx
	ret
	mov
		rdi, rax
	call
		<__clang_call_terminate>

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Head const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Head const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm1, xmm0, xmm0
	vmulss
		xmm1, xmm1, dword ptr <.LCPI6_0>
	vmulss
		xmm0, xmm1, xmm0
	ret

<boost::type_erasure::destructible<Bodies3D::Head@Evaluation.CRTP.Head>::value(boost::type_erasure::detail::storage&)>:
	mov
		rdi, qword ptr [rdi]
	test
		rdi, rdi
	je
		<L0>
	mov
		esi, 0x60
	jmp
		<_ZdlPvm$plt>
<L0>:
	ret

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipsoid const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Ellipsoid const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI6_0>
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x24]
	ret

<boost::type_erasure::destructible<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::value(boost::type_erasure::detail::storage&)>:
	mov
		rdi, qword ptr [rdi]
	test
		rdi, rdi
	je
		<L0>
	mov
		esi, 0x28
	jmp
		<_ZdlPvm$plt>
<L0>:
	ret

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cone const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Cone const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI8_0>
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	ret

<boost::type_erasure::destructible<Bodies3D::Cone@Evaluation.CRTP.Cone>::value(boost::type_erasure::detail::storage&)>:
	mov
		rdi, qword ptr [rdi]
	test
		rdi, rdi
	je
		<L0>
	mov
		esi, 0x24
	jmp
		<_ZdlPvm$plt>
<L0>:
	ret

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cylinder const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Cylinder const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI28_0>
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	ret

<boost::type_erasure::destructible<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::value(boost::type_erasure::detail::storage&)>:
	mov
		rdi, qword ptr [rdi]
	test
		rdi, rdi
	je
		<L0>
	mov
		esi, 0x20
	jmp
		<_ZdlPvm$plt>
<L0>:
	ret

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Pyramid const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Pyramid const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI14_0>
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x24]
	ret

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cuboid const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Cuboid const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x24]
	ret

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cube const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Cube const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm1, xmm0, xmm0
	vmulss
		xmm0, xmm1, xmm0
	ret

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Triangle const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Triangle const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI20_0>
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	ret

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Square const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Square const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	ret

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Rectangle const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Rectangle const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x1c]
	ret

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipse const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Ellipse const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI28_0>
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	ret

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Circle const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Circle const&)>::value(boost::type_erasure::detail::storage const&)>:
	mov
		rax, qword ptr [rdi]
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI28_0>
	ret
