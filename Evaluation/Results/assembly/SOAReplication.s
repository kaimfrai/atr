
build/Evaluation/Speed/bin/SOAReplication:	file format elf64-x86-64

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

<free$plt>:
	mov
		r11d, 0x2

<free@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x28>

<aligned_alloc$plt>:
	mov
		r11d, 0x3

<aligned_alloc@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x30>

<memset$plt>:
	mov
		r11d, 0x4

<memset@plt>:
	jmp
		qword ptr <_GLOBAL_OFFSET_TABLE_+0x38>

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
	mov
		rbp, rsp
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
	and
		rsp, -0x40
	sub
		rsp, 0xac0
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
		word ptr cs:[rax + rax]
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
		r15d, byte ptr [rax]
	movzx
		ecx, byte ptr [rax + 0x1]
	add
		r15d, -0x30
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
		edx, [r15 + 4*r15]
	movsx
		ecx, cl
	lea
		r15d, [rcx + 2*rdx - 0x30]
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
		r14d, r15d
	shl
		r14d, 0x4
	mov
		r12d, 0x40
	mov
		edi, 0x40
	mov
		eax, r14d
	and
		eax, 0x30
	sub
		r12d, eax
	test
		eax, eax
	cmove
		r12d, eax
	add
		r12d, r14d
	lea
		rax, [r12 + 4*r12]
	lea
		rsi, [r12 + 8*rax]
	call
		<aligned_alloc$plt>
	mov
		qword ptr [rsp + 0x28], rax
	test
		ebx, ebx
	je
		<L5>
	vmovaps
		xmm0, xmmword ptr <.LCPI0_1>
	vmovdqa
		xmm10, xmmword ptr <.LCPI0_0>
	vmovdqa
		xmm2, xmmword ptr <.LCPI0_2>
	vmovdqa64
		xmm25, xmmword ptr <.LCPI0_3>
	vmovdqa
		xmm13, xmmword ptr <.LCPI0_4>
	vmovdqa64
		xmm21, xmmword ptr <.LCPI0_6>
	vmovdqa
		xmm11, xmmword ptr <.LCPI0_7>
	vmovdqa64
		xmm17, xmmword ptr <.LCPI0_11>
	vmovdqa
		xmm4, xmmword ptr <.LCPI0_12>
	vmovdqa
		xmm3, xmmword ptr <.LCPI0_14>
	vmovdqa64
		xmm27, xmmword ptr <.LCPI0_15>
	vmovdqa
		xmm6, xmmword ptr <.LCPI0_16>
	vmovdqa
		xmm12, xmmword ptr <.LCPI0_17>
	vmovdqa
		xmm9, xmmword ptr <.LCPI0_18>
	vmovdqa64
		xmm19, xmmword ptr <.LCPI0_19>
	vmovdqa
		xmm15, xmmword ptr <.LCPI0_21>
	vmovdqa64
		xmm22, xmmword ptr <.LCPI0_23>
	vmovdqa64
		xmm18, xmmword ptr <.LCPI0_25>
	vmovdqa
		xmm1, xmmword ptr <.LCPI0_26>
	vmovdqa64
		xmm23, xmmword ptr <.LCPI0_27>
	vmovdqa64
		xmm28, xmmword ptr <.LCPI0_31>
	vmovdqa
		xmm8, xmmword ptr <.LCPI0_32>
	vmovdqa64
		xmm16, xmmword ptr <.LCPI0_33>
	vmovdqa64
		xmm26, xmmword ptr <.LCPI0_34>
	vmovdqa64
		xmm31, xmmword ptr <.LCPI0_35>
	vmovdqa64
		xmm24, xmmword ptr <.LCPI0_36>
	vmovdqa64
		xmm30, xmmword ptr <.LCPI0_37>
	vmovdqa
		xmm7, xmmword ptr <.LCPI0_39>
	vmovdqa64
		xmm29, xmmword ptr <.LCPI0_40>
	vmovdqa
		xmm14, xmmword ptr <.LCPI0_41>
	mov
		eax, ebx
	vmovaps
		xmmword ptr [rsp + 0xf0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_5>
	vmovaps
		xmmword ptr [rsp + 0xe0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_8>
	vmovaps
		xmmword ptr [rsp + 0x40], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_9>
	vmovaps
		xmmword ptr [rsp + 0xd0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_10>
	vmovaps
		xmmword ptr [rsp + 0x110], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_13>
	vmovaps
		xmmword ptr [rsp + 0xc0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_20>
	vmovaps
		xmmword ptr [rsp + 0x10], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_22>
	vmovaps
		xmmword ptr [rsp + 0xa0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_24>
	vmovaps
		xmmword ptr [rsp + 0x60], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_28>
	vmovaps
		xmmword ptr [rsp], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_29>
	vmovaps
		xmmword ptr [rsp + 0x70], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_30>
	vmovaps
		xmmword ptr [rsp + 0x30], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_38>
	vmovaps
		xmmword ptr [rsp + 0x50], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_42>
	vmovaps
		xmmword ptr [rsp + 0x100], xmm0
	vmovdqa
		xmm0, xmmword ptr <.LCPI0_43>
	nop
		dword ptr [rax]
<L4>:
	vmovdqa64
		xmm5, xmm28
	vmovdqa64
		xmm28, xmm1
	vmovdqa
		xmm1, xmmword ptr [rsp + 0xf0]
	vmovdqa
		xmmword ptr [rsp + 0x90], xmm7
	vpxor
		xmm7, xmm10, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x80], xmm0
	vmovdqa64
		xmm20, xmm4
	vmovdqa
		xmmword ptr [rsp + 0x170], xmm10
	vpxorq
		xmm10, xmm21, xmm13
	vmovdqa
		xmmword ptr [rsp + 0x160], xmm13
	vpxorq
		xmm19, xmm19, xmm12
	vpxorq
		xmm22, xmm22, xmm15
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x70]
	vpxorq
		xmm31, xmm31, xmm16
	vpxorq
		xmm23, xmm23, xmm18
	dec
		eax
	vpsllq
		xmm0, xmm1, 0x11
	vpxorq
		xmm4, xmm25, xmm1
	vpxor
		xmm1, xmm7, xmm1
	vmovdqa64
		xmm25, xmmword ptr [rsp + 0x40]
	vmovdqa
		xmmword ptr [rsp + 0xf0], xmm1
	vmovdqa
		xmm1, xmmword ptr [rsp + 0xe0]
	vpxor
		xmm0, xmm7, xmm0
	vpxorq
		xmm13, xmm25, xmmword ptr [rsp + 0x110]
	vmovdqa
		xmmword ptr [rsp + 0x1e0], xmm0
	vpsllq
		xmm7, xmm1, 0x11
	vpxor
		xmm0, xmm11, xmm1
	vpxor
		xmm1, xmm10, xmm1
	vmovdqa
		xmmword ptr [rsp + 0xe0], xmm1
	vpxor
		xmm1, xmm10, xmm7
	vmovdqa
		xmmword ptr [rsp + 0x1d0], xmm1
	vmovdqa
		xmm1, xmmword ptr [rsp + 0xd0]
	vpxorq
		xmm7, xmm17, xmm1
	vpsllq
		xmm10, xmm1, 0x11
	vpxor
		xmm1, xmm13, xmm1
	vmovdqa64
		xmm17, xmmword ptr [rsp]
	vmovdqa
		xmmword ptr [rsp + 0xd0], xmm1
	vpxor
		xmm1, xmm13, xmm10
	vpxorq
		xmm13, xmm3, xmm20
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x10]
	vpxorq
		xmm25, xmm7, xmm25
	vmovdqa
		xmmword ptr [rsp + 0x110], xmm1
	vmovdqa
		xmm1, xmmword ptr [rsp + 0xc0]
	vmovdqa64
		xmmword ptr [rsp + 0x40], xmm25
	vpsllq
		xmm10, xmm1, 0x11
	vpxorq
		xmm27, xmm27, xmm1
	vpxor
		xmm1, xmm13, xmm1
	vmovdqa
		xmmword ptr [rsp + 0xc0], xmm1
	vpxor
		xmm1, xmm13, xmm10
	vpxor
		xmm13, xmm9, xmm6
	vpsllq
		xmm10, xmm12, 0x11
	vmovdqa
		xmm9, xmmword ptr [rsp + 0x60]
	vpxorq
		xmm6, xmm19, xmm6
	vprolq
		xmm19, xmm19, 0x2d
	vpxor
		xmm11, xmm13, xmm10
	vpxor
		xmm12, xmm13, xmm12
	vpxor
		xmm13, xmm3, xmmword ptr [rsp + 0xa0]
	vpsllq
		xmm10, xmm15, 0x11
	vmovdqa
		xmmword ptr [rsp + 0xb0], xmm1
	vpxorq
		xmm3, xmm22, xmm3
	vprolq
		xmm22, xmm22, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x10], xmm3
	vmovdqa
		xmm3, xmmword ptr [rsp + 0xb0]
	vpxor
		xmm1, xmm13, xmm10
	vpxor
		xmm15, xmm13, xmm15
	vpxorq
		xmm13, xmm28, xmm9
	vpsllq
		xmm10, xmm18, 0x11
	vpxorq
		xmm28, xmm5, xmm2
	vpxor
		xmm5, xmm14, xmmword ptr [rsp + 0x80]
	vpxorq
		xmm9, xmm23, xmm9
	vprolq
		xmm23, xmm23, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0xa0], xmm1
	vpxorq
		xmm21, xmm13, xmm18
	vpxor
		xmm1, xmm13, xmm10
	vpxorq
		xmm13, xmm17, xmmword ptr [rsp + 0x30]
	vpsllq
		xmm10, xmm2, 0x11
	vmovdqa64
		xmm18, xmm15
	vmovdqa
		xmm15, xmm12
	vprolq
		xmm12, xmm0, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x60], xmm9
	vmovdqa
		xmm9, xmm11
	vpxorq
		xmm17, xmm28, xmm17
	vprolq
		xmm28, xmm28, 0x2d
	vmovdqa64
		xmmword ptr [rsp], xmm17
	vmovdqa
		xmm11, xmm12
	vmovdqa
		xmm12, xmm15
	vmovdqa64
		xmm15, xmm18
	vmovdqa64
		xmm18, xmm21
	vmovdqa64
		xmm21, xmmword ptr [rsp + 0x1d0]
	vpxor
		xmm2, xmm13, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x70], xmm2
	vpxor
		xmm2, xmm13, xmm10
	vpxorq
		xmm13, xmm26, xmm8
	vpsllq
		xmm10, xmm16, 0x11
	vpxorq
		xmm8, xmm31, xmm8
	vprolq
		xmm31, xmm31, 0x2d
	vpxorq
		xmm26, xmm13, xmm10
	vpxorq
		xmm16, xmm13, xmm16
	vpxorq
		xmm13, xmm24, xmmword ptr [rsp + 0x50]
	vpsllq
		xmm10, xmm30, 0x11
	vmovdqa
		xmmword ptr [rsp + 0x30], xmm2
	vpxorq
		xmm2, xmm30, xmmword ptr [rsp + 0x90]
	vpxor
		xmm10, xmm13, xmm10
	vpxorq
		xmm30, xmm13, xmm30
	vpxorq
		xmm13, xmm29, xmmword ptr [rsp + 0x100]
	vpxorq
		xmm24, xmm2, xmm24
	vpxorq
		xmm29, xmm5, xmm29
	vmovdqa
		xmmword ptr [rsp + 0x50], xmm10
	vpsllq
		xmm10, xmm14, 0x11
	vpxor
		xmm10, xmm13, xmm10
	vpxor
		xmm14, xmm13, xmm14
	vmovdqa
		xmm13, xmmword ptr [rsp + 0x160]
	vmovdqa
		xmmword ptr [rsp + 0x100], xmm10
	vmovdqa
		xmm10, xmmword ptr [rsp + 0x170]
	vpxor
		xmm13, xmm13, xmm0
	vprolq
		xmm0, xmm7, 0x2d
	vprolq
		xmm7, xmm2, 0x2d
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x1e0]
	vpxor
		xmm10, xmm10, xmm4
	vprolq
		xmm4, xmm4, 0x2d
	vmovdqa64
		xmm17, xmm0
	vprolq
		xmm0, xmm5, 0x2d
	vmovdqa64
		xmm25, xmm4
	vpxorq
		xmm4, xmm27, xmm20
	vprolq
		xmm27, xmm27, 0x2d
	jne
		<L4>
	vmovdqa64
		xmmword ptr [rsp + 0x180], xmm26
	vmovdqa
		xmmword ptr [rsp + 0x190], xmm1
	vmovdqa64
		xmmword ptr [rsp + 0x130], xmm31
	vmovdqa
		xmmword ptr [rsp + 0x90], xmm7
	vmovdqa64
		xmmword ptr [rsp + 0x1a0], xmm25
	vmovdqa
		xmmword ptr [rsp + 0x1b0], xmm11
	vmovdqa64
		xmmword ptr [rsp + 0x150], xmm19
	vmovdqa
		xmm5, xmm14
	vmovdqa64
		xmmword ptr [rsp + 0x80], xmm16
	vmovdqa64
		xmm16, xmm21
	vmovdqa64
		xmm31, xmmword ptr [rsp + 0x40]
	vmovdqa64
		xmm19, xmmword ptr [rsp + 0x110]
	vmovdqa64
		xmm26, xmmword ptr [rsp + 0x10]
	vmovdqa
		xmm14, xmmword ptr [rsp + 0x60]
	vmovdqa
		xmm1, xmmword ptr [rsp]
	vmovdqa64
		xmm21, xmmword ptr [rsp + 0x70]
	vmovdqa
		xmm7, xmmword ptr [rsp + 0x30]
	vmovdqa
		xmm11, xmmword ptr [rsp + 0x50]
	vmovdqa64
		xmm25, xmmword ptr [rsp + 0x100]
	mov
		eax, ebx
	shl
		eax, 0x4
	vmovdqa64
		xmmword ptr [rsp + 0x1c0], xmm27
	vmovdqa64
		xmm27, xmm30
	vmovdqa64
		xmm30, xmm17
	vmovdqa64
		xmmword ptr [rsp + 0x120], xmm23
	vmovdqa
		xmmword ptr [rsp + 0x140], xmm9
	sub
		eax, r14d
	vpxord
		xmm23, xmm23, xmm23
	vmovdqa64
		zmmword ptr [rsp + 0x240], zmm23
	jne
		<L6>
	jmp
		<L19>
<L5>:
	vmovaps
		xmm0, xmmword ptr <.LCPI0_1>
	vmovaps
		xmm5, xmmword ptr <.LCPI0_15>
	vmovaps
		xmm7, xmmword ptr <.LCPI0_19>
	vmovdqa
		xmm10, xmmword ptr <.LCPI0_0>
	vmovdqa
		xmm2, xmmword ptr <.LCPI0_2>
	vmovdqa
		xmm13, xmmword ptr <.LCPI0_4>
	vmovdqa64
		xmm16, xmmword ptr <.LCPI0_6>
	vmovdqa64
		xmm31, xmmword ptr <.LCPI0_8>
	vmovdqa64
		xmm19, xmmword ptr <.LCPI0_10>
	vmovdqa64
		xmm30, xmmword ptr <.LCPI0_11>
	vmovdqa
		xmm4, xmmword ptr <.LCPI0_12>
	vmovdqa
		xmm6, xmmword ptr <.LCPI0_16>
	vmovdqa
		xmm12, xmmword ptr <.LCPI0_17>
	vmovdqa64
		xmm26, xmmword ptr <.LCPI0_20>
	vmovdqa
		xmm15, xmmword ptr <.LCPI0_21>
	vmovdqa64
		xmm22, xmmword ptr <.LCPI0_23>
	vmovdqa
		xmm14, xmmword ptr <.LCPI0_24>
	vmovdqa64
		xmm18, xmmword ptr <.LCPI0_25>
	vmovdqa
		xmm1, xmmword ptr <.LCPI0_28>
	vmovdqa64
		xmm21, xmmword ptr <.LCPI0_29>
	vmovdqa64
		xmm28, xmmword ptr <.LCPI0_31>
	vmovdqa
		xmm8, xmmword ptr <.LCPI0_32>
	vmovdqa64
		xmm24, xmmword ptr <.LCPI0_36>
	vmovdqa64
		xmm27, xmmword ptr <.LCPI0_37>
	vmovdqa
		xmm11, xmmword ptr <.LCPI0_38>
	vmovdqa64
		xmm29, xmmword ptr <.LCPI0_40>
	vmovdqa64
		xmm25, xmmword ptr <.LCPI0_42>
	xor
		eax, eax
	vmovaps
		xmmword ptr [rsp + 0xf0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_3>
	vmovaps
		xmmword ptr [rsp + 0x1c0], xmm5
	vmovaps
		xmmword ptr [rsp + 0x150], xmm7
	vmovdqa
		xmm7, xmmword ptr <.LCPI0_30>
	vmovdqa
		xmm5, xmmword ptr <.LCPI0_41>
	vmovaps
		xmmword ptr [rsp + 0x1a0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_5>
	vmovaps
		xmmword ptr [rsp + 0xe0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_7>
	vmovaps
		xmmword ptr [rsp + 0x1b0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_9>
	vmovaps
		xmmword ptr [rsp + 0xd0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_13>
	vmovaps
		xmmword ptr [rsp + 0xc0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_14>
	vmovaps
		xmmword ptr [rsp + 0xb0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_18>
	vmovaps
		xmmword ptr [rsp + 0x140], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_22>
	vmovaps
		xmmword ptr [rsp + 0xa0], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_26>
	vmovaps
		xmmword ptr [rsp + 0x190], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_27>
	vmovaps
		xmmword ptr [rsp + 0x120], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_33>
	vmovaps
		xmmword ptr [rsp + 0x80], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_34>
	vmovaps
		xmmword ptr [rsp + 0x180], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_35>
	vmovaps
		xmmword ptr [rsp + 0x130], xmm0
	vmovaps
		xmm0, xmmword ptr <.LCPI0_39>
	vmovaps
		xmmword ptr [rsp + 0x90], xmm0
	vmovdqa
		xmm0, xmmword ptr <.LCPI0_43>
	sub
		eax, r14d
	vpxord
		xmm23, xmm23, xmm23
	vmovdqa64
		zmmword ptr [rsp + 0x240], zmm23
	je
		<L19>
<L6>:
	vmovdqa64
		xmmword ptr [rsp + 0x200], xmm24
	vmovdqa
		xmmword ptr [rsp + 0x70], xmm8
	vmovdqa
		xmmword ptr [rsp + 0x50], xmm11
	vmovdqa64
		xmm24, xmm2
	vmovdqa64
		xmmword ptr [rsp + 0x10], xmm26
	vmovdqa64
		xmm17, xmm30
	vmovdqa
		xmmword ptr [rsp + 0x220], xmm4
	vmovdqa64
		xmm20, xmmword ptr [rsp + 0xb0]
	vmovdqa64
		xmm30, xmmword ptr [rsp + 0x140]
	vmovdqa64
		xmm26, xmmword ptr [rsp + 0xa0]
	vmovdqa
		xmm11, xmmword ptr [rsp + 0x80]
	vmovdqa
		xmm8, xmmword ptr [rsp + 0x120]
	vmovdqa
		xmm9, xmmword ptr [rsp + 0x150]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x90]
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x130]
	mov
		rdi, qword ptr [rsp + 0x28]
	movabs
		rcx, 0x1000000000
	movabs
		r13, 0x1fffffffe0
	movabs
		rdx, 0x3fffffffc
	vmovdqa64
		xmm3, xmm25
	vmovdqa
		xmmword ptr [rsp + 0x170], xmm10
	vmovdqa
		xmmword ptr [rsp + 0x230], xmm6
	vmovdqa
		xmmword ptr [rsp + 0x1f0], xmm5
	vmovdqa64
		xmmword ptr [rsp + 0x210], xmm29
	vmovdqa
		xmmword ptr [rsp + 0x160], xmm13
	vmovdqa
		xmmword ptr [rsp + 0x60], xmm14
	vmovdqa64
		xmm10, xmm22
	vmovdqa
		xmmword ptr [rsp], xmm1
	vmovdqa64
		xmm5, xmm28
	vmovdqa64
		xmmword ptr [rsp + 0x40], xmm31
	vmovdqa64
		xmm6, xmm16
	vmovdqa64
		xmm25, xmm19
	vmovdqa
		xmmword ptr [rsp + 0x30], xmm7
	lea
		rsi, [rcx - 0x10]
	nop
		word ptr [rax + rax]
<L7>:
	vmovdqa
		xmm1, xmmword ptr [rsp + 0xf0]
	vmovdqa
		xmmword ptr [rsp + 0x120], xmm8
	vmovdqa
		xmm8, xmmword ptr [rsp + 0xe0]
	vmovdqa
		xmmword ptr [rsp + 0x80], xmm0
	vmovdqa
		xmm14, xmmword ptr [rsp + 0xd0]
	vmovdqa
		xmmword ptr [rsp + 0x90], xmm2
	vmovdqa
		xmmword ptr [rsp + 0x150], xmm9
	vmovdqa
		xmm9, xmmword ptr [rsp + 0xc0]
	vmovdqa
		xmmword ptr [rsp + 0x130], xmm4
	vmovdqa
		xmmword ptr [rsp + 0xb0], xmm5
	vmovdqa
		xmmword ptr [rsp + 0x100], xmm3
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x1f0]
	vmovdqa64
		xmm29, xmm10
	mov
		r8, r12
	shr
		r8, 0x1e
	lea
		r9, [4*r12]
	mov
		r14d, r12d
	mov
		r10, r12
	shl
		r10, 0x4
	lea
		r11, [r14 + 8*r14]
	and
		r8, rdx
	and
		r10, rsi
	and
		r9, rdx
	vpsllq
		xmm0, xmm1, 0x2
	vpaddq
		xmm0, xmm0, xmm1
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm2, xmm0, 0x3
	vpaddq
		xmm22, xmm2, xmm0
	vpsllq
		xmm0, xmm8, 0x2
	vpaddq
		xmm0, xmm8, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm2, xmm0, 0x3
	vpaddq
		xmm7, xmm2, xmm0
	vpsllq
		xmm0, xmm14, 0x2
	vpaddq
		xmm0, xmm14, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm2, xmm0, 0x3
	vpaddq
		xmm28, xmm2, xmm0
	vpsllq
		xmm0, xmm9, 0x2
	vpaddq
		xmm0, xmm9, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm2, xmm0, 0x3
	vpaddq
		xmm0, xmm2, xmm0
	vpsllq
		xmm2, xmm12, 0x2
	vpaddq
		xmm2, xmm12, xmm2
	vpmovzxbd
		zmm0, xmm0 # zmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero,xmm0[8],zero,zero,zero,xmm0[9],zero,zero,zero,xmm0[10],zero,zero,zero,xmm0[11],zero,zero,zero,xmm0[12],zero,zero,zero,xmm0[13],zero,zero,zero,xmm0[14],zero,zero,zero,xmm0[15],zero,zero,zero
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm4, xmm2, 0x3
	vpaddq
		xmm16, xmm4, xmm2
	vpsllq
		xmm2, xmm15, 0x2
	vcvtdq2ps
		zmm0, zmm0
	vpaddq
		xmm2, xmm15, xmm2
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm4, xmm2, 0x3
	vpaddq
		xmm19, xmm4, xmm2
	vpsllq
		xmm2, xmm18, 0x2
	vpaddq
		xmm2, xmm2, xmm18
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm4, xmm2, 0x3
	vpaddq
		xmm4, xmm4, xmm2
	vpsllq
		xmm2, xmm21, 0x2
	vpaddq
		xmm2, xmm2, xmm21
	vpmovzxbd
		zmm4, xmm4 # zmm4 = xmm4[0],zero,zero,zero,xmm4[1],zero,zero,zero,xmm4[2],zero,zero,zero,xmm4[3],zero,zero,zero,xmm4[4],zero,zero,zero,xmm4[5],zero,zero,zero,xmm4[6],zero,zero,zero,xmm4[7],zero,zero,zero,xmm4[8],zero,zero,zero,xmm4[9],zero,zero,zero,xmm4[10],zero,zero,zero,xmm4[11],zero,zero,zero,xmm4[12],zero,zero,zero,xmm4[13],zero,zero,zero,xmm4[14],zero,zero,zero,xmm4[15],zero,zero,zero
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm5, xmm2, 0x3
	vpaddq
		xmm23, xmm5, xmm2
	vpsllq
		xmm2, xmm11, 0x2
	vcvtdq2ps
		zmm4, zmm4
	vpaddq
		xmm2, xmm11, xmm2
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm5, xmm2, 0x3
	vpaddq
		xmm31, xmm5, xmm2
	vpsllq
		xmm2, xmm27, 0x2
	vpaddq
		xmm2, xmm2, xmm27
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm5, xmm2, 0x3
	vpaddq
		xmm13, xmm5, xmm2
	vpsllq
		xmm2, xmm3, 0x2
	vpaddq
		xmm2, xmm2, xmm3
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm5, xmm2, 0x3
	vpaddq
		xmm10, xmm5, xmm2
	vpmovzxbd
		zmm5, xmm7 # zmm5 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero,xmm7[8],zero,zero,zero,xmm7[9],zero,zero,zero,xmm7[10],zero,zero,zero,xmm7[11],zero,zero,zero,xmm7[12],zero,zero,zero,xmm7[13],zero,zero,zero,xmm7[14],zero,zero,zero,xmm7[15],zero,zero,zero
	vpmovzxbw
		ymm2, xmm22 # ymm2 = xmm22[0],zero,xmm22[1],zero,xmm22[2],zero,xmm22[3],zero,xmm22[4],zero,xmm22[5],zero,xmm22[6],zero,xmm22[7],zero,xmm22[8],zero,xmm22[9],zero,xmm22[10],zero,xmm22[11],zero,xmm22[12],zero,xmm22[13],zero,xmm22[14],zero,xmm22[15],zero
	vpmullw
		ymm2, ymm2, ymmword ptr <.LCPI0_44>
	vmovdqa64
		xmm7, xmm17
	vmovdqa64
		xmm17, xmmword ptr [rsp + 0x170]
	vcvtdq2ps
		zmm5, zmm5
	vmovaps
		zmmword ptr [rdi + r8], zmm5
	vpmovzxbd
		zmm5, xmm28 # zmm5 = xmm28[0],zero,zero,zero,xmm28[1],zero,zero,zero,xmm28[2],zero,zero,zero,xmm28[3],zero,zero,zero,xmm28[4],zero,zero,zero,xmm28[5],zero,zero,zero,xmm28[6],zero,zero,zero,xmm28[7],zero,zero,zero,xmm28[8],zero,zero,zero,xmm28[9],zero,zero,zero,xmm28[10],zero,zero,zero,xmm28[11],zero,zero,zero,xmm28[12],zero,zero,zero,xmm28[13],zero,zero,zero,xmm28[14],zero,zero,zero,xmm28[15],zero,zero,zero
	lea
		r8, [rdi + r8]
	vpxorq
		xmm28, xmm27, xmmword ptr [rsp + 0x90]
	vpsrlw
		ymm2, ymm2, 0x8
	vcvtdq2ps
		zmm5, zmm5
	vpmovwb
		xmm2, ymm2
	vgf2p8affineqb
		xmm2, xmm2, qword ptr {1to2}, 0x0 <.LCPI0_53>
	vmovaps
		zmmword ptr [r9 + r8], zmm5
	vmovaps
		zmmword ptr [r8 + 8*r14], zmm0
	vpmovzxbd
		zmm0, xmm16 # zmm0 = xmm16[0],zero,zero,zero,xmm16[1],zero,zero,zero,xmm16[2],zero,zero,zero,xmm16[3],zero,zero,zero,xmm16[4],zero,zero,zero,xmm16[5],zero,zero,zero,xmm16[6],zero,zero,zero,xmm16[7],zero,zero,zero,xmm16[8],zero,zero,zero,xmm16[9],zero,zero,zero,xmm16[10],zero,zero,zero,xmm16[11],zero,zero,zero,xmm16[12],zero,zero,zero,xmm16[13],zero,zero,zero,xmm16[14],zero,zero,zero,xmm16[15],zero,zero,zero
	lea
		r9, [r14 + 2*r14]
	vpxorq
		xmm16, xmm29, xmm15
	vmovdqa64
		xmm29, xmmword ptr [rsp + 0x200]
	vcvtdq2ps
		zmm0, zmm0
	vmovaps
		zmmword ptr [r8 + 4*r9], zmm0
	vpmovzxbd
		zmm0, xmm19 # zmm0 = xmm19[0],zero,zero,zero,xmm19[1],zero,zero,zero,xmm19[2],zero,zero,zero,xmm19[3],zero,zero,zero,xmm19[4],zero,zero,zero,xmm19[5],zero,zero,zero,xmm19[6],zero,zero,zero,xmm19[7],zero,zero,zero,xmm19[8],zero,zero,zero,xmm19[9],zero,zero,zero,xmm19[10],zero,zero,zero,xmm19[11],zero,zero,zero,xmm19[12],zero,zero,zero,xmm19[13],zero,zero,zero,xmm19[14],zero,zero,zero,xmm19[15],zero,zero,zero
	vpmovzxbw
		ymm2, xmm2 # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero,xmm2[8],zero,xmm2[9],zero,xmm2[10],zero,xmm2[11],zero,xmm2[12],zero,xmm2[13],zero,xmm2[14],zero,xmm2[15],zero
	vpmullw
		ymm2, ymm2, ymmword ptr <.LCPI0_46>
	vpxorq
		xmm19, xmm18, xmmword ptr [rsp + 0x120]
	vcvtdq2ps
		zmm0, zmm0
	vmovaps
		zmmword ptr [r10 + r8], zmm0
	vpmovzxbd
		zmm0, xmm23 # zmm0 = xmm23[0],zero,zero,zero,xmm23[1],zero,zero,zero,xmm23[2],zero,zero,zero,xmm23[3],zero,zero,zero,xmm23[4],zero,zero,zero,xmm23[5],zero,zero,zero,xmm23[6],zero,zero,zero,xmm23[7],zero,zero,zero,xmm23[8],zero,zero,zero,xmm23[9],zero,zero,zero,xmm23[10],zero,zero,zero,xmm23[11],zero,zero,zero,xmm23[12],zero,zero,zero,xmm23[13],zero,zero,zero,xmm23[14],zero,zero,zero,xmm23[15],zero,zero,zero
	lea
		r10, [r14 + 4*r14]
	vpxorq
		xmm23, xmm11, xmmword ptr [rsp + 0x130]
	vmovaps
		zmmword ptr [r8 + 4*r10], zmm4
	vpmovzxbd
		zmm4, xmm31 # zmm4 = xmm31[0],zero,zero,zero,xmm31[1],zero,zero,zero,xmm31[2],zero,zero,zero,xmm31[3],zero,zero,zero,xmm31[4],zero,zero,zero,xmm31[5],zero,zero,zero,xmm31[6],zero,zero,zero,xmm31[7],zero,zero,zero,xmm31[8],zero,zero,zero,xmm31[9],zero,zero,zero,xmm31[10],zero,zero,zero,xmm31[11],zero,zero,zero,xmm31[12],zero,zero,zero,xmm31[13],zero,zero,zero,xmm31[14],zero,zero,zero,xmm31[15],zero,zero,zero
	vpxorq
		xmm31, xmm3, xmmword ptr [rsp + 0x80]
	vpmovwb
		xmm2, ymm2
	vcvtdq2ps
		zmm0, zmm0
	vpsubb
		xmm2, xmm22, xmm2
	vpxorq
		xmm22, xmm21, xmmword ptr [rsp + 0xb0]
	vcvtdq2ps
		zmm4, zmm4
	vmovaps
		zmmword ptr [r8 + 8*r9], zmm0
	vpmovzxbd
		zmm0, xmm13 # zmm0 = xmm13[0],zero,zero,zero,xmm13[1],zero,zero,zero,xmm13[2],zero,zero,zero,xmm13[3],zero,zero,zero,xmm13[4],zero,zero,zero,xmm13[5],zero,zero,zero,xmm13[6],zero,zero,zero,xmm13[7],zero,zero,zero,xmm13[8],zero,zero,zero,xmm13[9],zero,zero,zero,xmm13[10],zero,zero,zero,xmm13[11],zero,zero,zero,xmm13[12],zero,zero,zero,xmm13[13],zero,zero,zero,xmm13[14],zero,zero,zero,xmm13[15],zero,zero,zero
	lea
		r9, [r11 + 2*r11]
	vpxor
		xmm13, xmm12, xmmword ptr [rsp + 0x150]
	add
		r9, r14
	vmovaps
		zmmword ptr [r8 + r9], zmm4
	mov
		r9, r12
	shl
		r9, 0x5
	vcvtdq2ps
		zmm0, zmm0
	and
		r9, r13
	vmovaps
		zmmword ptr [r9 + r8], zmm0
	vpmovzxbd
		zmm0, xmm10 # zmm0 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero,xmm10[8],zero,zero,zero,xmm10[9],zero,zero,zero,xmm10[10],zero,zero,zero,xmm10[11],zero,zero,zero,xmm10[12],zero,zero,zero,xmm10[13],zero,zero,zero,xmm10[14],zero,zero,zero,xmm10[15],zero,zero,zero
	lea
		r9, [rdi + 8*r10]
	vpxor
		xmm10, xmm1, xmmword ptr [rsp + 0x1a0]
	vcvtdq2ps
		zmm0, zmm0
	vmovaps
		zmmword ptr [r8 + 4*r11], zmm0
	mov
		r11, r12
	shr
		r11, 0x20
	vpsllq
		xmm0, xmm1, 0x11
	movabs
		r8, -0x100000000
	vmovdqa
		xmmword ptr [r11 + r9], xmm2
	vpxorq
		xmm2, xmm24, xmm17
	vmovdqa64
		xmm24, xmmword ptr [rsp + 0x160]
	and
		r12, r8
	vpxorq
		xmm17, xmm10, xmm17
	vpxor
		xmm1, xmm2, xmm1
	vpxor
		xmm0, xmm2, xmm0
	vpsllq
		xmm2, xmm8, 0x11
	add
		r12, rcx
	vmovdqa64
		xmmword ptr [rsp + 0x170], xmm17
	vmovdqa
		xmmword ptr [rsp + 0xf0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x1e0], xmm0
	vpxor
		xmm0, xmm8, xmmword ptr [rsp + 0x1b0]
	or
		r12, r14
	add
		eax, 0x10
	vpxorq
		xmm4, xmm6, xmm24
	vmovdqa
		xmm6, xmmword ptr [rsp + 0x40]
	vpxor
		xmm1, xmm4, xmm2
	vpsllq
		xmm2, xmm14, 0x11
	vpxor
		xmm8, xmm8, xmm4
	vpxor
		xmm4, xmm14, xmm7
	vpxor
		xmm7, xmm9, xmmword ptr [rsp + 0x1c0]
	vmovdqa
		xmmword ptr [rsp + 0x1d0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0xe0], xmm8
	vmovdqa
		xmm8, xmmword ptr [rsp + 0x60]
	vpxorq
		xmm24, xmm0, xmm24
	vprolq
		xmm0, xmm0, 0x2d
	vprolq
		xmm17, xmm4, 0x2d
	vmovdqa64
		xmmword ptr [rsp + 0x160], xmm24
	vmovdqa64
		xmm24, xmmword ptr [rsp + 0x1e0]
	vmovdqa
		xmmword ptr [rsp + 0x1b0], xmm0
	vpxorq
		xmm5, xmm25, xmm6
	vmovdqa64
		xmm25, xmmword ptr [rsp + 0x220]
	vpxor
		xmm6, xmm4, xmm6
	vprolq
		xmm4, xmm23, 0x2d
	vpxor
		xmm1, xmm5, xmm2
	vpxor
		xmm14, xmm14, xmm5
	vpsllq
		xmm2, xmm9, 0x11
	vmovdqa
		xmmword ptr [rsp + 0x40], xmm6
	vmovdqa
		xmm6, xmmword ptr [rsp + 0x1d0]
	vprolq
		xmm0, xmm7, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0xd0], xmm14
	vmovdqa
		xmm14, xmmword ptr [rsp + 0x10]
	vmovdqa
		xmmword ptr [rsp + 0x110], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x1c0], xmm0
	vprolq
		xmm0, xmm31, 0x2d
	vpxorq
		xmm5, xmm20, xmm25
	vmovdqa64
		xmm20, xmmword ptr [rsp + 0x230]
	vpxorq
		xmm25, xmm7, xmm25
	vpxor
		xmm9, xmm9, xmm5
	vmovdqa64
		xmmword ptr [rsp + 0x220], xmm25
	vmovdqa64
		xmm25, xmmword ptr [rsp + 0x110]
	vmovdqa
		xmmword ptr [rsp + 0xc0], xmm9
	vpxor
		xmm9, xmm5, xmm2
	vpsllq
		xmm2, xmm12, 0x11
	vpxorq
		xmm5, xmm30, xmm20
	vpxorq
		xmm20, xmm13, xmm20
	vpxor
		xmm1, xmm5, xmm2
	vpxor
		xmm12, xmm12, xmm5
	vpxorq
		xmm5, xmm26, xmm14
	vpsllq
		xmm2, xmm15, 0x11
	vmovdqa64
		xmm26, xmmword ptr [rsp]
	vmovdqa64
		xmmword ptr [rsp + 0x230], xmm20
	vmovdqa64
		xmm20, xmm9
	vprolq
		xmm9, xmm13, 0x2d
	vpxorq
		xmm14, xmm16, xmm14
	vmovdqa
		xmmword ptr [rsp + 0x140], xmm1
	vpxor
		xmm1, xmm5, xmm2
	vpxor
		xmm15, xmm15, xmm5
	vpxor
		xmm5, xmm8, xmmword ptr [rsp + 0x190]
	vpsllq
		xmm2, xmm18, 0x11
	vpxorq
		xmm8, xmm19, xmm8
	vmovdqa
		xmmword ptr [rsp + 0x10], xmm14
	vmovdqa
		xmmword ptr [rsp + 0xa0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x60], xmm8
	vprolq
		xmm8, xmm19, 0x2d
	vpxor
		xmm1, xmm5, xmm2
	vpxorq
		xmm18, xmm5, xmm18
	vpxorq
		xmm5, xmm26, xmmword ptr [rsp + 0x30]
	vpsllq
		xmm2, xmm21, 0x11
	vpxorq
		xmm26, xmm22, xmm26
	vmovdqa
		xmmword ptr [rsp + 0x190], xmm1
	vmovdqa64
		xmmword ptr [rsp], xmm26
	vmovdqa64
		xmm26, xmmword ptr [rsp + 0xa0]
	vpxorq
		xmm30, xmm5, xmm21
	vmovdqa64
		xmm21, xmmword ptr [rsp + 0x70]
	vpxor
		xmm1, xmm5, xmm2
	vpsllq
		xmm2, xmm11, 0x11
	vpxorq
		xmm5, xmm21, xmmword ptr [rsp + 0x180]
	vmovdqa
		xmmword ptr [rsp + 0x30], xmm1
	vpxorq
		xmm21, xmm23, xmm21
	vpxor
		xmm1, xmm5, xmm2
	vpxor
		xmm11, xmm11, xmm5
	vpxorq
		xmm5, xmm29, xmmword ptr [rsp + 0x50]
	vpsllq
		xmm2, xmm27, 0x11
	vmovdqa64
		xmmword ptr [rsp + 0x70], xmm21
	vmovdqa64
		xmm21, xmm30
	vmovdqa64
		xmm30, xmmword ptr [rsp + 0x140]
	vpxorq
		xmm29, xmm28, xmm29
	vmovdqa
		xmmword ptr [rsp + 0x180], xmm1
	vmovdqa64
		xmmword ptr [rsp + 0x200], xmm29
	vpxor
		xmm1, xmm5, xmm2
	vpxorq
		xmm27, xmm5, xmm27
	vpsllq
		xmm2, xmm3, 0x11
	vmovdqa
		xmmword ptr [rsp + 0x50], xmm1
	vmovdqa
		xmm1, xmm11
	vmovdqa
		xmm11, xmmword ptr [rsp + 0x210]
	vpxor
		xmm5, xmm11, xmmword ptr [rsp + 0x100]
	vpxorq
		xmm11, xmm31, xmm11
	vpxor
		xmm3, xmm5, xmm3
	vmovdqa
		xmmword ptr [rsp + 0x210], xmm11
	vmovdqa
		xmm11, xmm1
	vmovdqa
		xmmword ptr [rsp + 0x1f0], xmm3
	vpxor
		xmm3, xmm5, xmm2
	vprolq
		xmm2, xmm10, 0x2d
	vprolq
		xmm10, xmm16, 0x2d
	vprolq
		xmm5, xmm22, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x1a0], xmm2
	vprolq
		xmm2, xmm28, 0x2d
	jne
		<L7>
	cmp
		r12, rcx
	jb
		<L20>
	mov
		qword ptr [rsp + 0x40], rbx
	mov
		ebx, r12d
	shr
		r12, 0x24
	mov
		edx, 0x800
	mov
		qword ptr [rsp + 0x30], r15
	jmp
		<L9>
	nop
		dword ptr [rax + rax]
<L8>:
	mov
		edx, edi
	shl
		rdx, 0x6
	add
		rdx, 0x40
<L9>:
	lea
		rdi, [rsp + 0x280]
	xor
		esi, esi
	vzeroupper
	call
		<memset$plt>
	vmovdqa64
		zmm5, zmmword ptr <memset+0x780>
	vpbroadcastd
		zmm6, dword ptr <.LCPI0_48>
	vpbroadcastd
		zmm7, dword ptr <.LCPI0_49>
	vpbroadcastd
		zmm8, dword ptr <.LCPI0_50>
	mov
		rax, rbx
	nop
		word ptr [rax + rax]
<L10>:
	blsi
		ebx, r12d
	movabs
		rcx, -0x100000000
	mov
		r14, rax
	mov
		edi, 0x1
	mov
		qword ptr [rsp + 0x60], r12
	and
		r14, rcx
	mov
		qword ptr [rsp + 0x50], rbx
	shl
		rbx, 0x24
	mov
		ecx, eax
	mov
		qword ptr [rsp + 0x10], rcx
	add
		rbx, r14
	mov
		rcx, rbx
	xor
		rcx, rax
	shr
		rcx, 0x20
	jne
		<L12>
<L11>:
	movsxd
		rax, edi
	mov
		r12, qword ptr [rsp + 0x60]
	shl
		rax, 0x6
	sub
		r12d, dword ptr [rsp + 0x50]
	lea
		rax, [rsp + rax + 0x280]
	je
		<L18>
	vmovdqa64
		zmm0, zmmword ptr [rax]
	or
		rbx, qword ptr [rsp + 0x10]
	vmovdqa64
		zmmword ptr [rax + 0x40], zmm0
	mov
		rax, rbx
	test
		edi, edi
	js
		<L10>
	jmp
		<L8>
	nop
		dword ptr [rax + rax]
<L12>:
	mov
		rdx, qword ptr [rsp + 0x10]
	mov
		rdi, qword ptr [rsp + 0x28]
	mov
		rsi, rax
	shl
		rax, 0x5
	shr
		rsi, 0x20
	mov
		r11d, 0x1
	mov
		r15d, 0x1
	and
		rax, r13
	lea
		rcx, [rdx + 4*rdx]
	add
		rax, rdi
	mov
		qword ptr [rsp], rax
	lea
		r8, [rdi + 8*rcx]
	lea
		rcx, [rdx + 8*rdx]
	add
		rdx, rdi
	lea
		r9, [rcx + 2*rcx]
	lea
		r10, [rdi + 4*rcx]
	xor
		ecx, ecx
	add
		r9, rdx
	jmp
		<L14>
	nop
		dword ptr [rax]
<L13>:
	movsxd
		rcx, edi
	lea
		edx, [r11 + 0x1]
	add
		esi, 0x10
	mov
		r15d, edi
	shl
		rcx, 0x6
	mov
		r14, rsi
	shl
		r14, 0x20
	vmovaps
		zmmword ptr [rsp + rcx + 0x280], zmm0
	mov
		ecx, 0xfffffffe
	sub
		ecx, r11d
	lzcnt
		r11d, edx
	popcnt
		ecx, ecx
	sub
		ecx, r11d
	mov
		r11d, edx
	cmp
		r14, rbx
	je
		<L11>
<L14>:
	mov
		edi, ecx
	mov
		rcx, r14
	shr
		rcx, 0x20
	shr
		r14, 0x1e
	mov
		r12d, edi
	sub
		r12d, r15d
	vpmovzxbd
		zmm0, xmmword ptr [r8 + rcx]
	vmovaps
		zmm9, zmmword ptr [r9 + r14]
	vpsllvd
		zmm2, zmm6, zmm0
	vpermd
		zmm1, zmm0, zmm5
	vpsllvd
		zmm3, zmm7, zmm0
	vpsllvd
		zmm0, zmm8, zmm0
	vpmovd2m
		k1, zmm2
	vblendmps
		zmm4 {k1}, zmm9, zmmword ptr [rax + r14]
	vpmovd2m
		k1, zmm3
	vblendmps
		zmm3 {k1}, zmm9, zmmword ptr [r10 + r14]
	vpmovd2m
		k1, zmm0
	vmulps
		zmm1, zmm9, zmm1
	vmulps
		zmm1, zmm1, zmm4
	vmulps
		zmm0, zmm1, zmm3
	vmovaps
		zmm0 {k1}, zmm1
	jl
		<L13>
	lea
		ecx, [r12 + 0x1]
	movsxd
		r14, r15d
	and
		ecx, 0x7
	je
		<L16>
	mov
		rax, rbx
	mov
		rbx, r9
	mov
		r9, r10
	mov
		r10, r8
	mov
		r8, r13
	mov
		r13d, edi
	mov
		rdx, r14
	shl
		rdx, 0x6
	sub
		r13b, r15b
	lea
		rdx, [rsp + rdx + 0x280]
	inc
		r13b
	movzx
		r15d, r13b
	xor
		r13d, r13d
	and
		r15d, 0x7
	shl
		r15d, 0x6
	nop
		word ptr [rax + rax]
<L15>:
	vaddps
		zmm0, zmm0, zmmword ptr [rdx + r13]
	add
		r13, 0x40
	cmp
		r15d, r13d
	jne
		<L15>
	mov
		r13, r8
	mov
		r8, r10
	mov
		r10, r9
	mov
		r9, rbx
	mov
		rbx, rax
	mov
		rax, qword ptr [rsp]
	dec
		ecx
	lea
		r14, [r14 + rcx + 0x1]
<L16>:
	cmp
		r12d, 0x7
	jb
		<L13>
	mov
		ecx, edi
	sub
		ecx, r14d
	shl
		r14, 0x6
	lea
		rdx, [rsp + 0x440]
	inc
		ecx
	add
		r14, rdx
	nop
		word ptr [rax + rax]
<L17>:
	vaddps
		zmm0, zmm0, zmmword ptr [r14 - 0x1c0]
	vaddps
		zmm0, zmm0, zmmword ptr [r14 - 0x180]
	vaddps
		zmm0, zmm0, zmmword ptr [r14 - 0x140]
	vaddps
		zmm0, zmm0, zmmword ptr [r14 - 0x100]
	vaddps
		zmm0, zmm0, zmmword ptr [r14 - 0xc0]
	vaddps
		zmm0, zmm0, zmmword ptr [r14 - 0x80]
	vaddps
		zmm0, zmm0, zmmword ptr [r14 - 0x40]
	vaddps
		zmm0, zmm0, zmmword ptr [r14]
	add
		r14, 0x200
	add
		ecx, -0x8
	jne
		<L17>
	jmp
		<L13>
<L18>:
	vmovdqa64
		zmm0, zmmword ptr [rax]
	mov
		rbx, qword ptr [rsp + 0x40]
	mov
		r15, qword ptr [rsp + 0x30]
	vmovdqa64
		zmmword ptr [rsp + 0x240], zmm0
<L19>:
	mov
		rdi, qword ptr [rsp + 0x28]
<L20>:
	vzeroupper
	call
		<free$plt>
	test
		ebx, ebx
	jne
		<L24>
	vmovaps
		zmm1, zmmword ptr [rsp + 0x240]
	vextractf64x4
		ymm0, zmm1, 0x1
	vaddps
		ymm0, ymm0, ymm1
	vextractf128
		xmm1, ymm0, 0x1
	vaddps
		xmm0, xmm1, xmm0
	vshufpd
		xmm1, xmm0, xmm0, 0x1 # xmm1 = xmm0[1,0]
	vaddps
		xmm0, xmm0, xmm1
	vmovshdup
		xmm1, xmm0 # xmm1 = xmm0[1,1,3,3]
	vaddss
		xmm0, xmm0, xmm1
	cmp
		r15d, 0x30d4
	je
		<L22>
	cmp
		r15d, 0x186a
	jne
		<L21>
	vucomiss
		xmm0, dword ptr <.LCPI0_52>
	jne
		<L23>
<L21>:
	xor
		eax, eax
	lea
		rsp, [rbp - 0x28]
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
<L22>:
	vucomiss
		xmm0, dword ptr <.LCPI0_51>
	je
		<L21>
<L23>:
	mov
		edi, 0x4
	vmovss
		dword ptr [rsp], xmm0
	vzeroupper
	call
		<__cxa_allocate_exception$plt>
	vmovss
		xmm0, dword ptr [rsp]
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
<L24>:
	mov
		edi, 0x4
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
