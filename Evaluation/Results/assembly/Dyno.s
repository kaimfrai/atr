
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
		rsp, 0x818
	mov
		rcx, qword ptr [rsi + 0x8]
	mov
		rax, qword ptr [rsi + 0x10]
	movsx
		r14, byte ptr [rcx]
	movzx
		edx, byte ptr [rcx + 0x1]
	add
		r14, -0x30
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
		rsi, [r14 + 4*r14]
	movsx
		rdx, dl
	lea
		r14, [rdx + 2*rsi - 0x30]
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
		rcx, byte ptr [rax]
	movzx
		edx, byte ptr [rax + 0x1]
	add
		rcx, -0x30
	test
		dl, dl
	je
		<L3>
	add
		rax, 0x2
	nop
		dword ptr [rax + rax]
<L2>:
	lea
		rcx, [rcx + 4*rcx]
	movsx
		rdx, dl
	lea
		rcx, [rdx + 2*rcx - 0x30]
	movzx
		edx, byte ptr [rax]
	inc
		rax
	test
		dl, dl
	jne
		<L2>
<L3>:
	mov
		rsi, qword ptr <_ZSt7nothrow$got>
	mov
		r15, rcx
	shl
		rcx, 0x8
	shl
		r15, 0x4
	lea
		rdi, [rcx + 4*rcx]
	call
		<_ZnamRKSt9nothrow_t$plt>
	movabs
		rcx, -0x61c8864680b583eb
	vmovq
		xmm1, r14
	lea
		rdi, [rsp + 0x60]
	mov
		r13, rax
	add
		rcx, r14
	vmovq
		xmm0, rcx
	vpunpcklqdq
		xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
	call
		<RandomGenerators<20ul>::RandomGenerators<0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>(Meta::Random::Splitmix64<2ul>, std::integer_sequence<unsigned long, 0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>)>
	mov
		qword ptr [rsp + 0x560], 0x0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x70]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0xb0]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0xf0]
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x130]
	vpsllq
		xmm4, xmm0, 0x2
	vpaddq
		xmm0, xmm4, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm4, xmm0, 0x3
	vpaddq
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x570], xmm0
	vpsllq
		xmm0, xmm1, 0x2
	vpaddq
		xmm0, xmm0, xmm1
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x580], xmm0
	vpsllq
		xmm0, xmm2, 0x2
	vpaddq
		xmm0, xmm0, xmm2
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x590], xmm0
	vpsllq
		xmm0, xmm3, 0x2
	vpaddq
		xmm0, xmm0, xmm3
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x5a0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x170]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x5b0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x1b0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x5c0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x1f0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x5d0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x230]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x5e0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x270]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm20, xmm1, xmm0
	vmovdqa64
		xmmword ptr [rsp + 0x5f0], xmm20
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x2b0]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x2f0]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x330]
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x370]
	vpsllq
		xmm4, xmm0, 0x2
	vpaddq
		xmm0, xmm4, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm4, xmm0, 0x3
	vpaddq
		xmm21, xmm4, xmm0
	vpsllq
		xmm0, xmm1, 0x2
	vpaddq
		xmm0, xmm0, xmm1
	vmovdqa64
		xmmword ptr [rsp + 0x600], xmm21
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm22, xmm1, xmm0
	vpsllq
		xmm0, xmm2, 0x2
	vpaddq
		xmm0, xmm0, xmm2
	vmovdqa64
		xmmword ptr [rsp + 0x610], xmm22
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm23, xmm1, xmm0
	vpsllq
		xmm0, xmm3, 0x2
	vpaddq
		xmm0, xmm0, xmm3
	vmovdqa64
		xmmword ptr [rsp + 0x620], xmm23
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm24, xmm1, xmm0
	vmovdqa64
		xmmword ptr [rsp + 0x630], xmm24
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x3b0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm25, xmm1, xmm0
	vmovdqa64
		xmmword ptr [rsp + 0x640], xmm25
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x3f0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x650], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x430]
	vpsllq
		xmm2, xmm1, 0x2
	vpaddq
		xmm1, xmm2, xmm1
	vprolq
		xmm1, xmm1, 0x7
	vpsllq
		xmm2, xmm1, 0x3
	vpaddq
		xmm1, xmm2, xmm1
	vmovdqa
		xmmword ptr [rsp + 0x660], xmm1
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x470]
	vpsllq
		xmm3, xmm2, 0x2
	vpaddq
		xmm2, xmm3, xmm2
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm3, xmm2, 0x3
	vpaddq
		xmm2, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x670], xmm2
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x4b0]
	vpsllq
		xmm4, xmm3, 0x2
	vpaddq
		xmm3, xmm4, xmm3
	vprolq
		xmm3, xmm3, 0x7
	vpsllq
		xmm4, xmm3, 0x3
	vpaddq
		xmm14, xmm4, xmm3
	vmovdqa
		xmmword ptr [rsp + 0x680], xmm14
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x4f0]
	vpsllq
		xmm4, xmm3, 0x2
	vpaddq
		xmm3, xmm4, xmm3
	vprolq
		xmm3, xmm3, 0x7
	vpsllq
		xmm4, xmm3, 0x3
	vpaddq
		xmm13, xmm4, xmm3
	vmovdqa
		xmmword ptr [rsp + 0x690], xmm13
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x530]
	vpsllq
		xmm4, xmm3, 0x2
	vpaddq
		xmm3, xmm4, xmm3
	vprolq
		xmm3, xmm3, 0x7
	vpsllq
		xmm4, xmm3, 0x3
	vpaddq
		xmm26, xmm4, xmm3
	vmovdqa64
		xmmword ptr [rsp + 0x6a0], xmm26
	mov
		r12, qword ptr [rsp + 0x560]
	cmp
		r12, r15
	jne
		<L4>
	vpxor
		xmm0, xmm0, xmm0
	test
		r13, r13
	jne
		<L35>
	jmp
		<L36>
<L4>:
	vpmovsxbd
		xmm15, dword ptr <.LCPI0_9>
	vpmovsxbd
		xmm16, dword ptr <.LCPI0_10>
	vpmovsxbd
		xmm17, dword ptr <.LCPI0_11>
	vbroadcasti32x4
		ymm18, xmmword ptr <.LCPI0_6> # ymm18 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64
		xmm19, xmmword ptr <.LCPI0_4>
	mov
		rax, qword ptr [rsp + 0x570]
	vpunpcklqdq
		xmm7, xmm23, xmm24 # xmm7 = xmm23[0],xmm24[0]
	vpunpcklqdq
		xmm4, xmm21, xmm22 # xmm4 = xmm21[0],xmm22[0]
	vpunpcklqdq
		xmm3, xmm25, xmm13 # xmm3 = xmm25[0],xmm13[0]
	lea
		rsi, <memset+0xee8>
	xor
		ebp, ebp
	mov
		qword ptr [rsp + 0x28], r14
	mov
		qword ptr [rsp + 0x8], 0x0
	jmp
		<L7>
	nop
		dword ptr [rax]
<L5>:
	vpsrldq
		xmm3, xmmword ptr [rsp + 0x570], 0x1 # xmm3 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm4, xmm9, 0x1 # xmm4 = xmm9[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm9, xmm12, 0x1 # xmm9 = xmm12[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm7, xmm11, 0x1 # xmm7 = xmm11[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm6, xmm6, 0x1 # xmm6 = xmm6[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm5, xmm5, 0x1 # xmm5 = xmm5[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm20, xmm20, 0x1 # xmm20 = xmm20[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm21, xmm21, 0x1 # xmm21 = xmm21[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm22, xmm22, 0x1 # xmm22 = xmm22[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm23, xmm23, 0x1 # xmm23 = xmm23[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm24, xmm24, 0x1 # xmm24 = xmm24[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm25, xmm25, 0x1 # xmm25 = xmm25[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm0, xmm0, 0x1 # xmm0 = xmm0[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm1, xmm1, 0x1 # xmm1 = xmm1[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm2, xmm2, 0x1 # xmm2 = xmm2[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm14, xmm14, 0x1 # xmm14 = xmm14[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm13, xmm13, 0x1 # xmm13 = xmm13[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm26, xmm26, 0x1 # xmm26 = xmm26[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0x570], xmm3
	vmovapd
		xmmword ptr [rsp + 0x580], xmm4
	vmovapd
		xmmword ptr [rsp + 0x590], xmm9
	vmovapd
		xmmword ptr [rsp + 0x5a0], xmm7
	vpsrldq
		xmm9, xmm10, 0x1 # xmm9 = xmm10[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovq
		rax, xmm3
	vpsrldq
		xmm7, xmm8, 0x1 # xmm7 = xmm8[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0x5b0], xmm9
	vmovapd
		xmmword ptr [rsp + 0x5c0], xmm7
	vmovapd
		xmmword ptr [rsp + 0x5d0], xmm6
	vmovapd
		xmmword ptr [rsp + 0x5e0], xmm5
	vmovapd
		xmmword ptr [rsp + 0x5f0], xmm20
	vmovapd
		xmmword ptr [rsp + 0x600], xmm21
	vmovapd
		xmmword ptr [rsp + 0x610], xmm22
	vmovapd
		xmmword ptr [rsp + 0x620], xmm23
	vmovapd
		xmmword ptr [rsp + 0x630], xmm24
	vmovapd
		xmmword ptr [rsp + 0x640], xmm25
	vmovapd
		xmmword ptr [rsp + 0x650], xmm0
	vmovapd
		xmmword ptr [rsp + 0x660], xmm1
<L6>:
	add
		qword ptr [rsp + 0x8], 0x50
	vunpcklpd
		xmm7, xmm23, xmm24 # xmm7 = xmm23[0],xmm24[0]
	vunpcklpd
		xmm4, xmm21, xmm22 # xmm4 = xmm21[0],xmm22[0]
	vunpcklpd
		xmm3, xmm25, xmm13 # xmm3 = xmm25[0],xmm13[0]
	inc
		rbp
	vmovapd
		xmmword ptr [rsp + 0x670], xmm2
	vmovapd
		xmmword ptr [rsp + 0x680], xmm14
	vmovapd
		xmmword ptr [rsp + 0x690], xmm13
	vmovapd
		xmmword ptr [rsp + 0x6a0], xmm26
	cmp
		r12, r15
	je
		<L13>
<L7>:
	vmovdqu64
		zmm9, zmmword ptr [rsp + 0x580]
	vmovdqu64
		zmm8, zmmword ptr [rsp + 0x5c0]
	movzx
		ecx, al
	vmovapd
		xmm12, xmmword ptr [rsp + 0x590]
	vmovapd
		xmm11, xmmword ptr [rsp + 0x5a0]
	vmovapd
		xmm10, xmmword ptr [rsp + 0x5b0]
	vpshufb
		xmm4, xmm4, xmm19
	imul
		ecx, ecx, 0x4f
	vcvtdq2ps
		xmm4, xmm4
	shr
		ecx, 0xa
	lea
		edx, [rcx + 2*rcx]
	lea
		ecx, [rcx + 4*rdx]
	vpermd
		zmm5, zmm16, zmm9
	vpermd
		zmm6, zmm17, zmm8
	vpinsrd
		xmm6, xmm6, dword ptr [rsp + 0x5f0], 0x3
	sub
		al, cl
	movzx
		eax, al
	movsxd
		rax, dword ptr [rsi + 4*rax]
	vpermt2d
		ymm5, ymm15, ymm9
	add
		rax, rsi
	vinserti128
		ymm5, ymm5, xmm6, 0x1
	vmovapd
		xmm6, xmmword ptr [rsp + 0x5d0]
	vpandd
		ymm5, ymm5, ymm18
	vcvtdq2ps
		ymm27, ymm5
	vmovapd
		xmm5, xmmword ptr [rsp + 0x5e0]
	jmp
		rax
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Circle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle@Evaluation.CRTP.Circle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Circle, void>::'lambda'()>>>>
	jmp
		<L11>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipsoid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipsoid, void>::'lambda'()>>>>
	jmp
		<L9>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Triangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Triangle, void>::'lambda'(Bodies3D::Triangle@Evaluation.CRTP.Triangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Triangle, void>::'lambda'()>>>>
	jmp
		<L8>
	vpextrb
		eax, xmm3, 0x8
	mov
		r14, qword ptr [rsp + 0x8]
	mov
		edi, 0x60
	mov
		rbx, rsi
	vmovdqa64
		xmmword ptr [rsp + 0x10], xmm20
	vmovdqa64
		xmmword ptr [rsp + 0x40], xmm21
	vmovdqa64
		xmmword ptr [rsp + 0x30], xmm22
	vmovdqa64
		xmmword ptr [rsp + 0x760], xmm23
	vmovdqa64
		xmmword ptr [rsp + 0x750], xmm24
	vmovdqa64
		xmmword ptr [rsp + 0x740], xmm25
	vmovdqa
		xmmword ptr [rsp + 0x730], xmm14
	vmovdqa
		xmmword ptr [rsp + 0x720], xmm13
	vmovdqa64
		xmmword ptr [rsp + 0x710], xmm26
	vmovdqa
		xmmword ptr [rsp + 0x6b0], xmm7
	vmovdqu64
		zmmword ptr [rsp + 0x7d0], zmm8
	vmovdqu64
		zmmword ptr [rsp + 0x790], zmm9
	vmovapd
		xmmword ptr [rsp + 0x700], xmm5
	vmovapd
		xmmword ptr [rsp + 0x6f0], xmm6
	vmovapd
		xmmword ptr [rsp + 0x6e0], xmm10
	vmovapd
		xmmword ptr [rsp + 0x6d0], xmm11
	vmovapd
		xmmword ptr [rsp + 0x6c0], xmm12
	vmovups
		ymmword ptr [rsp + 0x770], ymm27
	vcvtsi2ss
		xmm0, xmm31, eax
	vpextrb
		eax, xmm3, 0x0
	vmovss
		dword ptr [rsp + 0x24], xmm0
	vcvtsi2ss
		xmm0, xmm31, eax
	lea
		rax, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Head, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Head, void>::'lambda'(Bodies3D::Head const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Head, void>::'lambda'()>>>>
	mov
		qword ptr [r13 + r14], rax
	mov
		byte ptr [r13 + r14 + 0x40], 0x1
	vmovss
		dword ptr [rsp + 0x20], xmm0
	vzeroupper
	call
		<malloc$plt>
	vmovd
		xmm5, dword ptr [rsp + 0x650]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x670]
	vmovdqu
		ymm0, ymmword ptr [rsp + 0x770]
	vmovss
		xmm7, dword ptr [rsp + 0x20]
	vmovapd
		xmm12, xmmword ptr [rsp + 0x6c0]
	vmovapd
		xmm11, xmmword ptr [rsp + 0x6d0]
	vmovapd
		xmm10, xmmword ptr [rsp + 0x6e0]
	vmovapd
		xmm6, xmmword ptr [rsp + 0x6f0]
	vmovdqu64
		zmm9, zmmword ptr [rsp + 0x790]
	vmovdqu64
		zmm8, zmmword ptr [rsp + 0x7d0]
	vmovdqa64
		xmm26, xmmword ptr [rsp + 0x710]
	vmovdqa
		xmm13, xmmword ptr [rsp + 0x720]
	vmovdqa
		xmm14, xmmword ptr [rsp + 0x730]
	vmovdqa64
		xmm25, xmmword ptr [rsp + 0x740]
	vmovdqa64
		xmm24, xmmword ptr [rsp + 0x750]
	vmovdqa64
		xmm23, xmmword ptr [rsp + 0x760]
	vmovdqa64
		xmm22, xmmword ptr [rsp + 0x30]
	vmovdqa64
		xmm21, xmmword ptr [rsp + 0x40]
	vmovdqa64
		xmm20, xmmword ptr [rsp + 0x10]
	vmovdqa64
		xmm19, xmmword ptr <.LCPI0_4>
	vbroadcasti32x4
		ymm18, xmmword ptr <.LCPI0_6> # ymm18 = mem[0,1,2,3,0,1,2,3]
	vpmovsxbd
		xmm17, dword ptr <.LCPI0_11>
	vpmovsxbd
		xmm16, dword ptr <.LCPI0_10>
	vpmovsxbd
		xmm15, dword ptr <.LCPI0_9>
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x660]
	mov
		rsi, rbx
	mov
		qword ptr [r13 + r14 + 0x10], rax
	vpinsrd
		xmm5, xmm5, dword ptr [rsp + 0x660], 0x1
	vmovd
		ecx, xmm2
	vpshufd
		xmm3, xmm0, 0xff # xmm3 = xmm0[3,3,3,3]
	vmovdqu
		ymmword ptr [rax], ymm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x6b0]
	vpshufb
		xmm0, xmm0, xmmword ptr <.LCPI0_5>
	vpinsrd
		xmm5, xmm5, ecx, 0x2
	vpinsrd
		xmm5, xmm5, dword ptr [rsp + 0x680], 0x3
	vpandd
		xmm5, xmm5, dword ptr {1to4} <.LCPI0_12>
	vcvtdq2ps
		xmm4, xmm0
	vmovaps
		xmm0, xmmword ptr [rsp + 0x650]
	vmovlps
		qword ptr [rax + 0x20], xmm4
	vmovss
		dword ptr [rax + 0x28], xmm7
	vmovd
		dword ptr [rax + 0x2c], xmm3
	vcvtdq2ps
		xmm5, xmm5
	vmovdqu
		xmmword ptr [rax + 0x30], xmm5
	vmovlps
		qword ptr [rax + 0x40], xmm4
	vmovss
		dword ptr [rax + 0x48], xmm7
	vmovd
		xmm7, dword ptr [rsp + 0x24]
	vpshufd
		xmm4, xmm5, 0xe9 # xmm4 = xmm5[1,2,2,3]
	vmovd
		dword ptr [rax + 0x4c], xmm3
	vmovd
		dword ptr [rax + 0x50], xmm7
	vmovq
		qword ptr [rax + 0x54], xmm4
	vextractps
		dword ptr [rax + 0x5c], xmm5, 0x3
	vmovapd
		xmm5, xmmword ptr [rsp + 0x700]
	inc
		r12
	mov
		qword ptr [rsp + 0x560], r12
	test
		r12b, 0xf
	jne
		<L5>
	jmp
		<L12>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cylinder, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cylinder, void>::'lambda'(Bodies3D::Cylinder const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cylinder, void>::'lambda'()>>>>
	jmp
		<L10>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Rectangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Rectangle, void>::'lambda'()>>>>
	jmp
		<L8>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Square, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square, void>::'lambda'(Bodies3D::Square const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Square, void>::'lambda'(Bodies3D::Square@Evaluation.CRTP.Square&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Square, void>::'lambda'()>>>>
	jmp
		<L11>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Pyramid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid, void>::'lambda'(Bodies3D::Pyramid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Pyramid, void>::'lambda'()>>>>
	jmp
		<L9>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipse, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipse, void>::'lambda'(Bodies3D::Ellipse@Evaluation.CRTP.Ellipse&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipse, void>::'lambda'()>>>>
<L8>:
	mov
		qword ptr [r13 + rax], rcx
	mov
		byte ptr [r13 + rax + 0x40], 0x0
	vmovups
		ymmword ptr [r13 + rax + 0x10], ymm27
	vmovd
		dword ptr [r13 + rax + 0x30], xmm4
	inc
		r12
	mov
		qword ptr [rsp + 0x560], r12
	test
		r12b, 0xf
	jne
		<L5>
	jmp
		<L12>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cube, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube, void>::'lambda'(Bodies3D::Cube const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cube, void>::'lambda'()>>>>
	jmp
		<L11>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cuboid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid, void>::'lambda'(Bodies3D::Cuboid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cuboid, void>::'lambda'()>>>>
<L9>:
	mov
		qword ptr [r13 + rax], rcx
	mov
		byte ptr [r13 + rax + 0x40], 0x0
	vmovups
		ymmword ptr [r13 + rax + 0x10], ymm27
	vmovq
		qword ptr [r13 + rax + 0x30], xmm4
	inc
		r12
	mov
		qword ptr [rsp + 0x560], r12
	test
		r12b, 0xf
	jne
		<L5>
	jmp
		<L12>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cone, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cone, void>::'lambda'(Bodies3D::Cone const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cone, void>::'lambda'()>>>>
<L10>:
	mov
		qword ptr [r13 + rax], rcx
	mov
		byte ptr [r13 + rax + 0x40], 0x0
	vmovups
		ymmword ptr [r13 + rax + 0x10], ymm27
	vextractps
		dword ptr [r13 + rax + 0x30], xmm4, 0x1
	inc
		r12
	mov
		qword ptr [rsp + 0x560], r12
	test
		r12b, 0xf
	jne
		<L5>
	jmp
		<L12>
	mov
		rax, qword ptr [rsp + 0x8]
	lea
		rcx, <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Sphere, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Sphere, void>::'lambda'(Bodies3D::Sphere const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere, void>::'lambda'()>>>>
<L11>:
	mov
		qword ptr [r13 + rax], rcx
	mov
		byte ptr [r13 + rax + 0x40], 0x0
	vmovups
		ymmword ptr [r13 + rax + 0x10], ymm27
	inc
		r12
	mov
		qword ptr [rsp + 0x560], r12
	test
		r12b, 0xf
	jne
		<L5>
<L12>:
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x70]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x60]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0xa0]
	vmovdqa
		xmm3, xmmword ptr [rsp + 0xb0]
	vpxor
		xmm5, xmm0, xmmword ptr [rsp + 0x80]
	vpxor
		xmm6, xmm1, xmmword ptr [rsp + 0x90]
	vpsllq
		xmm4, xmm1, 0x11
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm0, xmm6, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x70], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x60], xmm0
	vpxor
		xmm0, xmm5, xmm4
	vmovdqa
		xmmword ptr [rsp + 0x80], xmm0
	vprolq
		xmm0, xmm6, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x90], xmm0
	vpsllq
		xmm0, xmm3, 0x11
	vpxor
		xmm1, xmm2, xmmword ptr [rsp + 0xc0]
	vpxor
		xmm4, xmm3, xmmword ptr [rsp + 0xd0]
	vpxor
		xmm3, xmm1, xmm3
	vpxor
		xmm2, xmm4, xmm2
	vpxor
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0xb0], xmm3
	vmovdqa
		xmmword ptr [rsp + 0xa0], xmm2
	vmovdqa
		xmmword ptr [rsp + 0xc0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0xd0], xmm0
	vmovdqa
		xmm2, xmmword ptr [rsp + 0xe0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xf0]
	vpxor
		xmm3, xmm2, xmmword ptr [rsp + 0x100]
	vpxor
		xmm4, xmm0, xmmword ptr [rsp + 0x110]
	vpsllq
		xmm1, xmm0, 0x11
	vpxor
		xmm0, xmm3, xmm0
	vmovdqa
		xmmword ptr [rsp + 0xf0], xmm0
	vpxor
		xmm0, xmm4, xmm2
	vmovdqa
		xmmword ptr [rsp + 0xe0], xmm0
	vpxor
		xmm0, xmm3, xmm1
	vmovdqa
		xmmword ptr [rsp + 0x100], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x110], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x130]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x120]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x140]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x150]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x130], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x120], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x140], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x150], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x170]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x160]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x180]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x190]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x170], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x160], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x180], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x190], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x1b0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x1a0]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x1c0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x1d0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x1b0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x1a0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x1c0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x1d0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x1f0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x1e0]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x200]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x210]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x1f0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x1e0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x200], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x210], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x230]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x220]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x240]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x250]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x230], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x220], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x240], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x250], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x270]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x260]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x280]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x290]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x270], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x260], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x280], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x290], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x2b0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x2a0]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x2c0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x2d0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x2b0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x2a0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x2c0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x2d0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x2f0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x2e0]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x300]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x310]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x2f0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x2e0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x300], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x310], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x330]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x320]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x340]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x350]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x330], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x320], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x340], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x350], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x370]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x360]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x380]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x390]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x370], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x360], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x380], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x390], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x3b0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x3a0]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x3c0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x3d0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x3b0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x3a0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x3c0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x3d0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x3f0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x3e0]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x400]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x410]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x3f0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x3e0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x400], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x410], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x430]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x420]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x440]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x450]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x430], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x420], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x440], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x450], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x470]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x460]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x480]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x490]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x470], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x460], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x480], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x490], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x4b0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x4a0]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x4c0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x4d0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x4b0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x4a0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x4c0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x4d0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x4f0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x4e0]
	vpxor
		xmm4, xmm0, xmmword ptr [rsp + 0x500]
	vpxor
		xmm5, xmm1, xmmword ptr [rsp + 0x510]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm3, xmm4, xmm1
	vpxor
		xmm0, xmm5, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x4f0], xmm3
	vmovdqa
		xmmword ptr [rsp + 0x4e0], xmm0
	vpxor
		xmm0, xmm4, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x500], xmm0
	vprolq
		xmm0, xmm5, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x510], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x530]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x520]
	vpxor
		xmm4, xmm0, xmmword ptr [rsp + 0x540]
	vpxor
		xmm6, xmm1, xmmword ptr [rsp + 0x550]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm5, xmm4, xmm1
	vpxor
		xmm0, xmm6, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x530], xmm5
	vmovdqa
		xmmword ptr [rsp + 0x520], xmm0
	vpxor
		xmm0, xmm4, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x540], xmm0
	vprolq
		xmm0, xmm6, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x550], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x70]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0xb0]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0xf0]
	vmovdqa
		xmm8, xmmword ptr [rsp + 0x130]
	vpsllq
		xmm4, xmm0, 0x2
	vpaddq
		xmm0, xmm4, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm4, xmm0, 0x3
	vpaddq
		xmm4, xmm4, xmm0
	vpsllq
		xmm0, xmm1, 0x2
	vpaddq
		xmm0, xmm0, xmm1
	vmovq
		rax, xmm4
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm6, xmm1, xmm0
	vpsllq
		xmm0, xmm2, 0x2
	vpaddq
		xmm0, xmm0, xmm2
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm7, xmm1, xmm0
	vpsllq
		xmm0, xmm8, 0x2
	vpaddq
		xmm0, xmm8, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm8, xmm1, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x170]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm9, xmm1, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x1b0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm10, xmm1, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x1f0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm11, xmm1, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x230]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm12, xmm1, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x270]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm20, xmm1, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x2b0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm21, xmm1, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x2f0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm22, xmm1, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x330]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm23, xmm1, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x370]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm24, xmm1, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x3b0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm25, xmm1, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x3f0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x430]
	vpsllq
		xmm2, xmm1, 0x2
	vpaddq
		xmm1, xmm2, xmm1
	vprolq
		xmm1, xmm1, 0x7
	vpsllq
		xmm2, xmm1, 0x3
	vpaddq
		xmm1, xmm2, xmm1
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x470]
	vpsllq
		xmm13, xmm2, 0x2
	vpaddq
		xmm2, xmm13, xmm2
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm13, xmm2, 0x3
	vpaddq
		xmm2, xmm13, xmm2
	vmovdqa
		xmm13, xmmword ptr [rsp + 0x4b0]
	vmovdqa
		xmmword ptr [rsp + 0x570], xmm4
	vmovdqa
		xmmword ptr [rsp + 0x580], xmm6
	vmovdqa
		xmmword ptr [rsp + 0x590], xmm7
	vmovdqa
		xmmword ptr [rsp + 0x5a0], xmm8
	vmovdqa
		xmmword ptr [rsp + 0x5b0], xmm9
	vmovdqa
		xmmword ptr [rsp + 0x5c0], xmm10
	vmovdqa
		xmmword ptr [rsp + 0x5d0], xmm11
	vmovdqa
		xmmword ptr [rsp + 0x5e0], xmm12
	vmovdqa64
		xmmword ptr [rsp + 0x5f0], xmm20
	vmovdqa64
		xmmword ptr [rsp + 0x600], xmm21
	vmovdqa64
		xmmword ptr [rsp + 0x610], xmm22
	vmovdqa64
		xmmword ptr [rsp + 0x620], xmm23
	vmovdqa64
		xmmword ptr [rsp + 0x630], xmm24
	vmovdqa64
		xmmword ptr [rsp + 0x640], xmm25
	vmovdqa
		xmmword ptr [rsp + 0x650], xmm0
	vmovdqa
		xmmword ptr [rsp + 0x660], xmm1
	mov
		r12, qword ptr [rsp + 0x560]
	vpsllq
		xmm14, xmm13, 0x2
	vpaddq
		xmm13, xmm14, xmm13
	vprolq
		xmm13, xmm13, 0x7
	vpsllq
		xmm14, xmm13, 0x3
	vpaddq
		xmm14, xmm14, xmm13
	vpsllq
		xmm13, xmm3, 0x2
	vpaddq
		xmm3, xmm13, xmm3
	vprolq
		xmm3, xmm3, 0x7
	vpsllq
		xmm13, xmm3, 0x3
	vpaddq
		xmm13, xmm13, xmm3
	vpsllq
		xmm3, xmm5, 0x2
	vpaddq
		xmm3, xmm3, xmm5
	vprolq
		xmm3, xmm3, 0x7
	vpsllq
		xmm5, xmm3, 0x3
	vpaddq
		xmm26, xmm5, xmm3
	jmp
		<L6>
<L13>:
	shl
		rbp, 0x4
	lea
		rcx, [rbp + 4*rbp]
	mov
		rax, rcx
	shr
		rax, 0x4
	imul
		ebp, eax, 0xcccccccd
	test
		ebp, ebp
	je
		<L38>
	vpxor
		xmm0, xmm0, xmm0
	mov
		rbx, r13
	mov
		qword ptr [rsp + 0x30], rcx
	mov
		qword ptr [rsp + 0x40], r15
	vmovdqu64
		zmmword ptr [rsp + 0xa0], zmm0
	vmovdqu64
		zmmword ptr [rsp + 0x60], zmm0
	mov
		qword ptr [rsp + 0x58], r13
	jmp
		<L16>
<L14>:
	vmovss
		xmm0, dword ptr [rsp + 0x64]
	mov
		r12d, 0x1
	vmovss
		dword ptr [rsp + 0x68], xmm0
<L15>:
	mov
		eax, r12d
	lea
		rdx, [4*rax + 0x4]
	lea
		rdi, [rsp + 0x60]
	xor
		esi, esi
	vzeroupper
	call
		<memset$plt>
	mov
		rbx, r15
<L16>:
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
		<L14>
	mov
		r13d, 0x1
	mov
		r14d, 0x1
	xor
		ecx, ecx
	mov
		qword ptr [rsp + 0x10], rax
	jmp
		<L18>
	nop
		dword ptr [rax + rax]
<L17>:
	mov
		ecx, 0xfffffffe
	lea
		edx, [r13 + 0x1]
	movsxd
		rax, r12d
	add
		rbx, 0x50
	mov
		r14d, r12d
	sub
		ecx, r13d
	lzcnt
		esi, edx
	vmovss
		dword ptr [rsp + 4*rax + 0x60], xmm0
	mov
		r13d, edx
	popcnt
		ecx, ecx
	sub
		ecx, esi
	cmp
		rbx, r15
	je
		<L28>
<L18>:
	mov
		rax, qword ptr [rbx]
	cmp
		byte ptr [rbx + 0x40], 0x0
	mov
		r12d, ecx
	mov
		rax, qword ptr [rax]
	je
		<L19>
	mov
		rdi, qword ptr [rbx + 0x10]
	jmp
		<L20>
	nop
		word ptr [rax + rax]
<L19>:
	lea
		rdi, [rbx + 0x10]
<L20>:
	vzeroupper
	call
		rax
	mov
		edx, r12d
	sub
		edx, r14d
	jl
		<L17>
	movsxd
		rax, r14d
	cmp
		edx, 0x7
	jb
		<L26>
	lea
		rcx, [rdx + 0x1]
	cmp
		edx, 0x3f
	jae
		<L21>
	xor
		edx, edx
	jmp
		<L23>
<L21>:
	movabs
		rsi, 0x1ffffffc0
	lea
		r8, [rsp + 0x120]
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
	vpxor
		xmm3, xmm3, xmm3
	and
		rdx, rsi
	lea
		rsi, [r8 + 4*rax]
	nop
		word ptr cs:[rax + rax]
<L22>:
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
		rcx, rdx
	je
		<L17>
	test
		cl, 0x38
	je
		<L25>
<L23>:
	movabs
		rsi, 0x1ffffffc0
	lea
		rdi, [rsp + 4*rax + 0x60]
	vpxor
		xmm1, xmm1, xmm1
	vpblendd
		xmm0, xmm1, xmm0, 0x1 # xmm0 = xmm0[0],xmm1[1,2,3]
	add
		rsi, 0x38
	and
		rsi, rcx
<L24>:
	vaddps
		ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
	add
		rdx, 0x8
	cmp
		rsi, rdx
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
		rcx, rsi
	je
		<L17>
	add
		rax, rsi
	jmp
		<L26>
<L25>:
	add
		rax, rdx
	nop
		word ptr [rax + rax]
<L26>:
	mov
		ecx, r12d
	sub
		ecx, eax
	lea
		rax, [rsp + 4*rax + 0x60]
	xor
		edx, edx
	inc
		ecx
	nop
<L27>:
	vaddss
		xmm0, xmm0, dword ptr [rax + 4*rdx]
	inc
		rdx
	cmp
		ecx, edx
	jne
		<L27>
	jmp
		<L17>
	nop
		word ptr cs:[rax + rax]
<L28>:
	sub
		ebp, dword ptr [rsp + 0x10]
	mov
		r13, qword ptr [rsp + 0x58]
	je
		<L29>
	vmovss
		dword ptr [rsp + 4*rax + 0x64], xmm0
	mov
		rbx, r15
	test
		r12d, r12d
	jns
		<L15>
	jmp
		<L16>
<L29>:
	mov
		r15, qword ptr [rsp + 0x40]
	mov
		rcx, qword ptr [rsp + 0x30]
	mov
		rbp, qword ptr [rsp + 0x8]
	test
		rcx, rcx
	je
		<L39>
<L30>:
	mov
		rbx, r13
	vmovdqa
		xmmword ptr [rsp + 0x10], xmm0
	jmp
		<L33>
	nop
		word ptr cs:[rax + rax]
<L31>:
	mov
		rax, qword ptr [rbx]
	mov
		rdi, r14
	vzeroupper
	call
		qword ptr [rax + 0x8]
<L32>:
	add
		rbx, 0x50
	add
		rbp, -0x50
	je
		<L34>
<L33>:
	cmp
		byte ptr [rbx + 0x40], 0x1
	lea
		r14, [rbx + 0x10]
	jne
		<L31>
	mov
		rdi, qword ptr [r14]
	test
		rdi, rdi
	je
		<L32>
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
		<L32>
<L34>:
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x10]
	mov
		r14, qword ptr [rsp + 0x28]
	test
		r13, r13
	je
		<L36>
<L35>:
	mov
		rdi, r13
	vmovdqa
		xmmword ptr [rsp + 0x10], xmm0
	vzeroupper
	call
		<_ZdaPv$plt>
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x10]
<L36>:
	cmp
		r14, 0x2a
	jne
		<L37>
	cmp
		r15, 0x30d40
	je
		<L40>
	cmp
		r15, 0x186a0
	jne
		<L37>
	vucomiss
		xmm0, dword ptr <.LCPI0_8>
	jne
		<L41>
<L37>:
	xor
		eax, eax
	add
		rsp, 0x818
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
<L38>:
	vpxor
		xmm0, xmm0, xmm0
	mov
		rbp, qword ptr [rsp + 0x8]
	test
		rcx, rcx
	jne
		<L30>
<L39>:
	mov
		r14, qword ptr [rsp + 0x28]
	test
		r13, r13
	jne
		<L35>
	jmp
		<L36>
<L40>:
	vucomiss
		xmm0, dword ptr <.LCPI0_7>
	je
		<L37>
<L41>:
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
	mov
		rdi, rax
	xor
		edx, edx
	vmovss
		dword ptr [rax], xmm0
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
		xmm1, xmm1, dword ptr <.LCPI5_0>
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
		xmm0, xmm0, dword ptr <.LCPI5_0>
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
		xmm0, xmm0, dword ptr <.LCPI8_0>
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
		xmm0, xmm0, dword ptr <.LCPI38_0>
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
		xmm0, xmm0, dword ptr <.LCPI17_0>
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
		xmm0, xmm0, dword ptr <.LCPI26_0>
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
		xmm0, xmm0, dword ptr <.LCPI38_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle, void>::'lambda'(Bodies3D::Circle const&), float (Bodies3D::Circle const&)>, float (dyno::T const&), float (Bodies3D::Circle const&)>::apply(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI38_0>
	ret

<RandomGenerators<20ul>::RandomGenerators<0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>(Meta::Random::Splitmix64<2ul>, std::integer_sequence<unsigned long, 0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>)>:
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
	vpbroadcastq
		xmm4, qword ptr <.LCPI41_1>
	vpbroadcastq
		xmm7, qword ptr <.LCPI41_2>
	vpsrlq
		xmm2, xmm0, 0x1e
	vpaddq
		xmm1, xmm0, qword ptr {1to2} <.LCPI41_0>
	movabs
		rsi, 0x2020220200222
	mov
		qword ptr [rsp - 0x8], rdi
	xor
		eax, eax
	vpxor
		xmm2, xmm2, xmm0
	vpmullq
		xmm2, xmm2, xmm4
	vpsrlq
		xmm5, xmm1, 0x1e
	vpxor
		xmm1, xmm5, xmm1
	vpmullq
		xmm1, xmm1, xmm4
	vpsrlq
		xmm3, xmm2, 0x1b
	vpxor
		xmm2, xmm3, xmm2
	vpmullq
		xmm2, xmm2, xmm7
	vpsrlq
		xmm5, xmm1, 0x1b
	vpxor
		xmm1, xmm5, xmm1
	vpmullq
		xmm1, xmm1, xmm7
	vpsrlq
		xmm3, xmm2, 0x1f
	vpxor
		xmm3, xmm3, xmm2
	vpaddq
		xmm2, xmm0, qword ptr {1to2} <.LCPI41_3>
	vpaddq
		xmm0, xmm0, qword ptr {1to2} <.LCPI41_4>
	vpsrlq
		xmm5, xmm1, 0x1f
	vmovdqa
		xmmword ptr [rdi], xmm3
	vpxor
		xmm5, xmm5, xmm1
	vmovdqa
		xmmword ptr [rdi + 0x10], xmm5
	vpsrlq
		xmm1, xmm2, 0x1e
	vpxor
		xmm1, xmm1, xmm2
	vpmullq
		xmm1, xmm1, xmm4
	vpsrlq
		xmm2, xmm1, 0x1b
	vpxor
		xmm1, xmm2, xmm1
	vpmullq
		xmm1, xmm1, xmm7
	vpsrlq
		xmm2, xmm1, 0x1f
	vpxor
		xmm6, xmm2, xmm1
	vpsrlq
		xmm1, xmm0, 0x1e
	vpxor
		xmm2, xmm2, xmm2
	vpxor
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rdi + 0x20], xmm6
	vpmullq
		xmm0, xmm0, xmm4
	vpxor
		xmm4, xmm4, xmm4
	vpsrlq
		xmm1, xmm0, 0x1b
	vpxor
		xmm0, xmm1, xmm0
	vpmullq
		xmm0, xmm0, xmm7
	vpsrlq
		xmm1, xmm0, 0x1f
	vpxor
		xmm7, xmm1, xmm0
	vpxor
		xmm0, xmm0, xmm0
	vpxor
		xmm1, xmm1, xmm1
	vmovdqa
		xmmword ptr [rdi + 0x30], xmm7
	jmp
		<L1>
	nop
		dword ptr [rax]
<L0>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	add
		rax, 0x4
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	cmp
		rax, 0x40
	je
		<L5>
<L1>:
	movabs
		rcx, 0x1000001110110010
	bt
		rcx, rax
	jae
		<L2>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L2>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	shrx
		rcx, rsi, rax
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	test
		cl, 0x2
	je
		<L3>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L3>:
	vpxor
		xmm7, xmm5, xmm7
	movabs
		rcx, 0x4444004440000
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	shrx
		rcx, rcx, rax
	test
		cl, 0x4
	je
		<L4>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L4>:
	vpxor
		xmm7, xmm5, xmm7
	movabs
		rcx, 0x808808008880888
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	shrx
		rcx, rcx, rax
	test
		cl, 0x8
	je
		<L0>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
	jmp
		<L0>
<L5>:
	movabs
		r8, -0x7f7fffff7f77f7f8
	movabs
		r9, 0x4404004440400004
	movabs
		r10, 0x1100100010011100
	movabs
		r11, 0x22022220002020
	xor
		eax, eax
	jmp
		<L7>
	nop
		word ptr cs:[rax + rax]
<L6>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	add
		rax, 0x4
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	cmp
		rax, 0x40
	je
		<L11>
<L7>:
	bt
		r10, rax
	jae
		<L8>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L8>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	shrx
		rcx, r11, rax
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	test
		cl, 0x2
	je
		<L9>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L9>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	shrx
		rcx, r9, rax
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	test
		cl, 0x4
	je
		<L10>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L10>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	shrx
		rcx, r8, rax
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	test
		cl, 0x8
	je
		<L6>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
	jmp
		<L6>
<L11>:
	movabs
		rbx, -0x77f7fff77ff77778
	movabs
		r14, 0x2000220020220022
	movabs
		r15, 0x110001000110100
	movabs
		r12, 0x40040040044000
	xor
		eax, eax
	jmp
		<L13>
	nop
		word ptr [rax + rax]
<L12>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	add
		rax, 0x4
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	cmp
		rax, 0x40
	je
		<L17>
<L13>:
	bt
		r15, rax
	jae
		<L14>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L14>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	shrx
		rcx, r14, rax
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	test
		cl, 0x2
	je
		<L15>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L15>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	shrx
		rcx, r12, rax
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	test
		cl, 0x4
	je
		<L16>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L16>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	shrx
		rcx, rbx, rax
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	test
		cl, 0x8
	je
		<L12>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
	jmp
		<L12>
<L17>:
	movabs
		r13, 0x2022000020202200
	movabs
		rbp, 0x1101100101110010
	movabs
		rax, 0x888880008800008
	movabs
		rdi, 0x444400004404
	xor
		ecx, ecx
	jmp
		<L19>
	nop
		word ptr [rax + rax]
<L18>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	add
		rcx, 0x4
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	cmp
		rcx, 0x40
	je
		<L23>
<L19>:
	bt
		rbp, rcx
	jae
		<L20>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L20>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	shrx
		rdx, r13, rcx
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	test
		dl, 0x2
	je
		<L21>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L21>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	test
		dl, 0x4
	je
		<L22>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
<L22>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm8, xmm5, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm3, xmm7, xmm3
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm5, xmm6, xmm5
	vpxor
		xmm6, xmm8, xmm6
	test
		dl, 0x8
	je
		<L18>
	vpxor
		xmm1, xmm1, xmm3
	vpxor
		xmm0, xmm5, xmm0
	vpxor
		xmm4, xmm6, xmm4
	vpxor
		xmm2, xmm7, xmm2
	jmp
		<L18>
<L23>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm6, xmm6, xmm6
	vpxor
		xmm7, xmm7, xmm7
	vpxor
		xmm3, xmm3, xmm3
	vpxor
		xmm5, xmm5, xmm5
	vmovdqa
		xmmword ptr [rcx + 0x40], xmm1
	vmovdqa
		xmmword ptr [rcx + 0x50], xmm0
	vmovdqa
		xmmword ptr [rcx + 0x60], xmm4
	vmovdqa
		xmmword ptr [rcx + 0x70], xmm2
	xor
		ecx, ecx
	jmp
		<L25>
	nop
		dword ptr [rax + rax]
<L24>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm1, xmm2
	vpxor
		xmm9, xmm0, xmm4
	add
		rcx, 0x4
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm4, xmm8, xmm2
	vprolq
		xmm2, xmm9, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	cmp
		rcx, 0x40
	je
		<L29>
<L25>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L26>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm4, xmm7
	vpxor
		xmm6, xmm2, xmm6
<L26>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm9, xmm0, xmm2
	shrx
		rdx, rsi, rcx
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm2, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	test
		dl, 0x2
	je
		<L27>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
<L27>:
	vpxor
		xmm4, xmm0, xmm4
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm2, xmm1, xmm2
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm1, xmm4, xmm1
	vprolq
		xmm4, xmm4, 0x2d
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm2, xmm8, xmm2
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L28>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
<L28>:
	vpxor
		xmm4, xmm0, xmm4
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm2, xmm1, xmm2
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm1, xmm4, xmm1
	vprolq
		xmm4, xmm4, 0x2d
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm2, xmm8, xmm2
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L24>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
	jmp
		<L24>
<L29>:
	xor
		ecx, ecx
	jmp
		<L31>
	nop
		dword ptr [rax]
<L30>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm1, xmm2
	vpxor
		xmm9, xmm0, xmm4
	add
		rcx, 0x4
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm4, xmm8, xmm2
	vprolq
		xmm2, xmm9, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	cmp
		rcx, 0x40
	je
		<L35>
<L31>:
	bt
		r10, rcx
	jae
		<L32>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm4, xmm7
	vpxor
		xmm6, xmm2, xmm6
<L32>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm9, xmm0, xmm2
	shrx
		rdx, r11, rcx
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm2, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	test
		dl, 0x2
	je
		<L33>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
<L33>:
	vpxor
		xmm4, xmm0, xmm4
	vpxor
		xmm2, xmm1, xmm2
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm1, xmm4, xmm1
	vprolq
		xmm4, xmm4, 0x2d
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm2, xmm8, xmm2
	test
		dl, 0x4
	je
		<L34>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
<L34>:
	vpxor
		xmm4, xmm0, xmm4
	vpxor
		xmm2, xmm1, xmm2
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm1, xmm4, xmm1
	vprolq
		xmm4, xmm4, 0x2d
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm2, xmm8, xmm2
	test
		dl, 0x8
	je
		<L30>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
	jmp
		<L30>
<L35>:
	xor
		ecx, ecx
	jmp
		<L37>
	nop
<L36>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm1, xmm2
	vpxor
		xmm9, xmm0, xmm4
	add
		rcx, 0x4
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm4, xmm8, xmm2
	vprolq
		xmm2, xmm9, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	cmp
		rcx, 0x40
	je
		<L41>
<L37>:
	bt
		r15, rcx
	jae
		<L38>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm4, xmm7
	vpxor
		xmm6, xmm2, xmm6
<L38>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm9, xmm0, xmm2
	shrx
		rdx, r14, rcx
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm2, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	test
		dl, 0x2
	je
		<L39>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
<L39>:
	vpxor
		xmm4, xmm0, xmm4
	vpxor
		xmm2, xmm1, xmm2
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm1, xmm4, xmm1
	vprolq
		xmm4, xmm4, 0x2d
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm2, xmm8, xmm2
	test
		dl, 0x4
	je
		<L40>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
<L40>:
	vpxor
		xmm4, xmm0, xmm4
	vpxor
		xmm2, xmm1, xmm2
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm1, xmm4, xmm1
	vprolq
		xmm4, xmm4, 0x2d
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm2, xmm8, xmm2
	test
		dl, 0x8
	je
		<L36>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
	jmp
		<L36>
<L41>:
	xor
		ecx, ecx
	jmp
		<L43>
	nop
<L42>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm1, xmm2
	vpxor
		xmm9, xmm0, xmm4
	add
		rcx, 0x4
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm4, xmm8, xmm2
	vprolq
		xmm2, xmm9, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	cmp
		rcx, 0x40
	je
		<L47>
<L43>:
	bt
		rbp, rcx
	jae
		<L44>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm4, xmm7
	vpxor
		xmm6, xmm2, xmm6
<L44>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm9, xmm0, xmm2
	shrx
		rdx, r13, rcx
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm2, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	test
		dl, 0x2
	je
		<L45>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
<L45>:
	vpxor
		xmm4, xmm0, xmm4
	vpxor
		xmm2, xmm1, xmm2
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm1, xmm4, xmm1
	vprolq
		xmm4, xmm4, 0x2d
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm2, xmm8, xmm2
	test
		dl, 0x4
	je
		<L46>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
<L46>:
	vpxor
		xmm4, xmm0, xmm4
	vpxor
		xmm2, xmm1, xmm2
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm1, xmm4, xmm1
	vprolq
		xmm4, xmm4, 0x2d
	vpxor
		xmm0, xmm2, xmm0
	vpxor
		xmm2, xmm8, xmm2
	test
		dl, 0x8
	je
		<L42>
	vpxor
		xmm5, xmm5, xmm1
	vpxor
		xmm3, xmm0, xmm3
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm6, xmm4, xmm6
	jmp
		<L42>
<L47>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm4, xmm4, xmm4
	vpxor
		xmm8, xmm8, xmm8
	vpxor
		xmm0, xmm0, xmm0
	vpxor
		xmm2, xmm2, xmm2
	vmovdqa
		xmmword ptr [rcx + 0x80], xmm5
	vmovdqa
		xmmword ptr [rcx + 0x90], xmm3
	vmovdqa
		xmmword ptr [rcx + 0xa0], xmm7
	vmovdqa
		xmmword ptr [rcx + 0xb0], xmm6
	xor
		ecx, ecx
	jmp
		<L49>
	nop
		word ptr cs:[rax + rax]
<L48>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm9, xmm5, xmm3
	vpsllq
		xmm7, xmm1, 0x11
	add
		rcx, 0x4
	vpxor
		xmm5, xmm6, xmm5
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm3, xmm9, xmm1
	vpxor
		xmm7, xmm9, xmm7
	cmp
		rcx, 0x40
	je
		<L53>
<L49>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L50>
	vpxor
		xmm2, xmm2, xmm5
	vpxor
		xmm0, xmm3, xmm0
	vpxor
		xmm8, xmm8, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L50>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm9, xmm3, 0x11
	shrx
		rdx, rsi, rcx
	vpxor
		xmm1, xmm7, xmm3
	vpxor
		xmm3, xmm6, xmm5
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm5, xmm9, xmm7
	test
		dl, 0x2
	je
		<L51>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm5
	vpxor
		xmm4, xmm6, xmm4
<L51>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm7, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm5, xmm7
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L52>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm5
	vpxor
		xmm4, xmm6, xmm4
<L52>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm9, xmm3, xmm5
	vpsllq
		xmm7, xmm1, 0x11
	vpxor
		xmm5, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	vpxor
		xmm3, xmm9, xmm7
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L48>
	vpxor
		xmm2, xmm2, xmm5
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm3
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L48>
<L53>:
	xor
		ecx, ecx
	jmp
		<L55>
	nop
		dword ptr [rax]
<L54>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm9, xmm5, xmm3
	vpsllq
		xmm7, xmm1, 0x11
	add
		rcx, 0x4
	vpxor
		xmm5, xmm6, xmm5
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm3, xmm9, xmm1
	vpxor
		xmm7, xmm9, xmm7
	cmp
		rcx, 0x40
	je
		<L59>
<L55>:
	bt
		r10, rcx
	jae
		<L56>
	vpxor
		xmm2, xmm2, xmm5
	vpxor
		xmm0, xmm3, xmm0
	vpxor
		xmm8, xmm8, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L56>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm9, xmm3, 0x11
	shrx
		rdx, r11, rcx
	vpxor
		xmm1, xmm7, xmm3
	vpxor
		xmm3, xmm6, xmm5
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm5, xmm9, xmm7
	test
		dl, 0x2
	je
		<L57>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm5
	vpxor
		xmm4, xmm6, xmm4
<L57>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm7, xmm1, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm5, xmm7
	test
		dl, 0x4
	je
		<L58>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm5
	vpxor
		xmm4, xmm6, xmm4
<L58>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm9, xmm3, xmm5
	vpsllq
		xmm7, xmm1, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm5, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	vpxor
		xmm3, xmm9, xmm7
	test
		dl, 0x8
	je
		<L54>
	vpxor
		xmm2, xmm2, xmm5
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm3
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L54>
<L59>:
	xor
		ecx, ecx
	jmp
		<L61>
	nop
<L60>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm9, xmm5, xmm3
	vpsllq
		xmm7, xmm1, 0x11
	add
		rcx, 0x4
	vpxor
		xmm5, xmm6, xmm5
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm3, xmm9, xmm1
	vpxor
		xmm7, xmm9, xmm7
	cmp
		rcx, 0x40
	je
		<L65>
<L61>:
	bt
		r15, rcx
	jae
		<L62>
	vpxor
		xmm2, xmm2, xmm5
	vpxor
		xmm0, xmm3, xmm0
	vpxor
		xmm8, xmm8, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L62>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm9, xmm3, 0x11
	shrx
		rdx, r14, rcx
	vpxor
		xmm1, xmm7, xmm3
	vpxor
		xmm3, xmm6, xmm5
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm5, xmm9, xmm7
	test
		dl, 0x2
	je
		<L63>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm5
	vpxor
		xmm4, xmm6, xmm4
<L63>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm7, xmm1, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm5, xmm7
	test
		dl, 0x4
	je
		<L64>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm5
	vpxor
		xmm4, xmm6, xmm4
<L64>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm9, xmm3, xmm5
	vpsllq
		xmm7, xmm1, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm5, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	vpxor
		xmm3, xmm9, xmm7
	test
		dl, 0x8
	je
		<L60>
	vpxor
		xmm2, xmm2, xmm5
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm3
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L60>
<L65>:
	xor
		ecx, ecx
	jmp
		<L67>
	nop
<L66>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm9, xmm5, xmm3
	vpsllq
		xmm7, xmm1, 0x11
	add
		rcx, 0x4
	vpxor
		xmm5, xmm6, xmm5
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm3, xmm9, xmm1
	vpxor
		xmm7, xmm9, xmm7
	cmp
		rcx, 0x40
	je
		<L71>
<L67>:
	bt
		rbp, rcx
	jae
		<L68>
	vpxor
		xmm2, xmm2, xmm5
	vpxor
		xmm0, xmm3, xmm0
	vpxor
		xmm8, xmm8, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L68>:
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm6, xmm3, xmm6
	vpsllq
		xmm9, xmm3, 0x11
	shrx
		rdx, r13, rcx
	vpxor
		xmm1, xmm7, xmm3
	vpxor
		xmm3, xmm6, xmm5
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm5, xmm9, xmm7
	test
		dl, 0x2
	je
		<L69>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm5
	vpxor
		xmm4, xmm6, xmm4
<L69>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm7, xmm1, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm5, xmm7
	test
		dl, 0x4
	je
		<L70>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm5
	vpxor
		xmm4, xmm6, xmm4
<L70>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm9, xmm3, xmm5
	vpsllq
		xmm7, xmm1, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm5, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm9, xmm1
	vpxor
		xmm3, xmm9, xmm7
	test
		dl, 0x8
	je
		<L66>
	vpxor
		xmm2, xmm2, xmm5
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm8, xmm8, xmm3
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L66>
<L71>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm5, xmm5, xmm5
	vpxor
		xmm6, xmm6, xmm6
	vpxor
		xmm1, xmm1, xmm1
	vpxor
		xmm3, xmm3, xmm3
	vmovdqa
		xmmword ptr [rcx + 0xc0], xmm2
	vmovdqa
		xmmword ptr [rcx + 0xd0], xmm0
	vmovdqa
		xmmword ptr [rcx + 0xe0], xmm8
	vmovdqa
		xmmword ptr [rcx + 0xf0], xmm4
	xor
		ecx, ecx
	jmp
		<L73>
	nop
		word ptr cs:[rax + rax]
<L72>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm7, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm8, xmm8, xmm4
	vprolq
		xmm4, xmm7, 0x2d
	vpxor
		xmm2, xmm7, xmm2
	cmp
		rcx, 0x40
	je
		<L77>
<L73>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L74>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm8, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L74>:
	vpsllq
		xmm7, xmm0, 0x11
	vpxor
		xmm8, xmm8, xmm2
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, rsi, rcx
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm0, xmm8, xmm0
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L75>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L75>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L76>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L76>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L72>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L72>
<L77>:
	xor
		ecx, ecx
	jmp
		<L79>
	nop
		dword ptr [rax]
<L78>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm7, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm8, xmm8, xmm4
	vprolq
		xmm4, xmm7, 0x2d
	vpxor
		xmm2, xmm7, xmm2
	cmp
		rcx, 0x40
	je
		<L83>
<L79>:
	bt
		r10, rcx
	jae
		<L80>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm8, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L80>:
	vpsllq
		xmm7, xmm0, 0x11
	vpxor
		xmm8, xmm8, xmm2
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r11, rcx
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm0, xmm8, xmm0
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L81>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L81>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L82>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L82>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L78>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L78>
<L83>:
	xor
		ecx, ecx
	jmp
		<L85>
	nop
<L84>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm7, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm8, xmm8, xmm4
	vprolq
		xmm4, xmm7, 0x2d
	vpxor
		xmm2, xmm7, xmm2
	cmp
		rcx, 0x40
	je
		<L89>
<L85>:
	bt
		r15, rcx
	jae
		<L86>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm8, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L86>:
	vpsllq
		xmm7, xmm0, 0x11
	vpxor
		xmm8, xmm8, xmm2
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r14, rcx
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm0, xmm8, xmm0
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L87>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L87>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L88>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L88>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L84>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L84>
<L89>:
	xor
		ecx, ecx
	jmp
		<L91>
	nop
<L90>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm7, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm8, xmm8, xmm4
	vprolq
		xmm4, xmm7, 0x2d
	vpxor
		xmm2, xmm7, xmm2
	cmp
		rcx, 0x40
	je
		<L95>
<L91>:
	bt
		rbp, rcx
	jae
		<L92>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm8, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L92>:
	vpsllq
		xmm7, xmm0, 0x11
	vpxor
		xmm8, xmm8, xmm2
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r13, rcx
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm0, xmm8, xmm0
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L93>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L93>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L94>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L94>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L90>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L90>
<L95>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm4, xmm4, xmm4
	vpxor
		xmm7, xmm7, xmm7
	vpxor
		xmm0, xmm0, xmm0
	vpxor
		xmm2, xmm2, xmm2
	vmovdqa
		xmmword ptr [rcx + 0x100], xmm3
	vmovdqa
		xmmword ptr [rcx + 0x110], xmm1
	vmovdqa
		xmmword ptr [rcx + 0x120], xmm6
	vmovdqa
		xmmword ptr [rcx + 0x130], xmm5
	xor
		ecx, ecx
	jmp
		<L97>
	nop
		word ptr cs:[rax + rax]
<L96>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L101>
<L97>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L98>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L98>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, rsi, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L99>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L99>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L100>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L100>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L96>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L96>
<L101>:
	xor
		ecx, ecx
	jmp
		<L103>
	nop
		dword ptr [rax]
<L102>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L107>
<L103>:
	bt
		r10, rcx
	jae
		<L104>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L104>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r11, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L105>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L105>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L106>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L106>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L102>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L102>
<L107>:
	xor
		ecx, ecx
	jmp
		<L109>
	nop
<L108>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L113>
<L109>:
	bt
		r15, rcx
	jae
		<L110>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L110>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r14, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L111>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L111>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L112>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L112>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L108>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L108>
<L113>:
	xor
		ecx, ecx
	jmp
		<L115>
	nop
<L114>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L119>
<L115>:
	bt
		rbp, rcx
	jae
		<L116>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L116>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r13, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L117>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L117>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L118>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L118>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L114>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L114>
<L119>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm5, xmm5, xmm5
	vpxor
		xmm6, xmm6, xmm6
	vpxor
		xmm1, xmm1, xmm1
	vpxor
		xmm3, xmm3, xmm3
	vmovdqa
		xmmword ptr [rcx + 0x140], xmm2
	vmovdqa
		xmmword ptr [rcx + 0x150], xmm0
	vmovdqa
		xmmword ptr [rcx + 0x160], xmm7
	vmovdqa
		xmmword ptr [rcx + 0x170], xmm4
	xor
		ecx, ecx
	jmp
		<L121>
	nop
		word ptr cs:[rax + rax]
<L120>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L125>
<L121>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L122>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L122>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, rsi, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L123>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L123>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L124>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L124>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L120>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L120>
<L125>:
	xor
		ecx, ecx
	jmp
		<L127>
	nop
		dword ptr [rax]
<L126>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L131>
<L127>:
	bt
		r10, rcx
	jae
		<L128>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L128>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r11, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L129>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L129>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L130>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L130>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L126>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L126>
<L131>:
	xor
		ecx, ecx
	jmp
		<L133>
	nop
<L132>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L137>
<L133>:
	bt
		r15, rcx
	jae
		<L134>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L134>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r14, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L135>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L135>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L136>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L136>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L132>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L132>
<L137>:
	xor
		ecx, ecx
	jmp
		<L139>
	nop
<L138>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L143>
<L139>:
	bt
		rbp, rcx
	jae
		<L140>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L140>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r13, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L141>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L141>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L142>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L142>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L138>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L138>
<L143>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm4, xmm4, xmm4
	vpxor
		xmm7, xmm7, xmm7
	vpxor
		xmm0, xmm0, xmm0
	vpxor
		xmm2, xmm2, xmm2
	vmovdqa
		xmmword ptr [rcx + 0x180], xmm3
	vmovdqa
		xmmword ptr [rcx + 0x190], xmm1
	vmovdqa
		xmmword ptr [rcx + 0x1a0], xmm6
	vmovdqa
		xmmword ptr [rcx + 0x1b0], xmm5
	xor
		ecx, ecx
	jmp
		<L145>
	nop
		word ptr cs:[rax + rax]
<L144>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L149>
<L145>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L146>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L146>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, rsi, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L147>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L147>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L148>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L148>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L144>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L144>
<L149>:
	xor
		ecx, ecx
	jmp
		<L151>
	nop
		dword ptr [rax]
<L150>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L155>
<L151>:
	bt
		r10, rcx
	jae
		<L152>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L152>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r11, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L153>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L153>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L154>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L154>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L150>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L150>
<L155>:
	xor
		ecx, ecx
	jmp
		<L157>
	nop
<L156>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L161>
<L157>:
	bt
		r15, rcx
	jae
		<L158>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L158>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r14, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L159>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L159>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L160>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L160>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L156>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L156>
<L161>:
	xor
		ecx, ecx
	jmp
		<L163>
	nop
<L162>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L167>
<L163>:
	bt
		rbp, rcx
	jae
		<L164>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L164>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r13, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L165>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L165>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L166>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L166>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L162>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L162>
<L167>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm5, xmm5, xmm5
	vpxor
		xmm6, xmm6, xmm6
	vpxor
		xmm1, xmm1, xmm1
	vpxor
		xmm3, xmm3, xmm3
	vmovdqa
		xmmword ptr [rcx + 0x1c0], xmm2
	vmovdqa
		xmmword ptr [rcx + 0x1d0], xmm0
	vmovdqa
		xmmword ptr [rcx + 0x1e0], xmm7
	vmovdqa
		xmmword ptr [rcx + 0x1f0], xmm4
	xor
		ecx, ecx
	jmp
		<L169>
	nop
		word ptr cs:[rax + rax]
<L168>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L173>
<L169>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L170>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L170>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, rsi, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L171>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L171>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L172>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L172>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L168>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L168>
<L173>:
	xor
		ecx, ecx
	jmp
		<L175>
	nop
		dword ptr [rax]
<L174>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L179>
<L175>:
	bt
		r10, rcx
	jae
		<L176>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L176>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r11, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L177>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L177>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L178>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L178>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L174>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L174>
<L179>:
	xor
		ecx, ecx
	jmp
		<L181>
	nop
<L180>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L185>
<L181>:
	bt
		r15, rcx
	jae
		<L182>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L182>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r14, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L183>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L183>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L184>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L184>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L180>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L180>
<L185>:
	xor
		ecx, ecx
	jmp
		<L187>
	nop
<L186>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L191>
<L187>:
	bt
		rbp, rcx
	jae
		<L188>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L188>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r13, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L189>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L189>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L190>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L190>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L186>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L186>
<L191>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm4, xmm4, xmm4
	vpxor
		xmm7, xmm7, xmm7
	vpxor
		xmm0, xmm0, xmm0
	vpxor
		xmm2, xmm2, xmm2
	vmovdqa
		xmmword ptr [rcx + 0x200], xmm3
	vmovdqa
		xmmword ptr [rcx + 0x210], xmm1
	vmovdqa
		xmmword ptr [rcx + 0x220], xmm6
	vmovdqa
		xmmword ptr [rcx + 0x230], xmm5
	xor
		ecx, ecx
	jmp
		<L193>
	nop
		word ptr cs:[rax + rax]
<L192>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L197>
<L193>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L194>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L194>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, rsi, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L195>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L195>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L196>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L196>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L192>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L192>
<L197>:
	xor
		ecx, ecx
	jmp
		<L199>
	nop
		dword ptr [rax]
<L198>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L203>
<L199>:
	bt
		r10, rcx
	jae
		<L200>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L200>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r11, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L201>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L201>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L202>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L202>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L198>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L198>
<L203>:
	xor
		ecx, ecx
	jmp
		<L205>
	nop
<L204>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L209>
<L205>:
	bt
		r15, rcx
	jae
		<L206>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L206>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r14, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L207>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L207>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L208>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L208>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L204>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L204>
<L209>:
	xor
		ecx, ecx
	jmp
		<L211>
	nop
<L210>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L215>
<L211>:
	bt
		rbp, rcx
	jae
		<L212>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L212>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r13, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L213>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L213>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L214>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L214>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L210>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L210>
<L215>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm5, xmm5, xmm5
	vpxor
		xmm6, xmm6, xmm6
	vpxor
		xmm1, xmm1, xmm1
	vpxor
		xmm3, xmm3, xmm3
	vmovdqa
		xmmword ptr [rcx + 0x240], xmm2
	vmovdqa
		xmmword ptr [rcx + 0x250], xmm0
	vmovdqa
		xmmword ptr [rcx + 0x260], xmm7
	vmovdqa
		xmmword ptr [rcx + 0x270], xmm4
	xor
		ecx, ecx
	jmp
		<L217>
	nop
		word ptr cs:[rax + rax]
<L216>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L221>
<L217>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L218>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L218>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, rsi, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L219>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L219>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L220>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L220>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L216>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L216>
<L221>:
	xor
		ecx, ecx
	jmp
		<L223>
	nop
		dword ptr [rax]
<L222>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L227>
<L223>:
	bt
		r10, rcx
	jae
		<L224>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L224>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r11, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L225>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L225>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L226>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L226>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L222>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L222>
<L227>:
	xor
		ecx, ecx
	jmp
		<L229>
	nop
<L228>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L233>
<L229>:
	bt
		r15, rcx
	jae
		<L230>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L230>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r14, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L231>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L231>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L232>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L232>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L228>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L228>
<L233>:
	xor
		ecx, ecx
	jmp
		<L235>
	nop
<L234>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L239>
<L235>:
	bt
		rbp, rcx
	jae
		<L236>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L236>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r13, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L237>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L237>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L238>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L238>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L234>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L234>
<L239>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm4, xmm4, xmm4
	vpxor
		xmm7, xmm7, xmm7
	vpxor
		xmm0, xmm0, xmm0
	vpxor
		xmm2, xmm2, xmm2
	vmovdqa
		xmmword ptr [rcx + 0x280], xmm3
	vmovdqa
		xmmword ptr [rcx + 0x290], xmm1
	vmovdqa
		xmmword ptr [rcx + 0x2a0], xmm6
	vmovdqa
		xmmword ptr [rcx + 0x2b0], xmm5
	xor
		ecx, ecx
	jmp
		<L241>
	nop
		word ptr cs:[rax + rax]
<L240>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L245>
<L241>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L242>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L242>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, rsi, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L243>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L243>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L244>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L244>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L240>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L240>
<L245>:
	xor
		ecx, ecx
	jmp
		<L247>
	nop
		dword ptr [rax]
<L246>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L251>
<L247>:
	bt
		r10, rcx
	jae
		<L248>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L248>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r11, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L249>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L249>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L250>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L250>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L246>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L246>
<L251>:
	xor
		ecx, ecx
	jmp
		<L253>
	nop
<L252>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L257>
<L253>:
	bt
		r15, rcx
	jae
		<L254>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L254>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r14, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L255>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L255>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L256>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L256>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L252>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L252>
<L257>:
	xor
		ecx, ecx
	jmp
		<L259>
	nop
<L258>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L263>
<L259>:
	bt
		rbp, rcx
	jae
		<L260>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L260>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r13, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L261>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L261>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L262>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L262>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L258>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L258>
<L263>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm5, xmm5, xmm5
	vpxor
		xmm6, xmm6, xmm6
	vpxor
		xmm1, xmm1, xmm1
	vpxor
		xmm3, xmm3, xmm3
	vmovdqa
		xmmword ptr [rcx + 0x2c0], xmm2
	vmovdqa
		xmmword ptr [rcx + 0x2d0], xmm0
	vmovdqa
		xmmword ptr [rcx + 0x2e0], xmm7
	vmovdqa
		xmmword ptr [rcx + 0x2f0], xmm4
	xor
		ecx, ecx
	jmp
		<L265>
	nop
		word ptr cs:[rax + rax]
<L264>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L269>
<L265>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L266>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L266>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, rsi, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L267>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L267>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L268>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L268>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L264>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L264>
<L269>:
	xor
		ecx, ecx
	jmp
		<L271>
	nop
		dword ptr [rax]
<L270>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L275>
<L271>:
	bt
		r10, rcx
	jae
		<L272>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L272>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r11, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L273>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L273>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L274>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L274>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L270>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L270>
<L275>:
	xor
		ecx, ecx
	jmp
		<L277>
	nop
<L276>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L281>
<L277>:
	bt
		r15, rcx
	jae
		<L278>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L278>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r14, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L279>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L279>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L280>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L280>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L276>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L276>
<L281>:
	xor
		ecx, ecx
	jmp
		<L283>
	nop
<L282>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L287>
<L283>:
	bt
		rbp, rcx
	jae
		<L284>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L284>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r13, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L285>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L285>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L286>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L286>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L282>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L282>
<L287>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm4, xmm4, xmm4
	vpxor
		xmm7, xmm7, xmm7
	vpxor
		xmm0, xmm0, xmm0
	vpxor
		xmm2, xmm2, xmm2
	vmovdqa
		xmmword ptr [rcx + 0x300], xmm3
	vmovdqa
		xmmword ptr [rcx + 0x310], xmm1
	vmovdqa
		xmmword ptr [rcx + 0x320], xmm6
	vmovdqa
		xmmword ptr [rcx + 0x330], xmm5
	xor
		ecx, ecx
	jmp
		<L289>
	nop
		word ptr cs:[rax + rax]
<L288>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L293>
<L289>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L290>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L290>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, rsi, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L291>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L291>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L292>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L292>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L288>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L288>
<L293>:
	xor
		ecx, ecx
	jmp
		<L295>
	nop
		dword ptr [rax]
<L294>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L299>
<L295>:
	bt
		r10, rcx
	jae
		<L296>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L296>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r11, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L297>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L297>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L298>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L298>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L294>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L294>
<L299>:
	xor
		ecx, ecx
	jmp
		<L301>
	nop
<L300>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L305>
<L301>:
	bt
		r15, rcx
	jae
		<L302>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L302>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r14, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L303>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L303>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L304>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L304>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L300>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L300>
<L305>:
	xor
		ecx, ecx
	jmp
		<L307>
	nop
<L306>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L311>
<L307>:
	bt
		rbp, rcx
	jae
		<L308>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L308>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r13, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L309>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L309>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L310>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L310>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L306>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L306>
<L311>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm5, xmm5, xmm5
	vpxor
		xmm6, xmm6, xmm6
	vpxor
		xmm1, xmm1, xmm1
	vpxor
		xmm3, xmm3, xmm3
	vmovdqa
		xmmword ptr [rcx + 0x340], xmm2
	vmovdqa
		xmmword ptr [rcx + 0x350], xmm0
	vmovdqa
		xmmword ptr [rcx + 0x360], xmm7
	vmovdqa
		xmmword ptr [rcx + 0x370], xmm4
	xor
		ecx, ecx
	jmp
		<L313>
	nop
		word ptr cs:[rax + rax]
<L312>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L317>
<L313>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L314>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L314>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, rsi, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L315>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L315>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L316>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L316>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L312>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L312>
<L317>:
	xor
		ecx, ecx
	jmp
		<L319>
	nop
		dword ptr [rax]
<L318>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L323>
<L319>:
	bt
		r10, rcx
	jae
		<L320>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L320>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r11, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L321>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L321>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L322>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L322>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L318>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L318>
<L323>:
	xor
		ecx, ecx
	jmp
		<L325>
	nop
<L324>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L329>
<L325>:
	bt
		r15, rcx
	jae
		<L326>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L326>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r14, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L327>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L327>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L328>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L328>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L324>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L324>
<L329>:
	xor
		ecx, ecx
	jmp
		<L331>
	nop
<L330>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L335>
<L331>:
	bt
		rbp, rcx
	jae
		<L332>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L332>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r13, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L333>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L333>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L334>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L334>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L330>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L330>
<L335>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm4, xmm4, xmm4
	vpxor
		xmm7, xmm7, xmm7
	vpxor
		xmm0, xmm0, xmm0
	vpxor
		xmm2, xmm2, xmm2
	vmovdqa
		xmmword ptr [rcx + 0x380], xmm3
	vmovdqa
		xmmword ptr [rcx + 0x390], xmm1
	vmovdqa
		xmmword ptr [rcx + 0x3a0], xmm6
	vmovdqa
		xmmword ptr [rcx + 0x3b0], xmm5
	xor
		ecx, ecx
	jmp
		<L337>
	nop
		word ptr cs:[rax + rax]
<L336>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L341>
<L337>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L338>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L338>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, rsi, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L339>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L339>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L340>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L340>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L336>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L336>
<L341>:
	xor
		ecx, ecx
	jmp
		<L343>
	nop
		dword ptr [rax]
<L342>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L347>
<L343>:
	bt
		r10, rcx
	jae
		<L344>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L344>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r11, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L345>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L345>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L346>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L346>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L342>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L342>
<L347>:
	xor
		ecx, ecx
	jmp
		<L349>
	nop
<L348>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L353>
<L349>:
	bt
		r15, rcx
	jae
		<L350>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L350>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r14, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L351>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L351>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L352>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L352>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L348>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L348>
<L353>:
	xor
		ecx, ecx
	jmp
		<L355>
	nop
<L354>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L359>
<L355>:
	bt
		rbp, rcx
	jae
		<L356>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L356>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r13, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L357>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L357>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L358>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L358>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L354>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L354>
<L359>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm5, xmm5, xmm5
	vpxor
		xmm6, xmm6, xmm6
	vpxor
		xmm1, xmm1, xmm1
	vpxor
		xmm3, xmm3, xmm3
	vmovdqa
		xmmword ptr [rcx + 0x3c0], xmm2
	vmovdqa
		xmmword ptr [rcx + 0x3d0], xmm0
	vmovdqa
		xmmword ptr [rcx + 0x3e0], xmm7
	vmovdqa
		xmmword ptr [rcx + 0x3f0], xmm4
	xor
		ecx, ecx
	jmp
		<L361>
	nop
		word ptr cs:[rax + rax]
<L360>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L365>
<L361>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L362>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L362>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, rsi, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L363>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L363>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L364>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L364>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L360>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L360>
<L365>:
	xor
		ecx, ecx
	jmp
		<L367>
	nop
		dword ptr [rax]
<L366>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L371>
<L367>:
	bt
		r10, rcx
	jae
		<L368>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L368>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r11, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L369>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L369>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L370>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L370>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L366>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L366>
<L371>:
	xor
		ecx, ecx
	jmp
		<L373>
	nop
<L372>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L377>
<L373>:
	bt
		r15, rcx
	jae
		<L374>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L374>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r14, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L375>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L375>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L376>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L376>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L372>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L372>
<L377>:
	xor
		ecx, ecx
	jmp
		<L379>
	nop
<L378>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L383>
<L379>:
	bt
		rbp, rcx
	jae
		<L380>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L380>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r13, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L381>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L381>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L382>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L382>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L378>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L378>
<L383>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm4, xmm4, xmm4
	vpxor
		xmm7, xmm7, xmm7
	vpxor
		xmm0, xmm0, xmm0
	vpxor
		xmm2, xmm2, xmm2
	vmovdqa
		xmmword ptr [rcx + 0x400], xmm3
	vmovdqa
		xmmword ptr [rcx + 0x410], xmm1
	vmovdqa
		xmmword ptr [rcx + 0x420], xmm6
	vmovdqa
		xmmword ptr [rcx + 0x430], xmm5
	xor
		ecx, ecx
	jmp
		<L385>
	nop
		word ptr cs:[rax + rax]
<L384>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L389>
<L385>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L386>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L386>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, rsi, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L387>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L387>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L388>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L388>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L384>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L384>
<L389>:
	xor
		ecx, ecx
	jmp
		<L391>
	nop
		dword ptr [rax]
<L390>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L395>
<L391>:
	bt
		r10, rcx
	jae
		<L392>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L392>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r11, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L393>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L393>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L394>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L394>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L390>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L390>
<L395>:
	xor
		ecx, ecx
	jmp
		<L397>
	nop
<L396>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L401>
<L397>:
	bt
		r15, rcx
	jae
		<L398>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L398>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r14, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L399>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L399>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L400>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L400>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L396>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L396>
<L401>:
	xor
		ecx, ecx
	jmp
		<L403>
	nop
<L402>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L407>
<L403>:
	bt
		rbp, rcx
	jae
		<L404>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm6, xmm7
	vpxor
		xmm4, xmm5, xmm4
<L404>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r13, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L405>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L405>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L406>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
<L406>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L402>
	vpxor
		xmm2, xmm2, xmm3
	vpxor
		xmm0, xmm1, xmm0
	vpxor
		xmm7, xmm5, xmm7
	vpxor
		xmm4, xmm6, xmm4
	jmp
		<L402>
<L407>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm5, xmm5, xmm5
	vpxor
		xmm6, xmm6, xmm6
	vpxor
		xmm1, xmm1, xmm1
	vpxor
		xmm3, xmm3, xmm3
	vmovdqa
		xmmword ptr [rcx + 0x440], xmm2
	vmovdqa
		xmmword ptr [rcx + 0x450], xmm0
	vmovdqa
		xmmword ptr [rcx + 0x460], xmm7
	vmovdqa
		xmmword ptr [rcx + 0x470], xmm4
	xor
		ecx, ecx
	jmp
		<L409>
	nop
		word ptr cs:[rax + rax]
<L408>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L413>
<L409>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L410>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L410>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, rsi, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L411>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L411>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L412>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L412>:
	vpxor
		xmm7, xmm0, xmm7
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L408>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L408>
<L413>:
	xor
		ecx, ecx
	jmp
		<L415>
	nop
		dword ptr [rax]
<L414>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L419>
<L415>:
	bt
		r10, rcx
	jae
		<L416>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L416>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r11, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L417>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L417>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L418>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L418>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L414>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L414>
<L419>:
	xor
		ecx, ecx
	jmp
		<L421>
	nop
<L420>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L425>
<L421>:
	bt
		r15, rcx
	jae
		<L422>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L422>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r14, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L423>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L423>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L424>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L424>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L420>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L420>
<L425>:
	xor
		ecx, ecx
	jmp
		<L427>
	nop
<L426>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm4, xmm2, xmm4
	vpxor
		xmm9, xmm0, xmm7
	add
		rcx, 0x4
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm7, xmm8, xmm4
	vprolq
		xmm4, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	cmp
		rcx, 0x40
	je
		<L431>
<L427>:
	bt
		rbp, rcx
	jae
		<L428>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm7, xmm6
	vpxor
		xmm5, xmm4, xmm5
<L428>:
	vpsllq
		xmm8, xmm0, 0x11
	vpxor
		xmm7, xmm2, xmm7
	vpxor
		xmm9, xmm0, xmm4
	shrx
		rdx, r13, rcx
	vpxor
		xmm0, xmm7, xmm0
	vpxor
		xmm4, xmm8, xmm7
	vprolq
		xmm7, xmm9, 0x2d
	vpxor
		xmm2, xmm9, xmm2
	test
		dl, 0x2
	je
		<L429>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L429>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x4
	je
		<L430>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
<L430>:
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm4, xmm2, xmm4
	vpsllq
		xmm8, xmm0, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm2, xmm7, xmm2
	vprolq
		xmm7, xmm7, 0x2d
	vpxor
		xmm0, xmm4, xmm0
	vpxor
		xmm4, xmm8, xmm4
	test
		dl, 0x8
	je
		<L426>
	vpxor
		xmm3, xmm3, xmm2
	vpxor
		xmm1, xmm0, xmm1
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm5, xmm7, xmm5
	jmp
		<L426>
<L431>:
	mov
		rcx, qword ptr [rsp - 0x8]
	vpxor
		xmm0, xmm0, xmm0
	vpxor
		xmm2, xmm2, xmm2
	vpxor
		xmm4, xmm4, xmm4
	vpxor
		xmm7, xmm7, xmm7
	vmovdqa
		xmmword ptr [rcx + 0x480], xmm3
	vmovdqa
		xmmword ptr [rcx + 0x490], xmm1
	vmovdqa
		xmmword ptr [rcx + 0x4a0], xmm6
	vmovdqa
		xmmword ptr [rcx + 0x4b0], xmm5
	xor
		ecx, ecx
	jmp
		<L433>
	nop
		word ptr cs:[rax + rax]
<L432>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L437>
<L433>:
	movabs
		rdx, 0x1000001110110010
	bt
		rdx, rcx
	jae
		<L434>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm6, xmm2
	vpxor
		xmm0, xmm5, xmm0
<L434>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, rsi, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L435>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
<L435>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x4444004440000
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x4
	je
		<L436>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
<L436>:
	vpxor
		xmm6, xmm1, xmm6
	movabs
		rdx, 0x808808008880888
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	shrx
		rdx, rdx, rcx
	test
		dl, 0x8
	je
		<L432>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
	jmp
		<L432>
<L437>:
	xor
		ecx, ecx
	jmp
		<L439>
	nop
		dword ptr [rax]
<L438>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L443>
<L439>:
	bt
		r10, rcx
	jae
		<L440>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm6, xmm2
	vpxor
		xmm0, xmm5, xmm0
<L440>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r11, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L441>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
<L441>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r9, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L442>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
<L442>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r8, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L438>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
	jmp
		<L438>
<L443>:
	xor
		ecx, ecx
	jmp
		<L445>
	nop
<L444>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L449>
<L445>:
	bt
		r15, rcx
	jae
		<L446>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm6, xmm2
	vpxor
		xmm0, xmm5, xmm0
<L446>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r14, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L447>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
<L447>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, r12, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L448>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
<L448>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rbx, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L444>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
	jmp
		<L444>
<L449>:
	xor
		ecx, ecx
	jmp
		<L451>
	nop
<L450>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm5, xmm3, xmm5
	vpxor
		xmm9, xmm1, xmm6
	add
		rcx, 0x4
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm6, xmm8, xmm5
	vprolq
		xmm5, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	cmp
		rcx, 0x40
	je
		<L455>
<L451>:
	bt
		rbp, rcx
	jae
		<L452>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm6, xmm2
	vpxor
		xmm0, xmm5, xmm0
<L452>:
	vpsllq
		xmm8, xmm1, 0x11
	vpxor
		xmm6, xmm3, xmm6
	vpxor
		xmm9, xmm1, xmm5
	shrx
		rdx, r13, rcx
	vpxor
		xmm1, xmm6, xmm1
	vpxor
		xmm5, xmm8, xmm6
	vprolq
		xmm6, xmm9, 0x2d
	vpxor
		xmm3, xmm9, xmm3
	test
		dl, 0x2
	je
		<L453>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
<L453>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rdi, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x4
	je
		<L454>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
<L454>:
	vpxor
		xmm6, xmm1, xmm6
	vpxor
		xmm5, xmm3, xmm5
	vpsllq
		xmm8, xmm1, 0x11
	shrx
		rdx, rax, rcx
	vpxor
		xmm3, xmm6, xmm3
	vprolq
		xmm6, xmm6, 0x2d
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm5, xmm8, xmm5
	test
		dl, 0x8
	je
		<L450>
	vpxor
		xmm7, xmm7, xmm3
	vpxor
		xmm4, xmm1, xmm4
	vpxor
		xmm2, xmm5, xmm2
	vpxor
		xmm0, xmm6, xmm0
	jmp
		<L450>
<L455>:
	mov
		rax, qword ptr [rsp - 0x8]
	vmovdqa
		xmmword ptr [rax + 0x4c0], xmm7
	vmovdqa
		xmmword ptr [rax + 0x4d0], xmm4
	vmovdqa
		xmmword ptr [rax + 0x4e0], xmm2
	vmovdqa
		xmmword ptr [rax + 0x4f0], xmm0
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
