
build/Evaluation/Speed/bin/Dyno:	file format elf64-x86-64

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

<__cxa_throw$plt>:
	mov
		r11d, 0x1

<__cxa_throw@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x20>

<__cxa_begin_catch$plt>:
	mov
		r11d, 0x2

<__cxa_begin_catch@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x28>

<__cxa_allocate_exception$plt>:
	mov
		r11d, 0x3

<__cxa_allocate_exception@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x30>

<_ZdaPv$plt>:
	mov
		r11d, 0x4

<_ZdaPv@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x38>

<_ZnamRKSt9nothrow_t$plt>:
	mov
		r11d, 0x5

<_ZnamRKSt9nothrow_t@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x40>

<free$plt>:
	mov
		r11d, 0x6

<free@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x48>

<malloc$plt>:
	mov
		r11d, 0x7

<malloc@plt>:
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
		rsp, 0xd18
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
		ebx, r12d
	shl
		ebx, 0x4
	mov
		rsi, qword ptr <_ZSt7nothrow$got>
	movsxd
		rax, ebx
	shl
		rax, 0x4
	lea
		rdi, [rax + 4*rax]
	call
		<_ZnamRKSt9nothrow_t$plt>
	lea
		rsi, <PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence::begin() const::vStart>
	lea
		rdi, [rsp + 0x6c0]
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
		r14, [rsp + 0x6c0]
	mov
		ebp, r15d
	nop
<L4>:
	mov
		rdi, r14
	call
		<CountedXoroshiro@Evaluation.Dependency.PseudoRandomSequence::operator++() &>
	dec
		ebp
	jne
		<L4>
<L5>:
	lea
		rdi, [rsp + 0x70]
	lea
		rsi, [rsp + 0x6c0]
	mov
		edx, 0x650
	call
		<memcpy$plt>
	cmp
		dword ptr [rsp + 0x570], ebx
	jne
		<L9>
	vxorps
		xmm0, xmm0, xmm0
	test
		r13, r13
	je
		<L7>
<L6>:
	mov
		rdi, r13
	vmovaps
		xmmword ptr [rsp + 0x10], xmm0
	vzeroupper
	call
		<_ZdaPv$plt>
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
<L7>:
	test
		r15d, r15d
	jne
		<L42>
	cmp
		r12d, 0x30d4
	je
		<L32>
	cmp
		r12d, 0x186a
	jne
		<L8>
	vucomiss
		xmm0, dword ptr <.LCPI0_3>
	jne
		<L33>
<L8>:
	xor
		eax, eax
	add
		rsp, 0xd18
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
		qword ptr [rsp + 0x8], r13
	mov
		qword ptr [rsp + 0x48], r15
	lea
		r15, <memset+0xf50>
	lea
		r14, [rsp + 0x70]
	mov
		qword ptr [rsp + 0x40], r12
	xor
		r13d, r13d
	xor
		r12d, r12d
	mov
		rbp, qword ptr [rsp + 0x8]
	jmp
		<L12>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Square, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square, void>::'lambda'(Bodies3D::Square const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Square, void>::'lambda'(Bodies3D::Square@Evaluation.CRTP.Square&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Square, void>::'lambda'()>>>>
<L10>:
	mov
		qword ptr [rax + r13], rcx
	mov
		byte ptr [rax + r13 + 0x40], 0x0
	vmovdqu
		ymmword ptr [rax + r13 + 0x10], ymm2
<L11>:
	mov
		rdi, r14
	inc
		r12
	vzeroupper
	call
		<CountedXoroshiro@Evaluation.Dependency.PseudoRandomSequence::operator++() &>
	add
		r13, 0x50
	cmp
		dword ptr [rsp + 0x570], ebx
	je
		<L16>
<L12>:
	vmovq
		xmm1, qword ptr <.LCPI0_4>
	vmovdqu64
		zmm0, zmmword ptr [rsp + 0x590]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x5f0]
	movzx
		eax, byte ptr [rsp + 0x580]
	movzx
		ecx, byte ptr [rsp + 0x610]
	movzx
		edx, byte ptr [rsp + 0x620]
	vpermt2b
		zmm0, zmm1, zmmword ptr [rsp + 0x5d0]
	vmovd
		xmm1, dword ptr [rsp + 0x600]
	vpunpcklbw
		xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	insertq
		xmm0, xmm1, 0x10, 0x30 # xmm0 = xmm0[0,1,2,3,4,5],xmm1[0,1],xmm0[u,u,u,u,u,u,u,u]
	vpmovzxbd
		ymm0, xmm0 # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
	vcvtdq2ps
		ymm2, ymm0
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
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Circle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle@Evaluation.CRTP.Circle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Circle, void>::'lambda'()>>>>
	jmp
		<L10>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipsoid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipsoid, void>::'lambda'()>>>>
	jmp
		<L14>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Triangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle@Evaluation.CRTP.Triangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Triangle, void>::'lambda'()>>>>
	jmp
		<L13>
	movzx
		eax, byte ptr [rsp + 0x6a0]
	movzx
		ecx, byte ptr [rsp + 0x650]
	movzx
		edx, byte ptr [rsp + 0x640]
	mov
		edi, 0x60
	vmovups
		ymmword ptr [rsp + 0x50], ymm2
	vcvtsi2ss
		xmm0, xmm15, eax
	lea
		rax, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Head, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Head, void>::'lambda'(Bodies3D::Head const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Head, void>::'lambda'()>>>>
	mov
		qword ptr [rbp + r13], rax
	mov
		byte ptr [rbp + r13 + 0x40], 0x1
	vmovss
		dword ptr [rsp + 0x10], xmm0
	vcvtsi2ss
		xmm0, xmm15, ecx
	movzx
		ecx, byte ptr [rsp + 0x630]
	vmovss
		dword ptr [rsp + 0x30], xmm0
	vcvtsi2ss
		xmm0, xmm15, edx
	vmovss
		dword ptr [rsp + 0x28], xmm0
	vcvtsi2ss
		xmm0, xmm15, ecx
	vmovss
		dword ptr [rsp + 0x3c], xmm0
	vzeroupper
	call
		<malloc$plt>
	vmovups
		ymm1, ymmword ptr [rsp + 0x50]
	vmovd
		xmm2, dword ptr <.LCPI0_5>
	vmovss
		xmm5, dword ptr [rsp + 0x3c]
	vmovss
		xmm4, dword ptr [rsp + 0x28]
	vmovss
		xmm3, dword ptr [rsp + 0x30]
	mov
		qword ptr [rbp + r13 + 0x10], rax
	vpermb
		zmm2, zmm2, zmmword ptr [rsp + 0x660]
	vmovups
		ymmword ptr [rax], ymm1
	vshufps
		xmm0, xmm1, xmm1, 0xff # xmm0 = xmm1[3,3,3,3]
	vmovd
		xmm1, dword ptr [rsp + 0x690]
	vmovss
		dword ptr [rax + 0x20], xmm5
	vmovss
		dword ptr [rax + 0x24], xmm4
	vmovss
		dword ptr [rax + 0x28], xmm3
	vmovss
		dword ptr [rax + 0x2c], xmm0
	insertq
		xmm2, xmm1, 0x8, 0x18 # xmm2 = xmm2[0,1,2],xmm1[0],xmm2[4,5,6,7,u,u,u,u,u,u,u,u]
	vpmovzxbd
		xmm1, xmm2 # xmm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero
	vcvtdq2ps
		xmm1, xmm1
	vmovdqu
		xmmword ptr [rax + 0x30], xmm1
	vmovss
		dword ptr [rax + 0x40], xmm5
	vmovss
		dword ptr [rax + 0x44], xmm4
	vmovss
		dword ptr [rax + 0x48], xmm3
	vmovss
		xmm3, dword ptr [rsp + 0x10]
	vpshufd
		xmm2, xmm1, 0xe9 # xmm2 = xmm1[1,2,2,3]
	vmovss
		dword ptr [rax + 0x4c], xmm0
	vmovss
		dword ptr [rax + 0x50], xmm3
	vmovq
		qword ptr [rax + 0x54], xmm2
	vextractps
		dword ptr [rax + 0x5c], xmm1, 0x3
	jmp
		<L11>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cylinder, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cylinder, void>::'lambda'(Bodies3D::Cylinder const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cylinder, void>::'lambda'()>>>>
	jmp
		<L15>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Rectangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Rectangle, void>::'lambda'()>>>>
	jmp
		<L13>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Pyramid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid, void>::'lambda'(Bodies3D::Pyramid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Pyramid, void>::'lambda'()>>>>
	jmp
		<L14>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipse, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse@Evaluation.CRTP.Ellipse&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipse, void>::'lambda'()>>>>
<L13>:
	mov
		qword ptr [rax + r13], rcx
	mov
		byte ptr [rax + r13 + 0x40], 0x0
	vmovdqu
		ymmword ptr [rax + r13 + 0x10], ymm2
	vmovss
		dword ptr [rax + r13 + 0x30], xmm0
	jmp
		<L11>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cube, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube, void>::'lambda'(Bodies3D::Cube const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cube, void>::'lambda'()>>>>
	jmp
		<L10>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cuboid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid, void>::'lambda'(Bodies3D::Cuboid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cuboid, void>::'lambda'()>>>>
<L14>:
	mov
		qword ptr [rax + r13], rcx
	mov
		byte ptr [rax + r13 + 0x40], 0x0
	vmovdqu
		ymmword ptr [rax + r13 + 0x10], ymm2
	vmovss
		dword ptr [rax + r13 + 0x30], xmm0
	vmovss
		dword ptr [rax + r13 + 0x34], xmm1
	jmp
		<L11>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cone, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cone, void>::'lambda'(Bodies3D::Cone const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cone, void>::'lambda'()>>>>
<L15>:
	mov
		qword ptr [rax + r13], rcx
	mov
		byte ptr [rax + r13 + 0x40], 0x0
	vmovdqu
		ymmword ptr [rax + r13 + 0x10], ymm2
	vmovss
		dword ptr [rax + r13 + 0x30], xmm1
	jmp
		<L11>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Sphere, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Sphere, void>::'lambda'(Bodies3D::Sphere const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere, void>::'lambda'()>>>>
	jmp
		<L10>
<L16>:
	shl
		r12, 0x4
	lea
		rcx, [r12 + 4*r12]
	mov
		rax, rcx
	shr
		rax, 0x4
	imul
		ebp, eax, 0xcccccccd
	test
		ebp, ebp
	je
		<L35>
	mov
		rbx, qword ptr [rsp + 0x8]
	vxorps
		xmm0, xmm0, xmm0
	mov
		qword ptr [rsp + 0x28], rcx
	vmovups
		zmmword ptr [rsp + 0x700], zmm0
	vmovups
		zmmword ptr [rsp + 0x6c0], zmm0
	jmp
		<L19>
	nop
<L17>:
	vmovss
		xmm0, dword ptr [rsp + 0x6c4]
	mov
		r14d, 0x1
	vmovss
		dword ptr [rsp + 0x6c8], xmm0
<L18>:
	mov
		eax, r14d
	lea
		rdx, [4*rax + 0x4]
	lea
		rdi, [rsp + 0x6c0]
	xor
		esi, esi
	vzeroupper
	call
		<memset$plt>
	mov
		rbx, r15
<L19>:
	blsi
		eax, ebp
	lea
		r15, [rax + 4*rax]
	shl
		r15, 0x4
	add
		r15, rbx
	test
		eax, eax
	je
		<L17>
	mov
		dword ptr [rsp + 0x10], ebp
	mov
		r12d, 0x1
	mov
		ebp, 0x1
	xor
		ecx, ecx
	mov
		qword ptr [rsp + 0x30], rax
	jmp
		<L21>
	nop
		word ptr cs:[rax + rax]
<L20>:
	mov
		ecx, 0xfffffffe
	lea
		edx, [r12 + 0x1]
	movsxd
		rax, r14d
	add
		rbx, 0x50
	mov
		ebp, r14d
	sub
		ecx, r12d
	lzcnt
		esi, edx
	vmovss
		dword ptr [rsp + 4*rax + 0x6c0], xmm0
	mov
		r12d, edx
	popcnt
		ecx, ecx
	sub
		ecx, esi
	cmp
		rbx, r15
	je
		<L31>
<L21>:
	mov
		rax, qword ptr [rbx]
	cmp
		byte ptr [rbx + 0x40], 0x0
	mov
		r14d, ecx
	mov
		rax, qword ptr [rax]
	je
		<L22>
	mov
		rdi, qword ptr [rbx + 0x10]
	jmp
		<L23>
	nop
		dword ptr [rax + rax]
<L22>:
	lea
		rdi, [rbx + 0x10]
<L23>:
	vzeroupper
	call
		rax
	mov
		edx, r14d
	sub
		edx, ebp
	jl
		<L20>
	movsxd
		rax, ebp
	cmp
		edx, 0x7
	jb
		<L29>
	lea
		rcx, [rdx + 0x1]
	cmp
		edx, 0x3f
	jae
		<L24>
	xor
		edx, edx
	jmp
		<L26>
<L24>:
	movabs
		rsi, 0x1ffffffc0
	lea
		r8, [rsp + 0x780]
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
	vpxor
		xmm2, xmm2, xmm2
	vxorps
		xmm3, xmm3, xmm3
	and
		rdx, rsi
	lea
		rsi, [r8 + 4*rax]
<L25>:
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
		<L25>
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
		<L20>
	test
		cl, 0x38
	je
		<L28>
<L26>:
	movabs
		rsi, 0x1ffffffc0
	lea
		rdi, [rsp + 4*rax + 0x6c0]
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
<L27>:
	vaddps
		ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
	add
		rdx, 0x8
	cmp
		rsi, rdx
	jne
		<L27>
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
		<L20>
	add
		rax, rsi
	jmp
		<L29>
<L28>:
	add
		rax, rdx
	nop
		word ptr [rax + rax]
<L29>:
	mov
		ecx, r14d
	sub
		ecx, eax
	lea
		rax, [rsp + 4*rax + 0x6c0]
	xor
		edx, edx
	inc
		ecx
	nop
		word ptr cs:[rax + rax]
<L30>:
	vaddss
		xmm0, xmm0, dword ptr [rax + 4*rdx]
	inc
		rdx
	cmp
		ecx, edx
	jne
		<L30>
	jmp
		<L20>
	nop
		word ptr cs:[rax + rax]
<L31>:
	mov
		ebp, dword ptr [rsp + 0x10]
	sub
		ebp, dword ptr [rsp + 0x30]
	je
		<L34>
	vmovss
		dword ptr [rsp + 4*rax + 0x6c4], xmm0
	mov
		rbx, r15
	test
		r14d, r14d
	jns
		<L18>
	jmp
		<L19>
<L32>:
	vucomiss
		xmm0, dword ptr <.LCPI0_2>
	je
		<L8>
<L33>:
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
<L34>:
	mov
		rcx, qword ptr [rsp + 0x28]
	test
		rcx, rcx
	jne
		<L36>
	jmp
		<L41>
<L35>:
	vxorps
		xmm0, xmm0, xmm0
	test
		rcx, rcx
	je
		<L41>
<L36>:
	mov
		rbx, qword ptr [rsp + 0x8]
	vmovaps
		xmmword ptr [rsp + 0x10], xmm0
	jmp
		<L39>
	nop
		word ptr cs:[rax + rax]
<L37>:
	mov
		rax, qword ptr [rbx]
	mov
		rdi, r14
	vzeroupper
	call
		qword ptr [rax + 0x8]
<L38>:
	add
		rbx, 0x50
	add
		r13, -0x50
	je
		<L40>
<L39>:
	cmp
		byte ptr [rbx + 0x40], 0x1
	lea
		r14, [rbx + 0x10]
	jne
		<L37>
	mov
		rdi, qword ptr [r14]
	test
		rdi, rdi
	je
		<L38>
	mov
		rax, qword ptr [rbx]
	vzeroupper
	call
		qword ptr [rax + 0x8]
	mov
		rdi, qword ptr [r14]
	call
		<free$plt>
	jmp
		<L38>
<L40>:
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
<L41>:
	mov
		r15, qword ptr [rsp + 0x48]
	mov
		r12, qword ptr [rsp + 0x40]
	mov
		r13, qword ptr [rsp + 0x8]
	test
		r13, r13
	jne
		<L6>
	jmp
		<L7>
<L42>:
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Head, void>::'lambda'(Bodies3D::Head const&), float (Bodies3D::Head const&)>, float (dyno::T const&), float (Bodies3D::Head const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm1, xmm0, xmm0
	vmulss
		xmm1, xmm1, dword ptr <.LCPI6_0>
	vmulss
		xmm0, xmm1, xmm0
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&), void (Bodies3D::Head@Evaluation.CRTP.Head&)>, void (dyno::T&), void (Bodies3D::Head@Evaluation.CRTP.Head&)>::apply(void*)>:
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Head, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
	mov
		eax, 0x60
	mov
		edx, 0x4
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid const&), float (Bodies3D::Ellipsoid const&)>, float (dyno::T const&), float (Bodies3D::Ellipsoid const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI6_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x24]
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipsoid, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
	mov
		eax, 0x28
	mov
		edx, 0x4
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cone, void>::'lambda'(Bodies3D::Cone const&), float (Bodies3D::Cone const&)>, float (dyno::T const&), float (Bodies3D::Cone const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI9_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Cone, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
	mov
		eax, 0x24
	mov
		edx, 0x4
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cylinder, void>::'lambda'(Bodies3D::Cylinder const&), float (Bodies3D::Cylinder const&)>, float (dyno::T const&), float (Bodies3D::Cylinder const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI39_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
	mov
		eax, 0x20
	mov
		edx, 0x4
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid, void>::'lambda'(Bodies3D::Pyramid const&), float (Bodies3D::Pyramid const&)>, float (dyno::T const&), float (Bodies3D::Pyramid const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI18_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x24]
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid, void>::'lambda'(Bodies3D::Cuboid const&), float (Bodies3D::Cuboid const&)>, float (dyno::T const&), float (Bodies3D::Cuboid const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x24]
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube, void>::'lambda'(Bodies3D::Cube const&), float (Bodies3D::Cube const&)>, float (dyno::T const&), float (Bodies3D::Cube const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm1, xmm0, xmm0
	vmulss
		xmm0, xmm1, xmm0
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle const&), float (Bodies3D::Triangle const&)>, float (dyno::T const&), float (Bodies3D::Triangle const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI27_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square, void>::'lambda'(Bodies3D::Square const&), float (Bodies3D::Square const&)>, float (dyno::T const&), float (Bodies3D::Square const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle const&), float (Bodies3D::Rectangle const&)>, float (dyno::T const&), float (Bodies3D::Rectangle const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x1c]
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse const&), float (Bodies3D::Ellipse const&)>, float (dyno::T const&), float (Bodies3D::Ellipse const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI39_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle const&), float (Bodies3D::Circle const&)>, float (dyno::T const&), float (Bodies3D::Circle const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI39_0>
	ret
