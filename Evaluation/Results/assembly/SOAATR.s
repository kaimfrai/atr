
build/Evaluation/Speed/bin/SOAATR:	file format elf64-x86-64

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
		r14d, byte ptr [rax]
	movzx
		ecx, byte ptr [rax + 0x1]
	add
		r14d, -0x30
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
		edx, [r14 + 4*r14]
	movsx
		ecx, cl
	lea
		r14d, [rcx + 2*rdx - 0x30]
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
		r13d, r14d
	shl
		r13d, 0x4
	mov
		edi, 0x40
	lea
		rax, [r13 + 4*r13]
	lea
		rsi, [r13 + 8*rax]
	call
		<aligned_alloc$plt>
	mov
		esi, 0xaaaaaaab
	mov
		edi, 0x40
	mov
		r12, rax
	imul
		rsi, r13
	shr
		rsi, 0x23
	shl
		rsi, 0x5
	call
		<aligned_alloc$plt>
	test
		ebx, ebx
	je
		<L5>
	vmovaps
		xmm1, xmmword ptr <.LCPI0_5>
	vmovaps
		xmm0, xmmword ptr <.LCPI0_1>
	vmovaps
		xmm3, xmmword ptr <.LCPI0_42>
	vmovdqa
		xmm10, xmmword ptr <.LCPI0_0>
	vmovdqa64
		xmm31, xmmword ptr <.LCPI0_3>
	vmovdqa
		xmm13, xmmword ptr <.LCPI0_4>
	vmovdqa64
		xmm19, xmmword ptr <.LCPI0_7>
	vmovdqa64
		xmm26, xmmword ptr <.LCPI0_11>
	vmovdqa
		xmm8, xmmword ptr <.LCPI0_12>
	vmovdqa
		xmm7, xmmword ptr <.LCPI0_15>
	vmovdqa
		xmm11, xmmword ptr <.LCPI0_16>
	vmovdqa
		xmm14, xmmword ptr <.LCPI0_19>
	vmovdqa64
		xmm16, xmmword ptr <.LCPI0_20>
	vmovdqa64
		xmm22, xmmword ptr <.LCPI0_23>
	vmovdqa64
		xmm17, xmmword ptr <.LCPI0_24>
	vmovdqa64
		xmm23, xmmword ptr <.LCPI0_27>
	vmovdqa64
		xmm20, xmmword ptr <.LCPI0_28>
	vmovdqa64
		xmm25, xmmword ptr <.LCPI0_30>
	vmovdqa64
		xmm28, xmmword ptr <.LCPI0_31>
	vmovdqa64
		xmm29, xmmword ptr <.LCPI0_32>
	vmovdqa64
		xmm30, xmmword ptr <.LCPI0_33>
	vmovdqa
		xmm5, xmmword ptr <.LCPI0_34>
	vmovdqa
		xmm6, xmmword ptr <.LCPI0_36>
	vmovdqa64
		xmm24, xmmword ptr <.LCPI0_37>
	vmovdqa
		xmm15, xmmword ptr <.LCPI0_38>
	vmovdqa
		xmm2, xmmword ptr <.LCPI0_39>
	vmovdqa
		xmm9, xmmword ptr <.LCPI0_40>
	vmovdqa
		xmm12, xmmword ptr <.LCPI0_41>
	mov
		ecx, ebx
	vmovaps
		xmmword ptr [rsp + 0xf0], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_6>
	vmovaps
		xmmword ptr [rsp + 0x80], xmm0
	vmovaps
		xmmword ptr [rsp + 0x30], xmm3
	vmovdqa
		xmm0, xmmword ptr <.LCPI0_2>
	vmovdqa
		xmm3, xmmword ptr <.LCPI0_43>
	vmovaps
		xmmword ptr [rsp + 0x70], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_8>
	vmovaps
		xmmword ptr [rsp + 0xe0], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_9>
	vmovaps
		xmmword ptr [rsp + 0xd0], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_10>
	vmovaps
		xmmword ptr [rsp + 0x60], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_13>
	vmovaps
		xmmword ptr [rsp + 0x50], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_14>
	vmovaps
		xmmword ptr [rsp + 0x120], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_17>
	vmovaps
		xmmword ptr [rsp + 0xc0], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_18>
	vmovaps
		xmmword ptr [rsp + 0x40], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_21>
	vmovaps
		xmmword ptr [rsp + 0xb0], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_22>
	vmovaps
		xmmword ptr [rsp + 0x110], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_25>
	vmovaps
		xmmword ptr [rsp + 0xa0], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_26>
	vmovaps
		xmmword ptr [rsp + 0x100], xmm1
	vmovaps
		xmm1, xmmword ptr <.LCPI0_29>
	vmovaps
		xmmword ptr [rsp + 0x90], xmm1
	vmovdqa
		xmm1, xmmword ptr <.LCPI0_35>
	nop
		word ptr cs:[rax + rax]
<L4>:
	vmovdqa64
		xmm21, xmm1
	vmovdqa
		xmm1, xmm5
	vmovdqa64
		xmm5, xmm28
	vmovdqa64
		xmm28, xmm23
	vmovdqa64
		xmm23, xmm22
	vmovdqa64
		xmm22, xmm14
	vmovdqa
		xmm14, xmmword ptr [rsp + 0x80]
	vmovdqa64
		xmm27, xmm7
	vpxor
		xmm7, xmm10, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x150], xmm10
	vmovdqa64
		xmm18, xmm15
	vmovdqa
		xmm15, xmm3
	vmovdqa
		xmm3, xmmword ptr [rsp + 0xf0]
	vpxor
		xmm10, xmm13, xmmword ptr [rsp + 0x70]
	vpxorq
		xmm2, xmm2, xmm24
	dec
		ecx
	vpsllq
		xmm4, xmm14, 0x11
	vpxorq
		xmm0, xmm31, xmm14
	vpxor
		xmm14, xmm14, xmm7
	vmovdqa64
		xmm31, xmm13
	vpxor
		xmm4, xmm7, xmm4
	vpsllq
		xmm7, xmm3, 0x11
	vmovdqa
		xmmword ptr [rsp + 0x80], xmm14
	vmovdqa
		xmm14, xmmword ptr [rsp + 0xe0]
	vmovdqa
		xmmword ptr [rsp + 0x170], xmm4
	vpxorq
		xmm4, xmm19, xmm3
	vpxor
		xmm3, xmm10, xmm3
	vpxor
		xmm13, xmm14, xmmword ptr [rsp + 0x60]
	vmovdqa
		xmmword ptr [rsp + 0xf0], xmm3
	vpxor
		xmm3, xmm10, xmm7
	vmovdqa
		xmmword ptr [rsp + 0x70], xmm3
	vmovdqa
		xmm3, xmmword ptr [rsp + 0xd0]
	vpxorq
		xmm7, xmm26, xmm3
	vpsllq
		xmm10, xmm3, 0x11
	vpxor
		xmm3, xmm13, xmm3
	vmovdqa64
		xmm26, xmm16
	vmovdqa
		xmmword ptr [rsp + 0xd0], xmm3
	vpxor
		xmm3, xmm13, xmm10
	vpxor
		xmm13, xmm8, xmmword ptr [rsp + 0x120]
	vpxor
		xmm14, xmm14, xmm7
	vmovdqa
		xmmword ptr [rsp + 0x60], xmm3
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x50]
	vmovdqa
		xmmword ptr [rsp + 0xe0], xmm14
	vpxorq
		xmm16, xmm27, xmm3
	vpsllq
		xmm10, xmm3, 0x11
	vpxor
		xmm3, xmm13, xmm3
	vprolq
		xmm27, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x50], xmm3
	vpxor
		xmm3, xmm13, xmm10
	vpxor
		xmm13, xmm11, xmmword ptr [rsp + 0x40]
	vpxorq
		xmm8, xmm16, xmm8
	vmovdqa
		xmmword ptr [rsp + 0x120], xmm3
	vmovdqa
		xmm3, xmmword ptr [rsp + 0xc0]
	vpxorq
		xmm19, xmm22, xmm3
	vpsllq
		xmm10, xmm3, 0x11
	vpxor
		xmm3, xmm13, xmm3
	vmovdqa
		xmmword ptr [rsp + 0xc0], xmm3
	vpxor
		xmm3, xmm13, xmm10
	vpxorq
		xmm13, xmm26, xmmword ptr [rsp + 0x110]
	vprolq
		xmm14, xmm19, 0x2d
	vpxorq
		xmm11, xmm19, xmm11
	vmovdqa64
		xmm19, xmm27
	vmovdqa
		xmmword ptr [rsp + 0x40], xmm3
	vmovdqa
		xmm3, xmmword ptr [rsp + 0xb0]
	vpsllq
		xmm10, xmm3, 0x11
	vpxorq
		xmm22, xmm23, xmm3
	vpxor
		xmm3, xmm13, xmm3
	vmovdqa
		xmmword ptr [rsp + 0xb0], xmm3
	vpxor
		xmm3, xmm13, xmm10
	vpxorq
		xmm13, xmm17, xmmword ptr [rsp + 0x100]
	vmovdqa
		xmmword ptr [rsp + 0x110], xmm3
	vmovdqa
		xmm3, xmmword ptr [rsp + 0xa0]
	vpxorq
		xmm23, xmm28, xmm3
	vpsllq
		xmm10, xmm3, 0x11
	vpxor
		xmm3, xmm13, xmm3
	vmovdqa
		xmmword ptr [rsp + 0xa0], xmm3
	vpxor
		xmm3, xmm13, xmm10
	vpxorq
		xmm13, xmm25, xmm20
	vpxorq
		xmm17, xmm23, xmm17
	vprolq
		xmm23, xmm23, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x100], xmm3
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x90]
	vpsllq
		xmm10, xmm3, 0x11
	vpxorq
		xmm28, xmm5, xmm3
	vpxor
		xmm3, xmm13, xmm3
	vmovdqa
		xmm5, xmm15
	vpxor
		xmm5, xmm12, xmm5
	vpxorq
		xmm25, xmm13, xmm10
	vpxorq
		xmm13, xmm1, xmm29
	vpsllq
		xmm10, xmm30, 0x11
	vpxorq
		xmm1, xmm21, xmm30
	vmovdqa
		xmmword ptr [rsp + 0x90], xmm3
	vpxorq
		xmm20, xmm28, xmm20
	vprolq
		xmm28, xmm28, 0x2d
	vpxorq
		xmm21, xmm13, xmm10
	vpxorq
		xmm30, xmm13, xmm30
	vpxorq
		xmm13, xmm18, xmm6
	vpsllq
		xmm10, xmm24, 0x11
	vpxorq
		xmm29, xmm1, xmm29
	vpxor
		xmm6, xmm2, xmm6
	vprolq
		xmm1, xmm1, 0x2d
	vprolq
		xmm2, xmm2, 0x2d
	vpxor
		xmm15, xmm13, xmm10
	vpxorq
		xmm24, xmm13, xmm24
	vpxor
		xmm13, xmm9, xmmword ptr [rsp + 0x30]
	vpsllq
		xmm10, xmm12, 0x11
	vpxor
		xmm9, xmm9, xmm5
	vpxor
		xmm3, xmm13, xmm10
	vmovdqa
		xmm10, xmmword ptr [rsp + 0x150]
	vpxor
		xmm12, xmm13, xmm12
	vmovdqa64
		xmm13, xmm31
	vprolq
		xmm31, xmm0, 0x2d
	vpxor
		xmm13, xmm13, xmm4
	vprolq
		xmm4, xmm7, 0x2d
	vprolq
		xmm7, xmm16, 0x2d
	vmovdqa64
		xmm16, xmm26
	vpxorq
		xmm16, xmm22, xmm16
	vprolq
		xmm22, xmm22, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x30], xmm3
	vprolq
		xmm3, xmm5, 0x2d
	vmovdqa64
		xmm5, xmm21
	vmovdqa64
		xmm26, xmm4
	vpxor
		xmm10, xmm10, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x170]
	jne
		<L4>
	vmovdqa
		xmmword ptr [rsp + 0x160], xmm11
	vmovdqa
		xmm4, xmm12
	vmovdqa
		xmm11, xmmword ptr [rsp + 0xb0]
	vmovdqa64
		xmm18, xmmword ptr [rsp + 0xa0]
	vmovdqa64
		xmm21, xmmword ptr [rsp + 0x90]
	vmovdqa
		xmm12, xmmword ptr [rsp + 0x30]
	mov
		r9d, ebx
	shl
		r9d, 0x4
	vmovdqa
		xmmword ptr [rsp + 0x140], xmm7
	vmovdqa64
		xmmword ptr [rsp + 0x130], xmm30
	vmovdqa64
		xmm30, xmm24
	vmovdqa
		xmm7, xmm15
	vmovdqa64
		xmm24, xmm1
	vpxor
		xmm1, xmm1, xmm1
	vmovdqa64
		zmmword ptr [rsp + 0x240], zmm1
	cmp
		r9d, r13d
	jne
		<L6>
	jmp
		<L17>
<L5>:
	vmovaps
		xmm2, xmmword ptr <.LCPI0_6>
	vmovaps
		xmm3, xmmword ptr <.LCPI0_8>
	vmovaps
		xmm0, xmmword ptr <.LCPI0_1>
	vmovdqa
		xmm1, xmmword ptr <.LCPI0_5>
	vmovdqa
		xmm10, xmmword ptr <.LCPI0_0>
	vmovdqa64
		xmm31, xmmword ptr <.LCPI0_3>
	vmovdqa
		xmm13, xmmword ptr <.LCPI0_4>
	vmovdqa64
		xmm19, xmmword ptr <.LCPI0_7>
	vmovdqa64
		xmm26, xmmword ptr <.LCPI0_11>
	vmovdqa
		xmm8, xmmword ptr <.LCPI0_12>
	vmovdqa
		xmm14, xmmword ptr <.LCPI0_19>
	vmovdqa64
		xmm16, xmmword ptr <.LCPI0_20>
	vmovdqa
		xmm11, xmmword ptr <.LCPI0_21>
	vmovdqa64
		xmm22, xmmword ptr <.LCPI0_23>
	vmovdqa64
		xmm17, xmmword ptr <.LCPI0_24>
	vmovdqa64
		xmm18, xmmword ptr <.LCPI0_25>
	vmovdqa64
		xmm23, xmmword ptr <.LCPI0_27>
	vmovdqa64
		xmm20, xmmword ptr <.LCPI0_28>
	vmovdqa64
		xmm21, xmmword ptr <.LCPI0_29>
	vmovdqa64
		xmm25, xmmword ptr <.LCPI0_30>
	vmovdqa64
		xmm28, xmmword ptr <.LCPI0_31>
	vmovdqa64
		xmm29, xmmword ptr <.LCPI0_32>
	vmovdqa
		xmm5, xmmword ptr <.LCPI0_34>
	vmovdqa64
		xmm24, xmmword ptr <.LCPI0_35>
	vmovdqa
		xmm6, xmmword ptr <.LCPI0_36>
	vmovdqa64
		xmm30, xmmword ptr <.LCPI0_37>
	vmovdqa
		xmm7, xmmword ptr <.LCPI0_38>
	vmovdqa
		xmm9, xmmword ptr <.LCPI0_40>
	vmovdqa
		xmm4, xmmword ptr <.LCPI0_41>
	vmovdqa
		xmm12, xmmword ptr <.LCPI0_42>
	xor
		r9d, r9d
	vmovaps
		xmmword ptr [rsp + 0x70], xmm2
	vmovaps
		xmm2, xmmword ptr <.LCPI0_9>
	vmovaps
		xmmword ptr [rsp + 0xe0], xmm3
	vmovaps
		xmm3, xmmword ptr <.LCPI0_10>
	vmovaps
		xmmword ptr [rsp + 0x80], xmm0
	vmovdqa
		xmm0, xmmword ptr <.LCPI0_2>
	vmovdqa
		xmmword ptr [rsp + 0xf0], xmm1
	vmovaps
		xmmword ptr [rsp + 0xd0], xmm2
	vmovaps
		xmm2, xmmword ptr <.LCPI0_13>
	vmovaps
		xmmword ptr [rsp + 0x60], xmm3
	vmovaps
		xmm3, xmmword ptr <.LCPI0_14>
	vmovaps
		xmmword ptr [rsp + 0x50], xmm2
	vmovaps
		xmm2, xmmword ptr <.LCPI0_15>
	vmovaps
		xmmword ptr [rsp + 0x120], xmm3
	vmovaps
		xmm3, xmmword ptr <.LCPI0_16>
	vmovaps
		xmmword ptr [rsp + 0x140], xmm2
	vmovaps
		xmm2, xmmword ptr <.LCPI0_17>
	vmovaps
		xmmword ptr [rsp + 0x160], xmm3
	vmovaps
		xmm3, xmmword ptr <.LCPI0_18>
	vmovaps
		xmmword ptr [rsp + 0xc0], xmm2
	vmovaps
		xmm2, xmmword ptr <.LCPI0_22>
	vmovaps
		xmmword ptr [rsp + 0x40], xmm3
	vmovaps
		xmm3, xmmword ptr <.LCPI0_26>
	vmovaps
		xmmword ptr [rsp + 0x110], xmm2
	vmovaps
		xmm2, xmmword ptr <.LCPI0_33>
	vmovaps
		xmmword ptr [rsp + 0x100], xmm3
	vmovdqa
		xmm3, xmmword ptr <.LCPI0_43>
	vmovaps
		xmmword ptr [rsp + 0x130], xmm2
	vmovdqa
		xmm2, xmmword ptr <.LCPI0_39>
	vpxor
		xmm1, xmm1, xmm1
	vmovdqa64
		zmmword ptr [rsp + 0x240], zmm1
	cmp
		r9d, r13d
	je
		<L17>
<L6>:
	vmovdqa64
		xmmword ptr [rsp + 0x190], xmm26
	vmovdqa64
		xmmword ptr [rsp + 0xa0], xmm17
	vmovdqa
		xmmword ptr [rsp + 0x150], xmm10
	vmovdqa
		xmmword ptr [rsp + 0xb0], xmm6
	vmovdqa
		xmmword ptr [rsp + 0x1f0], xmm9
	vmovdqa
		xmmword ptr [rsp + 0x30], xmm12
	vmovdqa
		xmm1, xmm3
	vmovdqa64
		xmm6, xmm24
	vmovdqa64
		xmmword ptr [rsp + 0x1a0], xmm25
	vmovdqa
		xmm3, xmm11
	vmovdqa64
		xmm11, xmm18
	vmovdqa
		xmm10, xmmword ptr [rsp + 0x140]
	vmovdqa64
		xmm26, xmmword ptr [rsp + 0x130]
	vmovdqa
		xmm12, xmmword ptr [rsp + 0xd0]
	vmovdqa
		xmm9, xmmword ptr [rsp + 0x50]
	vmovdqa64
		xmm24, xmmword ptr [rsp + 0x70]
	vmovdqa64
		xmm25, xmmword ptr [rsp + 0x60]
	vmovdqa64
		xmm17, xmmword ptr [rsp + 0xc0]
	vmovdqa64
		xmm18, xmmword ptr [rsp + 0x40]
	movabs
		rcx, 0x1000000000
	sub
		r9d, r13d
	movabs
		rdx, -0x100000000
	vmovdqa
		xmmword ptr [rsp + 0x210], xmm8
	vmovdqa64
		xmmword ptr [rsp + 0x220], xmm29
	vmovdqa
		xmm8, xmm14
	vmovdqa
		xmmword ptr [rsp + 0x1c0], xmm5
	vmovdqa
		xmmword ptr [rsp + 0x1d0], xmm4
	vmovdqa
		xmmword ptr [rsp + 0x1b0], xmm7
	vmovdqa64
		xmm29, xmm19
	vmovdqa64
		xmmword ptr [rsp + 0x90], xmm20
	vmovdqa
		xmmword ptr [rsp + 0x200], xmm13
	vmovdqa
		xmm14, xmm0
	vmovdqa64
		xmmword ptr [rsp + 0x1e0], xmm16
	vmovdqa64
		xmm4, xmm28
	vmovdqa64
		xmm5, xmm23
	vmovdqa64
		xmm7, xmm22
	vmovdqa64
		xmmword ptr [rsp + 0x180], xmm31
	nop
		dword ptr [rax]
<L7>:
	vmovdqa
		xmmword ptr [rsp + 0xc0], xmm6
	vmovdqa
		xmm6, xmmword ptr [rsp + 0x80]
	vmovdqa
		xmmword ptr [rsp + 0x40], xmm8
	vmovdqa
		xmm8, xmmword ptr [rsp + 0xf0]
	vmovdqa
		xmmword ptr [rsp + 0xd0], xmm2
	vmovdqa
		xmmword ptr [rsp + 0x140], xmm10
	vmovdqa
		xmmword ptr [rsp + 0x130], xmm4
	vmovdqa64
		xmm27, xmm29
	vmovdqa64
		xmm29, xmmword ptr [rsp + 0x1d0]
	vmovdqa
		xmmword ptr [rsp + 0x230], xmm5
	vmovdqa64
		xmm20, xmm7
	mov
		rdi, r13
	shr
		rdi, 0x20
	mov
		esi, r13d
	and
		r13, rdx
	lea
		r8, [r12 + 4*rdi]
	vpxor
		xmm15, xmm6, xmmword ptr [rsp + 0x180]
	add
		r13, rcx
	or
		r13, rsi
	add
		r9d, 0x10
	vpsllq
		xmm0, xmm6, 0x2
	vpaddq
		xmm0, xmm0, xmm6
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm2, xmm0, 0x3
	vpaddq
		xmm10, xmm2, xmm0
	vpsllq
		xmm0, xmm8, 0x2
	vpaddq
		xmm0, xmm8, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm2, xmm0, 0x3
	vpaddq
		xmm13, xmm2, xmm0
	vpsllq
		xmm0, xmm12, 0x2
	vpaddq
		xmm0, xmm12, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm2, xmm0, 0x3
	vpaddq
		xmm16, xmm2, xmm0
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
		xmm2, xmm17, 0x2
	vpaddq
		xmm2, xmm2, xmm17
	vpmovzxbd
		zmm0, xmm0 # zmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero,xmm0[8],zero,zero,zero,xmm0[9],zero,zero,zero,xmm0[10],zero,zero,zero,xmm0[11],zero,zero,zero,xmm0[12],zero,zero,zero,xmm0[13],zero,zero,zero,xmm0[14],zero,zero,zero,xmm0[15],zero,zero,zero
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm4, xmm2, 0x3
	vpaddq
		xmm19, xmm4, xmm2
	vpsllq
		xmm2, xmm3, 0x2
	vcvtdq2ps
		zmm0, zmm0
	vpaddq
		xmm2, xmm2, xmm3
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm4, xmm2, 0x3
	vpaddq
		xmm22, xmm4, xmm2
	vpsllq
		xmm2, xmm11, 0x2
	vpaddq
		xmm2, xmm11, xmm2
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm4, xmm2, 0x3
	vpaddq
		xmm23, xmm4, xmm2
	vpsllq
		xmm2, xmm21, 0x2
	vpaddq
		xmm2, xmm2, xmm21
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm4, xmm2, 0x3
	vpaddq
		xmm28, xmm4, xmm2
	vpsllq
		xmm2, xmm26, 0x2
	vpaddq
		xmm2, xmm2, xmm26
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm4, xmm2, 0x3
	vpaddq
		xmm31, xmm4, xmm2
	vpsllq
		xmm2, xmm30, 0x2
	vpaddq
		xmm2, xmm2, xmm30
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm4, xmm2, 0x3
	vpaddq
		xmm4, xmm4, xmm2
	vpsllq
		xmm2, xmm29, 0x2
	vpaddq
		xmm2, xmm2, xmm29
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm5, xmm2, 0x3
	vpaddq
		xmm7, xmm5, xmm2
	vpmovzxbd
		zmm5, xmm13 # zmm5 = xmm13[0],zero,zero,zero,xmm13[1],zero,zero,zero,xmm13[2],zero,zero,zero,xmm13[3],zero,zero,zero,xmm13[4],zero,zero,zero,xmm13[5],zero,zero,zero,xmm13[6],zero,zero,zero,xmm13[7],zero,zero,zero,xmm13[8],zero,zero,zero,xmm13[9],zero,zero,zero,xmm13[10],zero,zero,zero,xmm13[11],zero,zero,zero,xmm13[12],zero,zero,zero,xmm13[13],zero,zero,zero,xmm13[14],zero,zero,zero,xmm13[15],zero,zero,zero
	vpmovzxbw
		ymm2, xmm10 # ymm2 = xmm10[0],zero,xmm10[1],zero,xmm10[2],zero,xmm10[3],zero,xmm10[4],zero,xmm10[5],zero,xmm10[6],zero,xmm10[7],zero,xmm10[8],zero,xmm10[9],zero,xmm10[10],zero,xmm10[11],zero,xmm10[12],zero,xmm10[13],zero,xmm10[14],zero,xmm10[15],zero
	vpmullw
		ymm2, ymm2, ymmword ptr <.LCPI0_44>
	vpxorq
		xmm13, xmm17, xmmword ptr [rsp + 0x40]
	vcvtdq2ps
		zmm5, zmm5
	vmovaps
		zmmword ptr [r12 + 4*rdi], zmm5
	vpmovzxbd
		zmm5, xmm16 # zmm5 = xmm16[0],zero,zero,zero,xmm16[1],zero,zero,zero,xmm16[2],zero,zero,zero,xmm16[3],zero,zero,zero,xmm16[4],zero,zero,zero,xmm16[5],zero,zero,zero,xmm16[6],zero,zero,zero,xmm16[7],zero,zero,zero,xmm16[8],zero,zero,zero,xmm16[9],zero,zero,zero,xmm16[10],zero,zero,zero,xmm16[11],zero,zero,zero,xmm16[12],zero,zero,zero,xmm16[13],zero,zero,zero,xmm16[14],zero,zero,zero,xmm16[15],zero,zero,zero
	vpxorq
		xmm16, xmm20, xmm3
	vmovdqa64
		xmm20, xmmword ptr [rsp + 0x90]
	vpsrlw
		ymm2, ymm2, 0x8
	vcvtdq2ps
		zmm5, zmm5
	vpmovwb
		xmm2, ymm2
	vgf2p8affineqb
		xmm2, xmm2, qword ptr {1to2}, 0x0 <.LCPI0_54>
	vmovaps
		zmmword ptr [r8 + 4*rsi], zmm5
	vpmovzxbd
		zmm5, xmm19 # zmm5 = xmm19[0],zero,zero,zero,xmm19[1],zero,zero,zero,xmm19[2],zero,zero,zero,xmm19[3],zero,zero,zero,xmm19[4],zero,zero,zero,xmm19[5],zero,zero,zero,xmm19[6],zero,zero,zero,xmm19[7],zero,zero,zero,xmm19[8],zero,zero,zero,xmm19[9],zero,zero,zero,xmm19[10],zero,zero,zero,xmm19[11],zero,zero,zero,xmm19[12],zero,zero,zero,xmm19[13],zero,zero,zero,xmm19[14],zero,zero,zero,xmm19[15],zero,zero,zero
	lea
		r8, [r8 + 4*rsi]
	vpxorq
		xmm19, xmm11, xmmword ptr [rsp + 0x230]
	vmovaps
		zmmword ptr [r8 + 4*rsi], zmm0
	vpmovzxbd
		zmm0, xmm22 # zmm0 = xmm22[0],zero,zero,zero,xmm22[1],zero,zero,zero,xmm22[2],zero,zero,zero,xmm22[3],zero,zero,zero,xmm22[4],zero,zero,zero,xmm22[5],zero,zero,zero,xmm22[6],zero,zero,zero,xmm22[7],zero,zero,zero,xmm22[8],zero,zero,zero,xmm22[9],zero,zero,zero,xmm22[10],zero,zero,zero,xmm22[11],zero,zero,zero,xmm22[12],zero,zero,zero,xmm22[13],zero,zero,zero,xmm22[14],zero,zero,zero,xmm22[15],zero,zero,zero
	lea
		r8, [r8 + 4*rsi]
	vpxorq
		xmm22, xmm21, xmmword ptr [rsp + 0x130]
	vcvtdq2ps
		zmm5, zmm5
	vcvtdq2ps
		zmm0, zmm0
	vmovaps
		zmmword ptr [r8 + 4*rsi], zmm5
	vpmovzxbd
		zmm5, xmm23 # zmm5 = xmm23[0],zero,zero,zero,xmm23[1],zero,zero,zero,xmm23[2],zero,zero,zero,xmm23[3],zero,zero,zero,xmm23[4],zero,zero,zero,xmm23[5],zero,zero,zero,xmm23[6],zero,zero,zero,xmm23[7],zero,zero,zero,xmm23[8],zero,zero,zero,xmm23[9],zero,zero,zero,xmm23[10],zero,zero,zero,xmm23[11],zero,zero,zero,xmm23[12],zero,zero,zero,xmm23[13],zero,zero,zero,xmm23[14],zero,zero,zero,xmm23[15],zero,zero,zero
	lea
		r8, [r8 + 4*rsi]
	vpmovzxbw
		ymm2, xmm2 # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero,xmm2[8],zero,xmm2[9],zero,xmm2[10],zero,xmm2[11],zero,xmm2[12],zero,xmm2[13],zero,xmm2[14],zero,xmm2[15],zero
	vpmullw
		ymm2, ymm2, ymmword ptr <.LCPI0_46>
	vpxorq
		xmm23, xmm26, xmmword ptr [rsp + 0xc0]
	vmovaps
		zmmword ptr [r8 + 4*rsi], zmm0
	vpmovzxbd
		zmm0, xmm28 # zmm0 = xmm28[0],zero,zero,zero,xmm28[1],zero,zero,zero,xmm28[2],zero,zero,zero,xmm28[3],zero,zero,zero,xmm28[4],zero,zero,zero,xmm28[5],zero,zero,zero,xmm28[6],zero,zero,zero,xmm28[7],zero,zero,zero,xmm28[8],zero,zero,zero,xmm28[9],zero,zero,zero,xmm28[10],zero,zero,zero,xmm28[11],zero,zero,zero,xmm28[12],zero,zero,zero,xmm28[13],zero,zero,zero,xmm28[14],zero,zero,zero,xmm28[15],zero,zero,zero
	lea
		r8, [r8 + 4*rsi]
	vpxorq
		xmm28, xmm30, xmmword ptr [rsp + 0xd0]
	vcvtdq2ps
		zmm5, zmm5
	vcvtdq2ps
		zmm0, zmm0
	vmovaps
		zmmword ptr [r8 + 4*rsi], zmm5
	vpmovzxbd
		zmm5, xmm31 # zmm5 = xmm31[0],zero,zero,zero,xmm31[1],zero,zero,zero,xmm31[2],zero,zero,zero,xmm31[3],zero,zero,zero,xmm31[4],zero,zero,zero,xmm31[5],zero,zero,zero,xmm31[6],zero,zero,zero,xmm31[7],zero,zero,zero,xmm31[8],zero,zero,zero,xmm31[9],zero,zero,zero,xmm31[10],zero,zero,zero,xmm31[11],zero,zero,zero,xmm31[12],zero,zero,zero,xmm31[13],zero,zero,zero,xmm31[14],zero,zero,zero,xmm31[15],zero,zero,zero
	lea
		r8, [r8 + 4*rsi]
	vmovdqa64
		xmm31, xmm1
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x150]
	vpxorq
		xmm31, xmm31, xmm29
	vmovaps
		zmmword ptr [r8 + 4*rsi], zmm0
	vpmovzxbd
		zmm0, xmm4 # zmm0 = xmm4[0],zero,zero,zero,xmm4[1],zero,zero,zero,xmm4[2],zero,zero,zero,xmm4[3],zero,zero,zero,xmm4[4],zero,zero,zero,xmm4[5],zero,zero,zero,xmm4[6],zero,zero,zero,xmm4[7],zero,zero,zero,xmm4[8],zero,zero,zero,xmm4[9],zero,zero,zero,xmm4[10],zero,zero,zero,xmm4[11],zero,zero,zero,xmm4[12],zero,zero,zero,xmm4[13],zero,zero,zero,xmm4[14],zero,zero,zero,xmm4[15],zero,zero,zero
	vpmovzxbd
		zmm4, xmm7 # zmm4 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero,xmm7[8],zero,zero,zero,xmm7[9],zero,zero,zero,xmm7[10],zero,zero,zero,xmm7[11],zero,zero,zero,xmm7[12],zero,zero,zero,xmm7[13],zero,zero,zero,xmm7[14],zero,zero,zero,xmm7[15],zero,zero,zero
	lea
		r8, [r8 + 4*rsi]
	vpxor
		xmm7, xmm12, xmmword ptr [rsp + 0x190]
	vpmovwb
		xmm2, ymm2
	vcvtdq2ps
		zmm5, zmm5
	vpsubb
		xmm2, xmm10, xmm2
	vpxor
		xmm10, xmm9, xmmword ptr [rsp + 0x140]
	vcvtdq2ps
		zmm0, zmm0
	vcvtdq2ps
		zmm4, zmm4
	vmovaps
		zmmword ptr [r8 + 4*rsi], zmm5
	lea
		r8, [r8 + 4*rsi]
	vmovaps
		zmmword ptr [r8 + 4*rsi], zmm0
	lea
		r8, [r8 + 4*rsi]
	vmovaps
		zmmword ptr [r8 + 4*rsi], zmm4
	lea
		r8, [rsi + 4*rsi]
	vpxor
		xmm4, xmm14, xmm1
	vmovdqa
		xmm14, xmmword ptr [rsp + 0xe0]
	vpxor
		xmm1, xmm15, xmm1
	vmovdqa
		xmmword ptr [rsp + 0x150], xmm1
	vprolq
		xmm1, xmm15, 0x2d
	lea
		r8, [r12 + 8*r8]
	vmovdqa
		xmmword ptr [rsp + 0x180], xmm1
	vprolq
		xmm1, xmm7, 0x2d
	vmovdqa
		xmmword ptr [rdi + r8], xmm2
	vpsllq
		xmm2, xmm6, 0x11
	vpxor
		xmm6, xmm4, xmm6
	vmovdqa
		xmmword ptr [rsp + 0x80], xmm6
	vmovdqa
		xmm6, xmmword ptr [rsp + 0x200]
	vpxor
		xmm0, xmm4, xmm2
	vpxorq
		xmm4, xmm27, xmm8
	vpsllq
		xmm2, xmm8, 0x11
	vmovdqa64
		xmm27, xmmword ptr [rsp + 0xa0]
	vmovdqa
		xmmword ptr [rsp + 0x190], xmm1
	vprolq
		xmm1, xmm31, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x170], xmm0
	vpxorq
		xmm5, xmm24, xmm6
	vmovdqa64
		xmm24, xmmword ptr [rsp + 0x160]
	vpxor
		xmm6, xmm4, xmm6
	vpxor
		xmm8, xmm8, xmm5
	vpxor
		xmm0, xmm5, xmm2
	vpxorq
		xmm5, xmm25, xmm14
	vpsllq
		xmm2, xmm12, 0x11
	vpxor
		xmm14, xmm14, xmm7
	vmovdqa
		xmmword ptr [rsp + 0x200], xmm6
	vprolq
		xmm7, xmm16, 0x2d
	vprolq
		xmm6, xmm23, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0xf0], xmm8
	vmovdqa
		xmm8, xmmword ptr [rsp + 0x210]
	vmovdqa
		xmmword ptr [rsp + 0x70], xmm0
	vpxor
		xmm0, xmm5, xmm2
	vpxor
		xmm12, xmm12, xmm5
	vpsllq
		xmm2, xmm9, 0x11
	vmovdqa
		xmmword ptr [rsp + 0xe0], xmm14
	vmovdqa
		xmm14, xmmword ptr [rsp + 0x170]
	vpxor
		xmm5, xmm8, xmmword ptr [rsp + 0x120]
	vmovdqa
		xmmword ptr [rsp + 0x60], xmm0
	vpxor
		xmm8, xmm10, xmm8
	vprolq
		xmm10, xmm10, 0x2d
	vpxor
		xmm9, xmm9, xmm5
	vpxor
		xmm0, xmm5, xmm2
	vpxorq
		xmm5, xmm18, xmm24
	vpsllq
		xmm2, xmm17, 0x11
	vmovdqa64
		xmm18, xmm12
	vpxorq
		xmm24, xmm13, xmm24
	vmovdqa
		xmmword ptr [rsp + 0x210], xmm8
	vprolq
		xmm8, xmm13, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x50], xmm9
	vmovdqa
		xmm9, xmmword ptr [rsp + 0x1e0]
	vmovdqa
		xmmword ptr [rsp + 0x120], xmm0
	vpxor
		xmm0, xmm5, xmm2
	vpxorq
		xmm25, xmm5, xmm17
	vpsllq
		xmm2, xmm3, 0x11
	vmovdqa64
		xmm17, xmmword ptr [rsp + 0x220]
	vmovdqa64
		xmmword ptr [rsp + 0x160], xmm24
	vmovdqa64
		xmm24, xmmword ptr [rsp + 0x70]
	vpxor
		xmm5, xmm9, xmmword ptr [rsp + 0x110]
	vmovdqa
		xmmword ptr [rsp + 0x40], xmm0
	vpxorq
		xmm9, xmm16, xmm9
	vpxor
		xmm0, xmm5, xmm2
	vpxor
		xmm3, xmm5, xmm3
	vpxorq
		xmm5, xmm27, xmmword ptr [rsp + 0x100]
	vpsllq
		xmm2, xmm11, 0x11
	vmovdqa
		xmmword ptr [rsp + 0x1e0], xmm9
	vmovdqa
		xmm9, xmmword ptr [rsp + 0x50]
	vpxorq
		xmm27, xmm19, xmm27
	vmovdqa
		xmmword ptr [rsp + 0x110], xmm0
	vmovdqa64
		xmmword ptr [rsp + 0xa0], xmm27
	vpxor
		xmm0, xmm5, xmm2
	vpxor
		xmm11, xmm11, xmm5
	vpxorq
		xmm5, xmm20, xmmword ptr [rsp + 0x1a0]
	vpsllq
		xmm2, xmm21, 0x11
	vpxorq
		xmm20, xmm22, xmm20
	vmovdqa
		xmmword ptr [rsp + 0x100], xmm0
	vmovdqa
		xmm12, xmm11
	vmovdqa64
		xmmword ptr [rsp + 0x90], xmm20
	vpxor
		xmm0, xmm5, xmm2
	vpxorq
		xmm21, xmm5, xmm21
	vpxorq
		xmm5, xmm17, xmmword ptr [rsp + 0x1c0]
	vpsllq
		xmm2, xmm26, 0x11
	vpxorq
		xmm17, xmm23, xmm17
	vmovdqa
		xmmword ptr [rsp + 0x1a0], xmm0
	vmovdqa64
		xmm11, xmm21
	vmovdqa64
		xmm21, xmm3
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x1f0]
	vmovdqa64
		xmmword ptr [rsp + 0x220], xmm17
	vmovdqa64
		xmm17, xmm25
	vmovdqa64
		xmm25, xmmword ptr [rsp + 0x60]
	vpxor
		xmm0, xmm5, xmm2
	vpxorq
		xmm26, xmm5, xmm26
	vpsllq
		xmm2, xmm30, 0x11
	vmovdqa
		xmmword ptr [rsp + 0x1c0], xmm0
	vmovdqa64
		xmm0, xmm26
	vmovdqa64
		xmm26, xmmword ptr [rsp + 0xb0]
	vpxorq
		xmm5, xmm26, xmmword ptr [rsp + 0x1b0]
	vpxorq
		xmm26, xmm28, xmm26
	vpxor
		xmm2, xmm5, xmm2
	vpxorq
		xmm30, xmm5, xmm30
	vpxor
		xmm5, xmm3, xmmword ptr [rsp + 0x30]
	vpxorq
		xmm3, xmm31, xmm3
	vmovdqa64
		xmmword ptr [rsp + 0xb0], xmm26
	vmovdqa64
		xmm26, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x1f0], xmm3
	vmovdqa64
		xmm3, xmm21
	vmovdqa64
		xmm21, xmm11
	vmovdqa
		xmm11, xmm12
	vmovdqa64
		xmm12, xmm18
	vmovdqa64
		xmm18, xmmword ptr [rsp + 0x40]
	vmovdqa
		xmmword ptr [rsp + 0x1b0], xmm2
	vpsllq
		xmm2, xmm29, 0x11
	vpxorq
		xmm29, xmm5, xmm29
	vpxor
		xmm2, xmm5, xmm2
	vprolq
		xmm5, xmm19, 0x2d
	vmovdqa64
		xmmword ptr [rsp + 0x1d0], xmm29
	vmovdqa
		xmmword ptr [rsp + 0x30], xmm2
	vprolq
		xmm29, xmm4, 0x2d
	vprolq
		xmm4, xmm22, 0x2d
	vprolq
		xmm2, xmm28, 0x2d
	jne
		<L7>
	cmp
		r13, rcx
	jb
		<L17>
	mov
		qword ptr [rsp + 0x80], rax
	mov
		rax, r13
	shr
		rax, 0x24
	lea
		rdi, [rsp + 0x280]
	mov
		edx, 0x800
	xor
		esi, esi
	mov
		qword ptr [rsp + 0x60], r14
	mov
		qword ptr [rsp + 0x70], rbx
	xor
		r15d, r15d
	mov
		qword ptr [rsp + 0x50], rax
	vzeroupper
	call
		<memset$plt>
	vmovdqa64
		zmm4, zmmword ptr <memset+0x780>
	vpbroadcastd
		zmm5, dword ptr <.LCPI0_48>
	vpbroadcastd
		zmm6, dword ptr <.LCPI0_49>
	vpbroadcastd
		zmm7, dword ptr <.LCPI0_50>
	vpbroadcastd
		zmm8, dword ptr <.LCPI0_51>
	mov
		r10d, r13d
	lea
		rax, [r10 + 4*r10]
	mov
		rdx, r12
	lea
		rcx, [rdx + r10]
	mov
		qword ptr [rsp + 0x40], rdx
	lea
		rbx, [r12 + 8*rax]
	lea
		rax, [r10 + 8*r10]
	shl
		r10, 0x5
	add
		r10, rdx
	lea
		r12, [rax + 2*rax]
	lea
		r14, [rdx + 4*rax]
	mov
		qword ptr [rsp + 0x30], r10
	add
		r12, rcx
<L8>:
	blsi
		eax, dword ptr [rsp + 0x50]
	lea
		r13, [rax + r15]
	test
		eax, eax
	je
		<L14>
	mov
		edx, 0x1
	mov
		edi, 0x1
	xor
		esi, esi
	jmp
		<L10>
	nop
		word ptr cs:[rax + rax]
<L9>:
	movsxd
		rsi, ecx
	inc
		r15
	mov
		edi, ecx
	shl
		rsi, 0x6
	vmovaps
		zmmword ptr [rsp + rsi + 0x280], zmm0
	mov
		esi, 0xfffffffe
	sub
		esi, edx
	inc
		edx
	lzcnt
		r8d, edx
	popcnt
		esi, esi
	sub
		esi, r8d
	cmp
		r15, r13
	je
		<L15>
<L10>:
	mov
		ecx, esi
	mov
		rsi, r15
	shl
		rsi, 0x4
	mov
		r8d, ecx
	vpmovzxbd
		zmm1, xmmword ptr [rbx + rsi]
	mov
		rsi, r15
	shl
		rsi, 0x6
	sub
		r8d, edi
	vpsllvd
		zmm2, zmm5, zmm1
	vpermd
		zmm0, zmm1, zmm4
	vpsllvd
		zmm3, zmm6, zmm1
	vpsllvd
		zmm9, zmm7, zmm1
	vpsllvd
		zmm1, zmm8, zmm1
	vpmovd2m
		k1, zmm2
	vmovaps
		zmm2 {k1} {z}, zmmword ptr [r12 + rsi]
	vpmovd2m
		k1, zmm3
	vblendmps
		zmm3 {k1}, zmm2, zmmword ptr [r10 + rsi]
	vmulps
		zmm0, zmm2, zmm0
	vpmovd2m
		k1, zmm9
	vblendmps
		zmm2 {k1}, zmm2, zmmword ptr [r14 + rsi]
	vpmovd2m
		k1, zmm1
	vmulps
		zmm0, zmm3, zmm0
	vmulps
		zmm0 {k1}, zmm0, zmm2
	jl
		<L9>
	lea
		r9d, [r8 + 0x1]
	movsxd
		rsi, edi
	and
		r9d, 0x7
	je
		<L12>
	mov
		r11d, ecx
	mov
		r10, rsi
	shl
		r10, 0x6
	sub
		r11b, dil
	lea
		r10, [rsp + r10 + 0x280]
	inc
		r11b
	movzx
		edi, r11b
	xor
		r11d, r11d
	and
		edi, 0x7
	shl
		edi, 0x6
	nop
		word ptr cs:[rax + rax]
<L11>:
	vaddps
		zmm0, zmm0, zmmword ptr [r10 + r11]
	add
		r11, 0x40
	cmp
		edi, r11d
	jne
		<L11>
	mov
		r10, qword ptr [rsp + 0x30]
	dec
		r9d
	lea
		rsi, [rsi + r9 + 0x1]
<L12>:
	cmp
		r8d, 0x7
	jb
		<L9>
	mov
		edi, ecx
	sub
		edi, esi
	shl
		rsi, 0x6
	lea
		r8, [rsp + 0x440]
	inc
		edi
	add
		rsi, r8
	nop
		dword ptr [rax]
<L13>:
	vaddps
		zmm0, zmm0, zmmword ptr [rsi - 0x1c0]
	vaddps
		zmm0, zmm0, zmmword ptr [rsi - 0x180]
	vaddps
		zmm0, zmm0, zmmword ptr [rsi - 0x140]
	vaddps
		zmm0, zmm0, zmmword ptr [rsi - 0x100]
	vaddps
		zmm0, zmm0, zmmword ptr [rsi - 0xc0]
	vaddps
		zmm0, zmm0, zmmword ptr [rsi - 0x80]
	vaddps
		zmm0, zmm0, zmmword ptr [rsi - 0x40]
	vaddps
		zmm0, zmm0, zmmword ptr [rsi]
	add
		rsi, 0x200
	add
		edi, -0x8
	jne
		<L13>
	jmp
		<L9>
	nop
		dword ptr [rax + rax]
<L14>:
	mov
		ecx, 0x1
<L15>:
	mov
		rsi, qword ptr [rsp + 0x50]
	movsxd
		rdx, ecx
	shl
		rdx, 0x6
	sub
		esi, eax
	lea
		rax, [rsp + rdx + 0x280]
	mov
		qword ptr [rsp + 0x50], rsi
	je
		<L16>
	vmovdqa64
		zmm0, zmmword ptr [rax]
	mov
		r15, r13
	vmovdqa64
		zmmword ptr [rax + 0x40], zmm0
	test
		ecx, ecx
	js
		<L8>
	mov
		edx, ecx
	shl
		rdx, 0x6
	lea
		rdi, [rsp + 0x280]
	xor
		esi, esi
	add
		rdx, 0x40
	vzeroupper
	call
		<memset$plt>
	vpbroadcastd
		zmm8, dword ptr <.LCPI0_51>
	vpbroadcastd
		zmm7, dword ptr <.LCPI0_50>
	vpbroadcastd
		zmm6, dword ptr <.LCPI0_49>
	vpbroadcastd
		zmm5, dword ptr <.LCPI0_48>
	vmovdqa64
		zmm4, zmmword ptr <memset+0x780>
	mov
		r10, qword ptr [rsp + 0x30]
	mov
		r15, r13
	jmp
		<L8>
<L16>:
	vmovdqa64
		zmm0, zmmword ptr [rax]
	mov
		rbx, qword ptr [rsp + 0x70]
	mov
		r14, qword ptr [rsp + 0x60]
	mov
		r12, qword ptr [rsp + 0x40]
	mov
		rax, qword ptr [rsp + 0x80]
	vmovdqa64
		zmmword ptr [rsp + 0x240], zmm0
<L17>:
	test
		rax, rax
	je
		<L18>
	mov
		rdi, rax
	vzeroupper
	call
		<free$plt>
<L18>:
	test
		r12, r12
	je
		<L19>
	mov
		rdi, r12
	vzeroupper
	call
		<free$plt>
<L19>:
	test
		ebx, ebx
	jne
		<L23>
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
		r14d, 0x30d4
	je
		<L21>
	cmp
		r14d, 0x186a
	jne
		<L20>
	vucomiss
		xmm0, dword ptr <.LCPI0_53>
	jne
		<L22>
<L20>:
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
<L21>:
	vucomiss
		xmm0, dword ptr <.LCPI0_52>
	je
		<L20>
<L22>:
	mov
		edi, 0x4
	vmovss
		dword ptr [rsp + 0x30], xmm0
	vzeroupper
	call
		<__cxa_allocate_exception$plt>
	vmovss
		xmm0, dword ptr [rsp + 0x30]
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
<L23>:
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
