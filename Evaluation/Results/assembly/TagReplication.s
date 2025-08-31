
build/Evaluation/Speed/bin/TagReplication:	file format elf64-x86-64

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

<__cxa_throw$plt>:
	mov
		r11d, 0x0

<__cxa_throw@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x18>

<__cxa_allocate_exception$plt>:
	mov
		r11d, 0x1

<__cxa_allocate_exception@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x20>

<_ZdaPv$plt>:
	mov
		r11d, 0x2

<_ZdaPv@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x28>

<_ZnamRKSt9nothrow_t$plt>:
	mov
		r11d, 0x3

<_ZnamRKSt9nothrow_t@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x30>

<memset$plt>:
	mov
		r11d, 0x4

<memset@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x38>

<memcpy$plt>:
	mov
		r11d, 0x5

<memcpy@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x40>

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
		r12d, byte ptr [rcx]
	movzx
		edx, byte ptr [rcx + 0x1]
	add
		r12d, -0x30
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
		esi, [r12 + 4*r12]
	movsx
		edx, dl
	lea
		r12d, [rdx + 2*rsi - 0x30]
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
		ebp, byte ptr [rax]
	movzx
		ecx, byte ptr [rax + 0x1]
	add
		ebp, -0x30
	test
		cl, cl
	je
		<L3>
	add
		rax, 0x2
	nop
		dword ptr [rax + rax]
<L2>:
	lea
		edx, [rbp + 4*rbp]
	movsx
		ecx, cl
	lea
		ebp, [rcx + 2*rdx - 0x30]
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
		qword ptr [rsp + 0x20], rbp
	shl
		ebp, 0x4
	mov
		rsi, qword ptr <_ZSt7nothrow$got>
	lea
		rax, [rbp + 4*rbp]
	mov
		qword ptr [rsp + 0x10], rbp
	lea
		rdi, [rbp + 8*rax]
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
		r12d, r12d
	je
		<L5>
	lea
		r14, [rsp + 0x700]
	mov
		ebx, r12d
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
		rdi, [rsp + 0xb0]
	lea
		rsi, [rsp + 0x700]
	mov
		edx, 0x650
	call
		<memcpy$plt>
	mov
		rax, qword ptr [rsp + 0x10]
	mov
		qword ptr [rsp + 0x28], r12
	cmp
		dword ptr [rsp + 0x5b0], eax
	lea
		rax, [8*rax]
	lea
		rcx, [rax + 4*rax]
	jne
		<L6>
	xor
		r15d, r15d
	jmp
		<L11>
<L6>:
	mov
		rax, qword ptr [rsp + 0x8]
	mov
		rbp, qword ptr <_ZSt7nothrow$got>
	lea
		r12, <memset+0x830>
	lea
		r14, [rsp + 0xb0]
	mov
		qword ptr [rsp + 0x18], rcx
	xor
		r15d, r15d
	lea
		rbx, [rax + rcx]
	jmp
		<L8>
	nop
		word ptr cs:[rax + rax]
	mov
		rdx, qword ptr [rsp + 0x8]
	mov
		ecx, r15d
	lea
		rax, [rcx + 4*rcx]
	vmovups
		ymmword ptr [rdx + 8*rax], ymm2
	vmovss
		dword ptr [rdx + 8*rax + 0x20], xmm0
<L7>:
	mov
		rdi, r14
	mov
		byte ptr [rbx + rcx], r13b
	inc
		r15d
	vzeroupper
	call
		<CountedXoroshiro@Evaluation.Dependency.PseudoRandomSequence::operator++() &>
	mov
		rax, qword ptr [rsp + 0x10]
	cmp
		dword ptr [rsp + 0x5b0], eax
	je
		<L10>
<L8>:
	vmovd
		xmm1, dword ptr [rsp + 0x640]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x630]
	vmovdqu64
		zmm0, zmmword ptr [rsp + 0x5d0]
	movzx
		r13d, byte ptr [rsp + 0x5c0]
	movzx
		eax, byte ptr [rsp + 0x650]
	movzx
		ecx, byte ptr [rsp + 0x660]
	vpunpcklbw
		xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	vmovq
		xmm2, qword ptr <.LCPI0_8>
	vpermt2b
		zmm0, zmm2, zmmword ptr [rsp + 0x610]
	insertq
		xmm0, xmm1, 0x10, 0x30 # xmm0 = xmm0[0,1,2,3,4,5],xmm1[0,1],xmm0[u,u,u,u,u,u,u,u]
	vpmovzxbd
		ymm0, xmm0 # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
	vcvtdq2ps
		ymm2, ymm0
	vcvtsi2ss
		xmm0, xmm15, eax
	imul
		eax, r13d, 0x4f
	shr
		eax, 0xa
	vcvtsi2ss
		xmm1, xmm15, ecx
	lea
		ecx, [rax + 2*rax]
	lea
		eax, [rax + 4*rcx]
	sub
		r13b, al
	movzx
		eax, r13b
	movsxd
		rax, dword ptr [r12 + 4*rax]
	add
		rax, r12
	jmp
		rax
	mov
		rdx, qword ptr [rsp + 0x8]
	mov
		ecx, r15d
	lea
		rax, [rcx + 4*rcx]
	vmovups
		ymmword ptr [rdx + 8*rax], ymm2
	jmp
		<L7>
	nop
		word ptr cs:[rax + rax]
	mov
		rdx, qword ptr [rsp + 0x8]
	mov
		ecx, r15d
	lea
		rax, [rcx + 4*rcx]
	vmovups
		ymmword ptr [rdx + 8*rax], ymm2
	vmovss
		dword ptr [rdx + 8*rax + 0x20], xmm0
	vmovss
		dword ptr [rdx + 8*rax + 0x24], xmm1
	jmp
		<L7>
	mov
		rdx, qword ptr [rsp + 0x8]
	mov
		ecx, r15d
	lea
		rax, [rcx + 4*rcx]
	vmovups
		ymmword ptr [rdx + 8*rax], ymm2
	vmovss
		dword ptr [rdx + 8*rax + 0x20], xmm1
	jmp
		<L7>
	vmovss
		xmm0, dword ptr [rsp + 0x6e0]
	vmovdqu64
		zmm1, zmmword ptr [rsp + 0x670]
	vmovups
		ymmword ptr [rsp + 0x50], ymm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x6d0]
	mov
		edi, 0x20
	mov
		rsi, rbp
	vmovaps
		xmmword ptr [rsp + 0x40], xmm0
	vmovq
		xmm0, qword ptr <.LCPI0_8>
	vmovaps
		xmmword ptr [rsp + 0x30], xmm2
	vpermt2b
		zmm1, zmm0, zmmword ptr [rsp + 0x6b0]
	vmovdqu64
		zmmword ptr [rsp + 0x70], zmm1
	vzeroupper
	call
		<_ZnamRKSt9nothrow_t$plt>
	test
		rax, rax
	je
		<L9>
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x30]
	vmovdqu64
		zmm1, zmmword ptr [rsp + 0x70]
	vpunpcklbw
		xmm0, xmm0, xmmword ptr [rsp + 0x40] # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3],xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	insertq
		xmm1, xmm0, 0x10, 0x30 # xmm1 = xmm1[0,1,2,3,4,5],xmm0[0,1],xmm1[u,u,u,u,u,u,u,u]
	vpmovzxbd
		ymm0, xmm1 # ymm0 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
	vcvtdq2ps
		ymm0, ymm0
	vmovdqu
		ymmword ptr [rax], ymm0
<L9>:
	vmovups
		ymm0, ymmword ptr [rsp + 0x50]
	mov
		rsi, qword ptr [rsp + 0x8]
	mov
		ecx, r15d
	lea
		rdx, [rcx + 4*rcx]
	mov
		qword ptr [rsi + 8*rdx], rax
	vmovups
		ymmword ptr [rsi + 8*rdx + 0x8], ymm0
	jmp
		<L7>
<L10>:
	mov
		r12, qword ptr [rsp + 0x28]
	mov
		rcx, qword ptr [rsp + 0x18]
<L11>:
	mov
		rbp, qword ptr [rsp + 0x8]
	add
		rcx, rbp
	cmp
		dword ptr [rsp + 0x20], 0x0
	mov
		qword ptr [rsp + 0x18], rcx
	je
		<L35>
	movabs
		r13, 0x1ffffffc0
	mov
		edx, 0x80
	lea
		rdi, [rsp + 0x700]
	lea
		rbx, <memset+0x864>
	mov
		dword ptr [rsp + 0x70], r15d
	mov
		r12, rbp
	mov
		r14, rcx
<L12>:
	xor
		esi, esi
	vzeroupper
	call
		<memset$plt>
	vmovss
		xmm4, dword ptr <.LCPI0_3>
	vmovss
		xmm6, dword ptr <.LCPI0_5>
	vmovss
		xmm7, dword ptr <.LCPI0_4>
	vmovss
		xmm8, dword ptr <.LCPI0_1>
	vmovss
		xmm9, dword ptr <.LCPI0_2>
	mov
		rdi, qword ptr [rsp + 0x10]
	mov
		rax, r12
	mov
		rcx, r14
	vxorps
		xmm5, xmm5, xmm5
	nop
		word ptr [rax + rax]
<L13>:
	blsi
		edx, edi
	lea
		rsi, [rdx + 4*rdx]
	lea
		r14, [rcx + rdx]
	lea
		r12, [rax + 8*rsi]
	test
		edx, edx
	je
		<L29>
	mov
		qword ptr [rsp + 0x10], rdi
	mov
		edi, 0x1
	mov
		r9d, 0x1
	xor
		r11d, r11d
	mov
		qword ptr [rsp + 0x50], r14
	jmp
		<L16>
<L14>:
	mov
		r13, rbp
	nop
		word ptr cs:[rax + rax]
<L15>:
	mov
		r9d, 0xfffffffe
	movsxd
		r10, esi
	add
		rax, 0x28
	inc
		rcx
	sub
		r9d, edi
	inc
		edi
	vmovss
		dword ptr [rsp + 4*r10 + 0x700], xmm0
	lzcnt
		r14d, edi
	popcnt
		r11d, r9d
	mov
		r9, r8
	sub
		r11d, r14d
	cmp
		rax, r12
	je
		<L28>
<L16>:
	movzx
		r8d, byte ptr [rcx]
	mov
		esi, r11d
	movsxd
		r8, dword ptr [rbx + 4*r8]
	add
		r8, rbx
	jmp
		r8
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, xmm4
	jmp
		<L20>
	vmulss
		xmm0, xmm8, dword ptr [rax + 0x1c]
	jmp
		<L17>
	vmulss
		xmm0, xmm6, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	jmp
		<L20>
	vmovss
		xmm0, dword ptr [rax + 0x24]
	jmp
		<L18>
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, xmm4
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	jmp
		<L20>
	vmovss
		xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x1c]
	jmp
		<L20>
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	jmp
		<L20>
	vmulss
		xmm0, xmm7, dword ptr [rax + 0x1c]
<L17>:
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x24]
	jmp
		<L20>
	vmulss
		xmm0, xmm4, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	jmp
		<L20>
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm1, xmm0, xmm0
	jmp
		<L19>
	vmovss
		xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x24]
	jmp
		<L20>
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm9, xmm0
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	jmp
		<L20>
	vmovss
		xmm0, dword ptr [rax + 0x1c]
<L18>:
	vmulss
		xmm1, xmm0, xmm0
	vmulss
		xmm1, xmm8, xmm1
<L19>:
	vmulss
		xmm0, xmm1, xmm0
<L20>:
	mov
		r8d, esi
	cmp
		esi, r9d
	jl
		<L15>
	movsxd
		r9, r9d
	mov
		r10d, r8d
	sub
		r10d, r9d
	cmp
		r10d, 0x7
	jb
		<L26>
	lea
		r15, [r10 + 0x1]
	cmp
		r10d, 0x3f
	jae
		<L21>
	xor
		r11d, r11d
	jmp
		<L23>
<L21>:
	lea
		r14, [rsp + 0x7c0]
	mov
		r11, r15
	mov
		r10, r15
	shr
		r10, 0x6
	mov
		rbp, r13
	and
		r11, r13
	vmovss
		xmm0, xmm5, xmm0 # xmm0 = xmm0[0],xmm5[1,2,3]
	vpxor
		xmm1, xmm1, xmm1
	vxorps
		xmm2, xmm2, xmm2
	vxorps
		xmm3, xmm3, xmm3
	lea
		r13, [r14 + 4*r9]
	shl
		r10, 0x8
	xor
		r14d, r14d
	nop
		word ptr cs:[rax + rax]
<L22>:
	vaddps
		zmm0, zmm0, zmmword ptr [r13 + r14 - 0xc0]
	vaddps
		zmm1, zmm1, zmmword ptr [r13 + r14 - 0x80]
	vaddps
		zmm2, zmm2, zmmword ptr [r13 + r14 - 0x40]
	vaddps
		zmm3, zmm3, zmmword ptr [r13 + r14]
	add
		r14, 0x100
	cmp
		r10, r14
	jne
		<L22>
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
		r15, r11
	je
		<L14>
	mov
		r13, rbp
	test
		r15b, 0x38
	je
		<L25>
<L23>:
	lea
		r10, [r13 + 0x38]
	lea
		r14, [rsp + 4*r9 + 0x700]
	vmovss
		xmm0, xmm5, xmm0 # xmm0 = xmm0[0],xmm5[1,2,3]
	and
		r10, r15
	nop
		dword ptr [rax + rax]
<L24>:
	vaddps
		ymm0, ymm0, ymmword ptr [r14 + 4*r11]
	add
		r11, 0x8
	cmp
		r10, r11
	jne
		<L24>
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
		r15, r10
	je
		<L15>
	add
		r9, r10
	jmp
		<L26>
<L25>:
	add
		r9, r11
	nop
		dword ptr [rax + rax]
<L26>:
	mov
		r10d, esi
	sub
		r10d, r9d
	lea
		r9, [rsp + 4*r9 + 0x700]
	xor
		r11d, r11d
	inc
		r10d
	nop
		word ptr cs:[rax + rax]
<L27>:
	vaddss
		xmm0, xmm0, dword ptr [r9 + 4*r11]
	inc
		r11
	cmp
		r10d, r11d
	jne
		<L27>
	jmp
		<L15>
	nop
		word ptr cs:[rax + rax]
<L28>:
	vmovss
		xmm0, dword ptr [rsp + 4*r10 + 0x700]
	mov
		rdi, qword ptr [rsp + 0x10]
	sub
		edi, edx
	je
		<L31>
	mov
		r14, qword ptr [rsp + 0x50]
	vmovss
		dword ptr [rsp + 4*r10 + 0x704], xmm0
	mov
		rax, r12
	mov
		rcx, r14
	test
		esi, esi
	js
		<L13>
	jmp
		<L30>
	nop
		word ptr cs:[rax + rax]
<L29>:
	vmovss
		xmm0, dword ptr [rsp + 0x704]
	sub
		edi, edx
	je
		<L31>
	mov
		esi, 0x1
	vmovss
		dword ptr [rsp + 0x708], xmm0
<L30>:
	mov
		qword ptr [rsp + 0x10], rdi
	mov
		eax, esi
	lea
		rdx, [4*rax + 0x4]
	lea
		rdi, [rsp + 0x700]
	jmp
		<L12>
<L31>:
	mov
		r12, qword ptr [rsp + 0x28]
	mov
		r13, qword ptr [rsp + 0x20]
	mov
		rbp, qword ptr [rsp + 0x8]
	mov
		rcx, qword ptr [rsp + 0x18]
	mov
		r15d, dword ptr [rsp + 0x70]
	vmovss
		dword ptr [rsp + 0x10], xmm0
	test
		r15d, r15d
	je
		<L36>
<L32>:
	mov
		ebx, r15d
	xor
		r14d, r14d
	mov
		r15, rbp
	jmp
		<L34>
	nop
		word ptr cs:[rax + rax]
<L33>:
	inc
		r14
	add
		r15, 0x28
	cmp
		rbx, r14
	je
		<L37>
<L34>:
	cmp
		byte ptr [rcx + r14], 0xc
	jne
		<L33>
	mov
		rdi, qword ptr [r15]
	test
		rdi, rdi
	je
		<L33>
	vzeroupper
	call
		<_ZdaPv$plt>
	mov
		rcx, qword ptr [rsp + 0x18]
	jmp
		<L33>
<L35>:
	mov
		r13, qword ptr [rsp + 0x20]
	vxorps
		xmm0, xmm0, xmm0
	vmovss
		dword ptr [rsp + 0x10], xmm0
	test
		r15d, r15d
	jne
		<L32>
<L36>:
	test
		rbp, rbp
	je
		<L38>
<L37>:
	mov
		rdi, rbp
	vzeroupper
	call
		<_ZdaPv$plt>
	vmovss
		xmm0, dword ptr [rsp + 0x10]
<L38>:
	test
		r12d, r12d
	jne
		<L42>
	cmp
		r13d, 0x30d4
	je
		<L40>
	cmp
		r13d, 0x186a
	jne
		<L39>
	vucomiss
		xmm0, dword ptr <.LCPI0_7>
	jne
		<L41>
<L39>:
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
	vzeroupper
	ret
<L40>:
	vucomiss
		xmm0, dword ptr <.LCPI0_6>
	je
		<L39>
<L41>:
	mov
		edi, 0x4
	vzeroupper
	call
		<__cxa_allocate_exception$plt>
	vmovss
		xmm0, dword ptr [rsp + 0x10]
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
<L42>:
	mov
		edi, 0x4
	vzeroupper
	call
		<__cxa_allocate_exception$plt>
	mov
		rsi, qword ptr <_ZTIi$got>
	mov
		dword ptr [rax], r12d
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
