
build/Evaluation/Speed/bin/Visitor:	file format elf64-x86-64

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

<_ZdlPvm$plt>:
	mov
		r11d, 0x0

<_ZdlPvm@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x18>

<_ZnwmRKSt9nothrow_t$plt>:
	mov
		r11d, 0x1

<_ZnwmRKSt9nothrow_t@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x20>

<__cxa_throw$plt>:
	mov
		r11d, 0x2

<__cxa_throw@plt>:
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

<memset$plt>:
	mov
		r11d, 0x6

<memset@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x48>

<memcpy$plt>:
	mov
		r11d, 0x7

<memcpy@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x50>

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
		rsp, 0xd58
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
		rdi, [rax + 2*rax]
	call
		<_ZnamRKSt9nothrow_t$plt>
	lea
		rsi, <PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence::begin() const::vStart>
	lea
		rdi, [rsp + 0x700]
	mov
		edx, 0x650
	mov
		qword ptr [rsp + 0x8], rax
	call
		<memcpy$plt>
	test
		r15d, r15d
	je
		<L5>
	lea
		r14, [rsp + 0x700]
	mov
		ebp, r15d
	nop
		word ptr cs:[rax + rax]
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
		rdi, [rsp + 0xb0]
	lea
		rsi, [rsp + 0x700]
	mov
		edx, 0x650
	call
		<memcpy$plt>
	cmp
		dword ptr [rsp + 0x5b0], ebx
	jne
		<L6>
	mov
		r14, qword ptr [rsp + 0x8]
	vpxor
		xmm0, xmm0, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x10], xmm0
	test
		r14, r14
	jne
		<L44>
	jmp
		<L45>
<L6>:
	mov
		r14, qword ptr [rsp + 0x8]
	mov
		qword ptr [rsp + 0x30], r12
	mov
		qword ptr [rsp + 0x38], r15
	lea
		r12, <memset+0xe10>
	lea
		r15, [rsp + 0xb0]
	xor
		ebp, ebp
	xor
		r13d, r13d
	jmp
		<L9>
	lea
		rcx, [r13 + 2*r13]
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	vmovss
		dword ptr [r14 + rbp + 0x20], xmm0
	vmovss
		dword ptr [r14 + rbp + 0x24], xmm1
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid>(void*)>
	nop
		word ptr cs:[rax + rax]
<L7>:
	shl
		rcx, 0x4
	add
		rcx, r14
<L8>:
	mov
		rdi, r15
	mov
		qword ptr [rcx + 0x28], rax
	inc
		r13
	vzeroupper
	call
		<CountedXoroshiro@Evaluation.Dependency.PseudoRandomSequence::operator++() &>
	add
		rbp, 0x30
	cmp
		dword ptr [rsp + 0x5b0], ebx
	je
		<L11>
<L9>:
	vmovq
		xmm1, qword ptr <.LCPI0_9>
	vmovdqu64
		zmm0, zmmword ptr [rsp + 0x5d0]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x630]
	movzx
		eax, byte ptr [rsp + 0x5c0]
	movzx
		ecx, byte ptr [rsp + 0x650]
	movzx
		edx, byte ptr [rsp + 0x660]
	vpermt2b
		zmm0, zmm1, zmmword ptr [rsp + 0x610]
	vmovd
		xmm1, dword ptr [rsp + 0x640]
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
		rax, dword ptr [r12 + 4*rax]
	add
		rax, r12
	jmp
		rax
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	lea
		rcx, [r14 + rbp]
	mov
		qword ptr [r14 + rbp + 0x20], 0x0
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Circle>(void*)>
	jmp
		<L8>
	lea
		rcx, [r13 + 2*r13]
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	vmovss
		dword ptr [r14 + rbp + 0x20], xmm0
	mov
		dword ptr [r14 + rbp + 0x24], 0x0
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Triangle>(void*)>
	jmp
		<L7>
	vmovss
		xmm0, dword ptr [rsp + 0x6d0]
	movzx
		eax, byte ptr [rsp + 0x6e0]
	mov
		rsi, qword ptr <_ZSt7nothrow$got>
	mov
		qword ptr [rsp + 0x10], rbp
	movzx
		ebp, byte ptr [rsp + 0x670]
	movzx
		r15d, byte ptr [rsp + 0x680]
	movzx
		r14d, byte ptr [rsp + 0x690]
	mov
		edi, 0x60
	vmovups
		ymmword ptr [rsp + 0x50], ymm2
	mov
		dword ptr [rsp + 0x28], eax
	vmovaps
		xmmword ptr [rsp + 0x40], xmm0
	vmovd
		xmm0, dword ptr <.LCPI0_10>
	vpermb
		zmm0, zmm0, zmmword ptr [rsp + 0x6a0]
	vmovdqu64
		zmmword ptr [rsp + 0x70], zmm0
	vzeroupper
	call
		<_ZnwmRKSt9nothrow_t$plt>
	test
		rax, rax
	je
		<L10>
	vmovdqu64
		zmm3, zmmword ptr [rsp + 0x70]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x40]
	vmovups
		ymm6, ymmword ptr [rsp + 0x50]
	insertq
		xmm3, xmm0, 0x8, 0x18 # xmm3 = xmm3[0,1,2],xmm0[0],xmm3[4,5,6,7,u,u,u,u,u,u,u,u]
	vcvtsi2ss
		xmm0, xmm15, ebp
	vcvtsi2ss
		xmm4, xmm15, dword ptr [rsp + 0x28]
	vshufps
		xmm5, xmm6, xmm6, 0xff # xmm5 = xmm6[3,3,3,3]
	vmovups
		ymmword ptr [rax], ymm6
	vpmovzxbd
		xmm3, xmm3 # xmm3 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero
	vcvtsi2ss
		xmm1, xmm15, r15d
	vcvtsi2ss
		xmm2, xmm15, r14d
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
	vmovdqu
		xmmword ptr [rax + 0x30], xmm3
	vmovss
		dword ptr [rax + 0x40], xmm0
	vpshufd
		xmm0, xmm3, 0xe9 # xmm0 = xmm3[1,2,2,3]
	vmovss
		dword ptr [rax + 0x44], xmm1
	vmovss
		dword ptr [rax + 0x48], xmm2
	vmovss
		dword ptr [rax + 0x4c], xmm5
	vmovss
		dword ptr [rax + 0x50], xmm4
	vmovq
		qword ptr [rax + 0x54], xmm0
	vextractps
		dword ptr [rax + 0x5c], xmm3, 0x3
<L10>:
	mov
		r14, qword ptr [rsp + 0x8]
	mov
		rbp, qword ptr [rsp + 0x10]
	lea
		rcx, [r13 + 2*r13]
	lea
		r15, [rsp + 0xb0]
	vpxor
		xmm0, xmm0, xmm0
	shl
		rcx, 0x4
	mov
		qword ptr [r14 + rbp], rax
	add
		rcx, r14
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Head>(void*)>
	vmovdqu
		ymmword ptr [r14 + rbp + 0x8], ymm0
	jmp
		<L8>
	lea
		rcx, [r13 + 2*r13]
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	vmovss
		dword ptr [r14 + rbp + 0x20], xmm1
	mov
		dword ptr [r14 + rbp + 0x24], 0x0
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cylinder>(void*)>
	jmp
		<L7>
	lea
		rcx, [r13 + 2*r13]
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	vmovss
		dword ptr [r14 + rbp + 0x20], xmm0
	mov
		dword ptr [r14 + rbp + 0x24], 0x0
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Rectangle>(void*)>
	jmp
		<L7>
	lea
		rcx, [r13 + 2*r13]
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	mov
		qword ptr [r14 + rbp + 0x20], 0x0
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Square>(void*)>
	jmp
		<L7>
	lea
		rcx, [r13 + 2*r13]
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	vmovss
		dword ptr [r14 + rbp + 0x20], xmm0
	vmovss
		dword ptr [r14 + rbp + 0x24], xmm1
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Pyramid>(void*)>
	jmp
		<L7>
	lea
		rcx, [r13 + 2*r13]
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	vmovss
		dword ptr [r14 + rbp + 0x20], xmm0
	mov
		dword ptr [r14 + rbp + 0x24], 0x0
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipse>(void*)>
	jmp
		<L7>
	lea
		rcx, [r13 + 2*r13]
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	mov
		qword ptr [r14 + rbp + 0x20], 0x0
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cube>(void*)>
	jmp
		<L7>
	lea
		rcx, [r13 + 2*r13]
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	vmovss
		dword ptr [r14 + rbp + 0x20], xmm0
	vmovss
		dword ptr [r14 + rbp + 0x24], xmm1
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cuboid>(void*)>
	jmp
		<L7>
	lea
		rcx, [r13 + 2*r13]
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	vmovss
		dword ptr [r14 + rbp + 0x20], xmm1
	mov
		dword ptr [r14 + rbp + 0x24], 0x0
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cone>(void*)>
	jmp
		<L7>
	lea
		rcx, [r13 + 2*r13]
	vmovups
		ymmword ptr [r14 + rbp], ymm2
	mov
		qword ptr [r14 + rbp + 0x20], 0x0
	lea
		rax, <Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Sphere>(void*)>
	jmp
		<L7>
<L11>:
	shl
		r13, 0x4
	lea
		rcx, [r13 + 2*r13]
	mov
		rax, rcx
	shr
		rax, 0x4
	imul
		r13d, eax, 0xaaaaaaab
	test
		r13d, r13d
	je
		<L42>
	lea
		r12, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Circle>(void*)>
	vpxor
		xmm0, xmm0, xmm0
	mov
		r15, r14
	mov
		qword ptr [rsp + 0x70], rcx
	vmovdqu64
		zmmword ptr [rsp + 0x740], zmm0
	vmovdqu64
		zmmword ptr [rsp + 0x700], zmm0
	jmp
		<L14>
	nop
		word ptr cs:[rax + rax]
<L12>:
	vmovss
		xmm0, dword ptr [rsp + 0x704]
	mov
		r14d, 0x1
	vmovss
		dword ptr [rsp + 0x708], xmm0
<L13>:
	mov
		eax, r14d
	lea
		rdx, [4*rax + 0x4]
	lea
		rdi, [rsp + 0x700]
	xor
		esi, esi
	vzeroupper
	call
		<memset$plt>
	mov
		r15, rbx
<L14>:
	blsi
		eax, r13d
	lea
		rbx, [rax + 2*rax]
	shl
		rbx, 0x4
	add
		rbx, r15
	test
		eax, eax
	je
		<L12>
	mov
		dword ptr [rsp + 0x50], r13d
	mov
		qword ptr [rsp + 0x10], rbp
	mov
		r13d, 0x1
	mov
		ebp, 0x1
	xor
		ecx, ecx
	mov
		qword ptr [rsp + 0x28], rax
	jmp
		<L16>
	nop
		word ptr [rax + rax]
<L15>:
	mov
		ecx, 0xfffffffe
	lea
		edx, [r13 + 0x1]
	movsxd
		rax, r14d
	add
		r15, 0x30
	mov
		ebp, r14d
	sub
		ecx, r13d
	lzcnt
		esi, edx
	vmovss
		dword ptr [rsp + 4*rax + 0x700], xmm1
	mov
		r13d, edx
	popcnt
		ecx, ecx
	sub
		ecx, esi
	cmp
		r15, rbx
	je
		<L40>
<L16>:
	mov
		rdi, r15
	mov
		r14d, ecx
	vzeroupper
	call
		qword ptr [r15 + 0x28]
	cmp
		rdx, r12
	je
		<L18>
	lea
		rcx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipse>(void*)>
	cmp
		rdx, rcx
	je
		<L19>
	lea
		rcx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Rectangle>(void*)>
	cmp
		rdx, rcx
	je
		<L21>
	lea
		rcx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Square>(void*)>
	cmp
		rdx, rcx
	je
		<L22>
	lea
		rcx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Triangle>(void*)>
	cmp
		rdx, rcx
	je
		<L23>
	lea
		rcx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cube>(void*)>
	cmp
		rdx, rcx
	je
		<L24>
	lea
		rcx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cuboid>(void*)>
	cmp
		rdx, rcx
	je
		<L26>
	lea
		rcx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Pyramid>(void*)>
	cmp
		rdx, rcx
	je
		<L27>
	lea
		rcx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Sphere>(void*)>
	cmp
		rdx, rcx
	je
		<L17>
	lea
		rcx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cylinder>(void*)>
	cmp
		rdx, rcx
	je
		<L29>
	lea
		rcx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cone>(void*)>
	cmp
		rdx, rcx
	je
		<L30>
	lea
		rcx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid>(void*)>
	cmp
		rdx, rcx
	je
		<L39>
<L17>:
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm1, xmm0, xmm0
	vmulss
		xmm1, xmm1, dword ptr <.LCPI0_2>
	jmp
		<L25>
	nop
		dword ptr [rax]
<L18>:
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm1, xmm0, dword ptr <.LCPI0_4>
	mov
		edx, r14d
	sub
		edx, ebp
	jge
		<L31>
	jmp
		<L15>
	nop
		word ptr cs:[rax + rax]
<L19>:
	vmovss
		xmm0, dword ptr <.LCPI0_4>
<L20>:
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm1, xmm0, dword ptr [rax + 0x20]
	mov
		edx, r14d
	sub
		edx, ebp
	jl
		<L15>
	jmp
		<L31>
<L21>:
	vmovss
		xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm1, xmm0, dword ptr [rax + 0x1c]
	mov
		edx, r14d
	sub
		edx, ebp
	jl
		<L15>
	jmp
		<L31>
<L22>:
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm1, xmm0, xmm0
	mov
		edx, r14d
	sub
		edx, ebp
	jl
		<L15>
	jmp
		<L31>
<L23>:
	vmovss
		xmm0, dword ptr <.LCPI0_6>
	jmp
		<L20>
<L24>:
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm1, xmm0, xmm0
<L25>:
	vmulss
		xmm1, xmm1, xmm0
	mov
		edx, r14d
	sub
		edx, ebp
	jl
		<L15>
	jmp
		<L31>
<L26>:
	vmovss
		xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm1, xmm0, dword ptr [rax + 0x24]
	mov
		edx, r14d
	sub
		edx, ebp
	jl
		<L15>
	jmp
		<L31>
<L27>:
	vmovss
		xmm0, dword ptr <.LCPI0_5>
<L28>:
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm1, xmm0, dword ptr [rax + 0x24]
	mov
		edx, r14d
	sub
		edx, ebp
	jl
		<L15>
	jmp
		<L31>
<L29>:
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI0_4>
	vmulss
		xmm1, xmm0, dword ptr [rax + 0x20]
	mov
		edx, r14d
	sub
		edx, ebp
	jl
		<L15>
	jmp
		<L31>
<L30>:
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI0_3>
	vmulss
		xmm1, xmm0, dword ptr [rax + 0x20]
	mov
		edx, r14d
	sub
		edx, ebp
	jl
		<L15>
<L31>:
	movsxd
		rax, ebp
	cmp
		edx, 0x7
	jb
		<L37>
	lea
		rcx, [rdx + 0x1]
	cmp
		edx, 0x3f
	jae
		<L32>
	xor
		edx, edx
	jmp
		<L34>
<L32>:
	movabs
		rsi, 0x1ffffffc0
	lea
		r8, [rsp + 0x7c0]
	mov
		rdx, rcx
	vxorps
		xmm0, xmm0, xmm0
	vmovss
		xmm0, xmm0, xmm1 # xmm0 = xmm1[0],xmm0[1,2,3]
	vxorps
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
<L33>:
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
		<L33>
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
		xmm1, xmm0, xmm1
	cmp
		rcx, rdx
	je
		<L15>
	test
		cl, 0x38
	je
		<L36>
<L34>:
	movabs
		rsi, 0x1ffffffc0
	lea
		rdi, [rsp + 4*rax + 0x700]
	vxorps
		xmm0, xmm0, xmm0
	vmovss
		xmm0, xmm0, xmm1 # xmm0 = xmm1[0],xmm0[1,2,3]
	add
		rsi, 0x38
	and
		rsi, rcx
	nop
		word ptr cs:[rax + rax]
<L35>:
	vaddps
		ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
	add
		rdx, 0x8
	cmp
		rsi, rdx
	jne
		<L35>
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
		xmm1, xmm0, xmm1
	cmp
		rcx, rsi
	je
		<L15>
	add
		rax, rsi
	jmp
		<L37>
<L36>:
	add
		rax, rdx
	nop
		word ptr [rax + rax]
<L37>:
	mov
		ecx, r14d
	sub
		ecx, eax
	lea
		rax, [rsp + 4*rax + 0x700]
	xor
		edx, edx
	inc
		ecx
	nop
		word ptr cs:[rax + rax]
<L38>:
	vaddss
		xmm1, xmm1, dword ptr [rax + 4*rdx]
	inc
		rdx
	cmp
		ecx, edx
	jne
		<L38>
	jmp
		<L15>
<L39>:
	vmovss
		xmm0, dword ptr <.LCPI0_2>
	jmp
		<L28>
	nop
<L40>:
	mov
		r13d, dword ptr [rsp + 0x50]
	mov
		rbp, qword ptr [rsp + 0x10]
	sub
		r13d, dword ptr [rsp + 0x28]
	je
		<L41>
	vmovss
		dword ptr [rsp + 4*rax + 0x704], xmm1
	mov
		r15, rbx
	test
		r14d, r14d
	jns
		<L13>
	jmp
		<L14>
<L41>:
	mov
		r15, qword ptr [rsp + 0x38]
	mov
		r12, qword ptr [rsp + 0x30]
	mov
		r14, qword ptr [rsp + 0x8]
	mov
		rcx, qword ptr [rsp + 0x70]
	vmovaps
		xmmword ptr [rsp + 0x10], xmm1
	test
		rcx, rcx
	jne
		<L43>
	jmp
		<L44>
<L42>:
	mov
		r15, qword ptr [rsp + 0x38]
	mov
		r12, qword ptr [rsp + 0x30]
	vxorps
		xmm1, xmm1, xmm1
	vmovaps
		xmmword ptr [rsp + 0x10], xmm1
	test
		rcx, rcx
	je
		<L44>
	nop
		word ptr cs:[rax + rax]
<L43>:
	mov
		rdi, r14
	vzeroupper
	call
		qword ptr [r14 + 0x28]
	mov
		rdi, rax
	call
		rdx
	add
		r14, 0x30
	add
		rbp, -0x30
	jne
		<L43>
	mov
		r14, qword ptr [rsp + 0x8]
<L44>:
	mov
		rdi, r14
	vzeroupper
	call
		<_ZdaPv$plt>
<L45>:
	test
		r15d, r15d
	jne
		<L49>
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
	cmp
		r12d, 0x30d4
	je
		<L47>
	cmp
		r12d, 0x186a
	jne
		<L46>
	vucomiss
		xmm0, dword ptr <.LCPI0_8>
	jne
		<L48>
<L46>:
	xor
		eax, eax
	add
		rsp, 0xd58
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
	ret
<L47>:
	vucomiss
		xmm0, dword ptr <.LCPI0_7>
	je
		<L46>
<L48>:
	mov
		edi, 0x4
	vmovaps
		xmmword ptr [rsp + 0x10], xmm0
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
<L49>:
	mov
		edi, 0x4
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

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Head>(void*)>:
	mov
		rax, qword ptr [rdi]
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Head>(void*)>
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipsoid>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid>(void*)>
	mov
		rax, rdi
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cone>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cone>(void*)>
	mov
		rax, rdi
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cylinder>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cylinder>(void*)>
	mov
		rax, rdi
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Sphere>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Sphere>(void*)>
	mov
		rax, rdi
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Pyramid>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Pyramid>(void*)>
	mov
		rax, rdi
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cuboid>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cuboid>(void*)>
	mov
		rax, rdi
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Cube>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cube>(void*)>
	mov
		rax, rdi
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Triangle>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Triangle>(void*)>
	mov
		rax, rdi
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Square>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Square>(void*)>
	mov
		rax, rdi
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Rectangle>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Rectangle>(void*)>
	mov
		rax, rdi
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Ellipse>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipse>(void*)>
	mov
		rax, rdi
	ret

<Visitor::ObjectReference Visitor::ObjectValue<40ul, (std::align_val_t)8>::Access<Bodies3D::Circle>(void*)>:
	lea
		rdx, <std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Circle>(void*)>
	mov
		rax, rdi
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Circle>(void*)>:
	lea
		rax, <memset+0x5610>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipse>(void*)>:
	lea
		rax, <memset+0x5628>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Rectangle>(void*)>:
	lea
		rax, <memset+0x5640>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Square>(void*)>:
	lea
		rax, <memset+0x5658>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Triangle>(void*)>:
	lea
		rax, <memset+0x5670>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cube>(void*)>:
	lea
		rax, <memset+0x5688>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cuboid>(void*)>:
	lea
		rax, <memset+0x56a0>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Pyramid>(void*)>:
	lea
		rax, <memset+0x56b8>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Sphere>(void*)>:
	lea
		rax, <memset+0x56d0>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cylinder>(void*)>:
	lea
		rax, <memset+0x56e8>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Cone>(void*)>:
	lea
		rax, <memset+0x5700>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Ellipsoid>(void*)>:
	lea
		rax, <memset+0x5718>
	ret

<std::source_location Visitor::ObjectValue<40ul, (std::align_val_t)8>::Delete<Bodies3D::Head>(void*)>:
	test
		rdi, rdi
	je
		<L0>
	push
		rax
	mov
		esi, 0x60
	call
		<_ZdlPvm$plt>
	add
		rsp, 0x8
<L0>:
	lea
		rax, <memset+0x5730>
	ret
