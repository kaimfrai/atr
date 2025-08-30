
build/Evaluation/Speed/bin/Polymorphic:	file format elf64-x86-64

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

<strcmp$plt>:
	mov
		r11d, 0x9

<strcmp@plt>:
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
		rsp, 0x848
	mov
		rcx, qword ptr [rsi + 0x8]
	mov
		rax, qword ptr [rsi + 0x10]
	movsx
		rbx, byte ptr [rcx]
	movzx
		edx, byte ptr [rcx + 0x1]
	add
		rbx, -0x30
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
		rsi, [rbx + 4*rbx]
	movsx
		rdx, dl
	lea
		rbx, [rdx + 2*rsi - 0x30]
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
		rcx, 0x7
	shl
		r15, 0x4
	lea
		rdi, [rcx + 4*rcx]
	call
		<_ZnamRKSt9nothrow_t$plt>
	movabs
		rcx, -0x61c8864680b583eb
	vmovq
		xmm1, rbx
	lea
		rdi, [rsp + 0xd0]
	mov
		r13, rax
	add
		rcx, rbx
	vmovq
		xmm0, rcx
	vpunpcklqdq
		xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
	call
		<RandomGenerators<20ul>::RandomGenerators<0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>(Meta::Random::Splitmix64<2ul>, std::integer_sequence<unsigned long, 0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>)>
	mov
		qword ptr [rsp + 0x5d0], 0x0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xe0]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x120]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x160]
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x1a0]
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
		xmmword ptr [rsp + 0x5e0], xmm0
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
		xmmword ptr [rsp + 0x5f0], xmm0
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
		xmmword ptr [rsp + 0x600], xmm0
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
		xmmword ptr [rsp + 0x610], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x1e0]
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
		xmmword ptr [rsp + 0x620], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x220]
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
		xmmword ptr [rsp + 0x630], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x260]
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
		xmmword ptr [rsp + 0x640], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x2a0]
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
		xmm0, xmmword ptr [rsp + 0x2e0]
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
		xmmword ptr [rsp + 0x660], xmm0
	vmovdqa
		xmmword ptr [rsp + 0xb0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x320]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x360]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x3a0]
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x3e0]
	vpsllq
		xmm4, xmm0, 0x2
	vpaddq
		xmm0, xmm4, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm4, xmm0, 0x3
	vpaddq
		xmm16, xmm4, xmm0
	vpsllq
		xmm0, xmm1, 0x2
	vpaddq
		xmm0, xmm0, xmm1
	vmovdqa64
		xmmword ptr [rsp + 0x670], xmm16
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm17, xmm1, xmm0
	vpsllq
		xmm0, xmm2, 0x2
	vpaddq
		xmm0, xmm0, xmm2
	vmovdqa64
		xmmword ptr [rsp + 0x680], xmm17
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm18, xmm1, xmm0
	vpsllq
		xmm0, xmm3, 0x2
	vpaddq
		xmm0, xmm0, xmm3
	vmovdqa64
		xmmword ptr [rsp + 0x690], xmm18
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm19, xmm1, xmm0
	vmovdqa64
		xmmword ptr [rsp + 0x6a0], xmm19
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x420]
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
		xmmword ptr [rsp + 0x6b0], xmm20
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x460]
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
		xmmword ptr [rsp + 0x6c0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x4a0]
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
		xmmword ptr [rsp + 0x6d0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x4e0]
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
		xmmword ptr [rsp + 0x6e0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x520]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm14, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x6f0], xmm14
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x560]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm13, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x700], xmm13
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x5a0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm2, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x710], xmm2
	mov
		r12, qword ptr [rsp + 0x5d0]
	cmp
		r12, r15
	jne
		<L7>
	vpxor
		xmm0, xmm0, xmm0
	test
		r13, r13
	je
		<L5>
<L4>:
	mov
		rdi, r13
	vmovdqa
		xmmword ptr [rsp], xmm0
	vzeroupper
	call
		<_ZdaPv$plt>
	vmovdqa
		xmm0, xmmword ptr [rsp]
<L5>:
	cmp
		rbx, 0x2a
	jne
		<L6>
	cmp
		r15, 0x30d40
	je
		<L40>
	cmp
		r15, 0x186a0
	jne
		<L6>
	vucomiss
		xmm0, dword ptr <.LCPI0_6>
	jne
		<L41>
<L6>:
	xor
		eax, eax
	add
		rsp, 0x848
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
<L7>:
	mov
		rax, qword ptr [rsp + 0x5e0]
	vpunpcklqdq
		xmm0, xmm16, xmm17 # xmm0 = xmm16[0],xmm17[0]
	vpunpcklqdq
		xmm5, xmm18, xmm19 # xmm5 = xmm18[0],xmm19[0]
	vpunpcklqdq
		xmm6, xmm20, xmm13 # xmm6 = xmm20[0],xmm13[0]
	xor
		esi, esi
	xor
		ebp, ebp
	jmp
		<L10>
	nop
		word ptr cs:[rax + rax]
<L8>:
	vpsrldq
		xmm0, xmmword ptr [rsp + 0x5e0], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm1, xmmword ptr [rsp + 0x7c0], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm4, xmmword ptr [rsp + 0x790], 0x1 # xmm4 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm16, xmm16, 0x1 # xmm16 = xmm16[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm17, xmm17, 0x1 # xmm17 = xmm17[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm18, xmm18, 0x1 # xmm18 = xmm18[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm19, xmm19, 0x1 # xmm19 = xmm19[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm20, xmm20, 0x1 # xmm20 = xmm20[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm3, xmmword ptr [rsp + 0x7a0], 0x1 # xmm3 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm14, xmm14, 0x1 # xmm14 = xmm14[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm13, xmm13, 0x1 # xmm13 = xmm13[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm2, xmm2, 0x1 # xmm2 = xmm2[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0x5e0], xmm0
	vmovapd
		xmmword ptr [rsp + 0x5f0], xmm1
	vpsrldq
		xmm1, xmmword ptr [rsp + 0x740], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovq
		rax, xmm0
	vmovapd
		xmmword ptr [rsp + 0x600], xmm1
	vpsrldq
		xmm1, xmmword ptr [rsp + 0x750], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0x610], xmm1
	vpsrldq
		xmm1, xmmword ptr [rsp + 0x760], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0x620], xmm1
	vpsrldq
		xmm1, xmmword ptr [rsp + 0x800], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0x630], xmm1
	vpsrldq
		xmm1, xmmword ptr [rsp + 0x770], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0x640], xmm1
	vpsrldq
		xmm1, xmmword ptr [rsp + 0x780], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0x650], xmm1
	vmovapd
		xmm1, xmmword ptr [rsp + 0xb0]
	vpsrldq
		xmm1, xmm1, 0x1 # xmm1 = xmm1[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0x660], xmm1
	vmovapd
		xmmword ptr [rsp + 0x670], xmm16
	vmovapd
		xmmword ptr [rsp + 0x680], xmm17
	vmovapd
		xmmword ptr [rsp + 0x690], xmm18
	vmovapd
		xmmword ptr [rsp + 0x6a0], xmm19
	vmovapd
		xmmword ptr [rsp + 0x6b0], xmm20
	vmovapd
		xmmword ptr [rsp + 0x6c0], xmm4
	vpsrldq
		xmm4, xmmword ptr [rsp + 0x7b0], 0x1 # xmm4 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xb0], xmm1
	vmovapd
		xmmword ptr [rsp + 0x6d0], xmm3
<L9>:
	vunpcklpd
		xmm0, xmm16, xmm17 # xmm0 = xmm16[0],xmm17[0]
	vunpcklpd
		xmm5, xmm18, xmm19 # xmm5 = xmm18[0],xmm19[0]
	vunpcklpd
		xmm6, xmm20, xmm13 # xmm6 = xmm20[0],xmm13[0]
	add
		rsi, 0x28
	inc
		rbp
	vmovapd
		xmmword ptr [rsp + 0x6e0], xmm4
	vmovapd
		xmmword ptr [rsp + 0x6f0], xmm14
	vmovapd
		xmmword ptr [rsp + 0x700], xmm13
	vmovapd
		xmmword ptr [rsp + 0x710], xmm2
	cmp
		r12, r15
	je
		<L16>
<L10>:
	vmovdqu64
		zmm3, zmmword ptr [rsp + 0x5f0]
	vpmovsxbd
		xmm1, dword ptr <.LCPI0_7>
	vmovdqa
		xmmword ptr [rsp + 0x60], xmm2
	vpmovsxbd
		xmm2, dword ptr <.LCPI0_8>
	vmovaps
		xmm4, xmmword ptr [rsp + 0x610]
	movzx
		ecx, al
	vpshufb
		xmm0, xmm0, xmmword ptr <.LCPI0_4>
	vmovdqa
		xmmword ptr [rsp + 0x70], xmm13
	vmovdqa
		xmmword ptr [rsp + 0x80], xmm14
	vmovdqa64
		xmmword ptr [rsp + 0x30], xmm20
	vmovdqa64
		xmmword ptr [rsp + 0x40], xmm19
	vmovdqa64
		xmmword ptr [rsp + 0x50], xmm18
	vmovdqa64
		xmmword ptr [rsp + 0x20], xmm17
	vmovdqa64
		xmmword ptr [rsp], xmm16
	imul
		ecx, ecx, 0x4f
	shr
		ecx, 0xa
	lea
		edx, [rcx + 2*rcx]
	lea
		ecx, [rcx + 4*rdx]
	vpermd
		zmm1, zmm1, zmm3
	vmovdqu64
		zmmword ptr [rsp + 0x7c0], zmm3
	vmovaps
		xmmword ptr [rsp + 0x750], xmm4
	vmovaps
		xmm4, xmmword ptr [rsp + 0x640]
	sub
		al, cl
	lea
		rcx, <strcmp+0x2540>
	movzx
		eax, al
	movsxd
		rax, dword ptr [rcx + 4*rax]
	vpermt2d
		ymm1, ymm2, ymm3
	vmovdqu64
		zmm3, zmmword ptr [rsp + 0x630]
	vpmovsxbd
		xmm2, dword ptr <.LCPI0_9>
	vmovaps
		xmmword ptr [rsp + 0x770], xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x6c0]
	add
		rax, rcx
	vpermd
		zmm2, zmm2, zmm3
	vmovdqu64
		zmmword ptr [rsp + 0x800], zmm3
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x6e0]
	vpinsrd
		xmm2, xmm2, dword ptr [rsp + 0x660], 0x3
	vmovdqa
		xmmword ptr [rsp + 0x790], xmm4
	vmovdqa
		xmmword ptr [rsp + 0x7b0], xmm3
	vinserti128
		ymm1, ymm1, xmm2, 0x1
	vmovaps
		xmm2, xmmword ptr [rsp + 0x600]
	vpandd
		ymm1, ymm1, dword ptr {1to8} <.LCPI0_10>
	vmovaps
		xmmword ptr [rsp + 0x740], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x620]
	vcvtdq2ps
		ymm1, ymm1
	vmovups
		ymmword ptr [rsp + 0x90], ymm1
	vcvtdq2ps
		xmm1, xmm0
	vmovaps
		xmmword ptr [rsp + 0x760], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x650]
	vmovaps
		xmmword ptr [rsp + 0x780], xmm2
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x6d0]
	vmovdqa
		xmmword ptr [rsp + 0x7a0], xmm2
	jmp
		rax
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Circle, float (Bodies3D::ComputeVolumeTag) const>>
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x40
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Circle>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Circle>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
	jmp
		<L14>
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Ellipsoid, float (Bodies3D::ComputeVolumeTag) const>>
	vmovaps
		xmmword ptr [rsp + 0x10], xmm1
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x48
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x10]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipsoid>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
	jmp
		<L12>
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Triangle, float (Bodies3D::ComputeVolumeTag) const>>
	vmovdqa
		xmmword ptr [rsp + 0x10], xmm1
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x48
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Triangle>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Triangle>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
	jmp
		<L11>
	vmovd
		xmm0, dword ptr [rsp + 0x6c0]
	vmovd
		eax, xmm3
	vmovdqa
		xmmword ptr [rsp + 0x730], xmm6
	vmovdqa
		xmmword ptr [rsp + 0x10], xmm5
	vpinsrd
		xmm0, xmm0, dword ptr [rsp + 0x6d0], 0x1
	vpinsrd
		xmm0, xmm0, eax, 0x2
	vpinsrd
		xmm0, xmm0, dword ptr [rsp + 0x6f0], 0x3
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Head, float (Bodies3D::ComputeVolumeTag) const>>
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	vmovdqa
		xmmword ptr [rsp + 0x720], xmm0
	mov
		edi, 0x80
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x730]
	vbroadcastf128
		ymm2, xmmword ptr <.LCPI0_11> # ymm2 = mem[0,1,0,1]
	vmovdqu
		ymm5, ymmword ptr [rsp + 0x90]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Head>+0x10>
	vandps
		xmm2, xmm2, xmmword ptr [rsp + 0x720]
	vpextrb
		ecx, xmm0, 0x0
	vpextrb
		edx, xmm0, 0x8
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x10]
	vpshufd
		xmm4, xmm5, 0xff # xmm4 = xmm5[3,3,3,3]
	vpshufb
		xmm0, xmm0, xmmword ptr <.LCPI0_4>
	vcvtdq2ps
		xmm2, xmm2
	vcvtdq2ps
		xmm0, xmm0
	vcvtsi2ss
		xmm1, xmm15, ecx
	vcvtsi2ss
		xmm3, xmm15, edx
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
	mov
		qword ptr [rax], rcx
	mov
		rcx, rax
	add
		rcx, 0x20
	vmovdqu
		ymmword ptr [rax + 0x20], ymm5
	vmovlps
		qword ptr [rax + 0x40], xmm0
	vmovss
		dword ptr [rax + 0x48], xmm1
	vmovd
		dword ptr [rax + 0x4c], xmm4
	vmovdqu
		xmmword ptr [rax + 0x50], xmm2
	vmovlps
		qword ptr [rax + 0x60], xmm0
	vmovss
		dword ptr [rax + 0x68], xmm1
	vpshufd
		xmm1, xmm2, 0xe9 # xmm1 = xmm2[1,2,2,3]
	vmovd
		dword ptr [rax + 0x6c], xmm4
	vmovss
		dword ptr [rax + 0x70], xmm3
	vmovq
		qword ptr [rax + 0x74], xmm1
	vextractps
		dword ptr [rax + 0x7c], xmm2, 0x3
	jmp
		<L15>
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Cylinder, float (Bodies3D::ComputeVolumeTag) const>>
	vmovaps
		xmmword ptr [rsp + 0x10], xmm1
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x48
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x10]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Cylinder>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cylinder>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
	jmp
		<L13>
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Rectangle, float (Bodies3D::ComputeVolumeTag) const>>
	vmovdqa
		xmmword ptr [rsp + 0x10], xmm1
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x48
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Rectangle>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Rectangle>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
	jmp
		<L11>
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Square, float (Bodies3D::ComputeVolumeTag) const>>
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x40
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Square>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Square>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
	jmp
		<L14>
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Pyramid, float (Bodies3D::ComputeVolumeTag) const>>
	vmovaps
		xmmword ptr [rsp + 0x10], xmm1
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x48
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x10]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Pyramid>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Pyramid>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
	jmp
		<L12>
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Ellipse, float (Bodies3D::ComputeVolumeTag) const>>
	vmovdqa
		xmmword ptr [rsp + 0x10], xmm1
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x48
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipse>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipse>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
<L11>:
	mov
		qword ptr [rax], rcx
	mov
		rcx, rax
	add
		rcx, 0x20
	vmovups
		ymmword ptr [rax + 0x20], ymm0
	vmovaps
		xmm0, xmmword ptr [rsp + 0x10]
	vmovss
		dword ptr [rax + 0x40], xmm0
	jmp
		<L15>
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Cube, float (Bodies3D::ComputeVolumeTag) const>>
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x40
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Cube>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cube>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
	jmp
		<L14>
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Cuboid, float (Bodies3D::ComputeVolumeTag) const>>
	vmovaps
		xmmword ptr [rsp + 0x10], xmm1
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x48
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x10]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Cuboid>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cuboid>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
<L12>:
	mov
		qword ptr [rax], rcx
	mov
		rcx, rax
	add
		rcx, 0x20
	vmovups
		ymmword ptr [rax + 0x20], ymm0
	vmovq
		qword ptr [rax + 0x40], xmm1
	jmp
		<L15>
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Cone, float (Bodies3D::ComputeVolumeTag) const>>
	vmovaps
		xmmword ptr [rsp + 0x10], xmm1
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x48
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x10]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Cone>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Cone>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
<L13>:
	mov
		qword ptr [rax], rcx
	mov
		rcx, rax
	add
		rcx, 0x20
	vmovups
		ymmword ptr [rax + 0x20], ymm0
	vextractps
		dword ptr [rax + 0x40], xmm1, 0x1
	jmp
		<L15>
	lea
		rax, <polymorphic::detail::vtable<Bodies3D::Sphere, float (Bodies3D::ComputeVolumeTag) const>>
	mov
		qword ptr [r13 + rsi], rax
	mov
		byte ptr [r13 + rsi + 0x8], 0x0
	mov
		edi, 0x40
	mov
		r14, rsi
	vzeroupper
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rsp + 0x90]
	movabs
		rcx, 0x100000001
	lea
		rdx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Sphere>+0x10>
	mov
		qword ptr [rax + 0x8], rcx
	lea
		rcx, <vtable for std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>+0x10>
<L14>:
	mov
		qword ptr [rax], rcx
	mov
		rcx, rax
	add
		rcx, 0x20
	vmovups
		ymmword ptr [rax + 0x20], ymm0
<L15>:
	vmovapd
		xmm16, xmmword ptr [rsp]
	vmovapd
		xmm17, xmmword ptr [rsp + 0x20]
	vmovapd
		xmm18, xmmword ptr [rsp + 0x50]
	vmovapd
		xmm19, xmmword ptr [rsp + 0x40]
	vmovapd
		xmm20, xmmword ptr [rsp + 0x30]
	vmovapd
		xmm14, xmmword ptr [rsp + 0x80]
	vmovapd
		xmm13, xmmword ptr [rsp + 0x70]
	vmovapd
		xmm2, xmmword ptr [rsp + 0x60]
	inc
		r12
	mov
		qword ptr [rax + 0x10], rsi
	mov
		qword ptr [r13 + r14 + 0x10], rdx
	mov
		qword ptr [r13 + r14 + 0x18], rax
	mov
		qword ptr [rax + 0x18], rcx
	mov
		rsi, r14
	mov
		qword ptr [r13 + r14 + 0x20], rcx
	mov
		qword ptr [rsp + 0x5d0], r12
	test
		r12b, 0xf
	jne
		<L8>
	vmovdqa
		xmm1, xmmword ptr [rsp + 0xe0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xd0]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x110]
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x120]
	vpxor
		xmm5, xmm0, xmmword ptr [rsp + 0xf0]
	vpxor
		xmm6, xmm1, xmmword ptr [rsp + 0x100]
	vpsllq
		xmm4, xmm1, 0x11
	vpxor
		xmm1, xmm5, xmm1
	vpxor
		xmm0, xmm6, xmm0
	vmovdqa
		xmmword ptr [rsp + 0xe0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0xd0], xmm0
	vpxor
		xmm0, xmm5, xmm4
	vmovdqa
		xmmword ptr [rsp + 0xf0], xmm0
	vprolq
		xmm0, xmm6, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x100], xmm0
	vpsllq
		xmm0, xmm3, 0x11
	vpxor
		xmm1, xmm2, xmmword ptr [rsp + 0x130]
	vpxor
		xmm4, xmm3, xmmword ptr [rsp + 0x140]
	vpxor
		xmm3, xmm1, xmm3
	vpxor
		xmm2, xmm4, xmm2
	vpxor
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x120], xmm3
	vmovdqa
		xmmword ptr [rsp + 0x110], xmm2
	vmovdqa
		xmmword ptr [rsp + 0x130], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x140], xmm0
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x150]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x160]
	vpxor
		xmm3, xmm2, xmmword ptr [rsp + 0x170]
	vpxor
		xmm4, xmm0, xmmword ptr [rsp + 0x180]
	vpsllq
		xmm1, xmm0, 0x11
	vpxor
		xmm0, xmm3, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x160], xmm0
	vpxor
		xmm0, xmm4, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x150], xmm0
	vpxor
		xmm0, xmm3, xmm1
	vmovdqa
		xmmword ptr [rsp + 0x170], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x180], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x1a0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x190]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x1b0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x1c0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x1a0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x190], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x1b0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x1c0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x1e0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x1d0]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x1f0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x200]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x1e0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x1d0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x1f0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x200], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x220]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x210]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x230]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x240]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x220], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x210], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x230], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x240], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x260]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x250]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x270]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x280]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x260], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x250], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x270], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x280], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x2a0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x290]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x2b0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x2c0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x2a0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x290], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x2b0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x2c0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x2e0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x2d0]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x2f0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x300]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x2e0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x2d0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x2f0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x300], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x320]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x310]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x330]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x340]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x320], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x310], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x330], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x340], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x360]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x350]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x370]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x380]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x360], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x350], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x370], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x380], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x3a0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x390]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x3b0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x3c0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x3a0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x390], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x3b0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x3c0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x3e0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x3d0]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x3f0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x400]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x3e0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x3d0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x3f0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x400], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x420]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x410]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x430]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x440]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x420], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x410], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x430], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x440], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x460]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x450]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x470]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x480]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x460], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x450], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x470], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x480], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x4a0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x490]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x4b0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x4c0]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x4a0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x490], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x4b0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x4c0], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x4e0]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x4d0]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x4f0]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x500]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x4e0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x4d0], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x4f0], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x500], xmm0
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x520]
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x510]
	vpxor
		xmm3, xmm0, xmmword ptr [rsp + 0x530]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x540]
	vpsllq
		xmm2, xmm1, 0x11
	vpxor
		xmm1, xmm3, xmm1
	vpxor
		xmm0, xmm4, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x520], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x510], xmm0
	vpxor
		xmm0, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x530], xmm0
	vprolq
		xmm0, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x540], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x560]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x550]
	vpxor
		xmm3, xmm1, xmmword ptr [rsp + 0x570]
	vpxor
		xmm4, xmm0, xmmword ptr [rsp + 0x580]
	vpsllq
		xmm2, xmm0, 0x11
	vpxor
		xmm0, xmm3, xmm0
	vpxor
		xmm1, xmm4, xmm1
	vmovdqa
		xmmword ptr [rsp + 0x560], xmm0
	vmovdqa
		xmmword ptr [rsp + 0x550], xmm1
	vpxor
		xmm1, xmm3, xmm2
	vmovdqa
		xmmword ptr [rsp + 0x570], xmm1
	vprolq
		xmm1, xmm4, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x580], xmm1
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x5a0]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x590]
	vpxor
		xmm4, xmm1, xmmword ptr [rsp + 0x5b0]
	vpxor
		xmm5, xmm2, xmmword ptr [rsp + 0x5c0]
	vpsllq
		xmm3, xmm2, 0x11
	vpxor
		xmm2, xmm4, xmm2
	vpxor
		xmm1, xmm5, xmm1
	vmovdqa
		xmmword ptr [rsp + 0x5a0], xmm2
	vmovdqa
		xmmword ptr [rsp + 0x590], xmm1
	vpxor
		xmm1, xmm4, xmm3
	vmovdqa
		xmmword ptr [rsp + 0x5b0], xmm1
	vprolq
		xmm1, xmm5, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x5c0], xmm1
	vmovdqa
		xmm1, xmmword ptr [rsp + 0xe0]
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x120]
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x160]
	vmovdqa
		xmm6, xmmword ptr [rsp + 0x1a0]
	vpsllq
		xmm5, xmm1, 0x2
	vpaddq
		xmm1, xmm5, xmm1
	vprolq
		xmm1, xmm1, 0x7
	vpsllq
		xmm5, xmm1, 0x3
	vpaddq
		xmm1, xmm5, xmm1
	vpsllq
		xmm5, xmm3, 0x2
	vpaddq
		xmm3, xmm5, xmm3
	vmovq
		rax, xmm1
	vprolq
		xmm3, xmm3, 0x7
	vpsllq
		xmm5, xmm3, 0x3
	vpaddq
		xmm3, xmm5, xmm3
	vpsllq
		xmm5, xmm4, 0x2
	vpaddq
		xmm4, xmm5, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm5, xmm4, 0x3
	vpaddq
		xmm5, xmm5, xmm4
	vpsllq
		xmm4, xmm6, 0x2
	vpaddq
		xmm4, xmm4, xmm6
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm6, xmm4, 0x3
	vpaddq
		xmm6, xmm6, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x1e0]
	vpsllq
		xmm7, xmm4, 0x2
	vpaddq
		xmm4, xmm7, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm7, xmm4, 0x3
	vpaddq
		xmm7, xmm7, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x220]
	vpsllq
		xmm8, xmm4, 0x2
	vpaddq
		xmm4, xmm8, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm8, xmm4, 0x3
	vpaddq
		xmm8, xmm8, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x260]
	vpsllq
		xmm9, xmm4, 0x2
	vpaddq
		xmm4, xmm9, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm9, xmm4, 0x3
	vpaddq
		xmm9, xmm9, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x2a0]
	vpsllq
		xmm10, xmm4, 0x2
	vpaddq
		xmm4, xmm10, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm10, xmm4, 0x3
	vpaddq
		xmm10, xmm10, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x2e0]
	vpsllq
		xmm11, xmm4, 0x2
	vpaddq
		xmm4, xmm11, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm11, xmm4, 0x3
	vpaddq
		xmm15, xmm11, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x320]
	vmovdqa
		xmmword ptr [rsp + 0xb0], xmm15
	vpsllq
		xmm11, xmm4, 0x2
	vpaddq
		xmm4, xmm11, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm11, xmm4, 0x3
	vpaddq
		xmm16, xmm11, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x360]
	vpsllq
		xmm11, xmm4, 0x2
	vpaddq
		xmm4, xmm11, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm11, xmm4, 0x3
	vpaddq
		xmm17, xmm11, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x3a0]
	vpsllq
		xmm11, xmm4, 0x2
	vpaddq
		xmm4, xmm11, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm11, xmm4, 0x3
	vpaddq
		xmm18, xmm11, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x3e0]
	vpsllq
		xmm11, xmm4, 0x2
	vpaddq
		xmm4, xmm11, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm11, xmm4, 0x3
	vpaddq
		xmm19, xmm11, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x420]
	vpsllq
		xmm11, xmm4, 0x2
	vpaddq
		xmm4, xmm11, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm11, xmm4, 0x3
	vpaddq
		xmm20, xmm11, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x460]
	vpsllq
		xmm11, xmm4, 0x2
	vpaddq
		xmm4, xmm11, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm11, xmm4, 0x3
	vpaddq
		xmm11, xmm11, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x4a0]
	vpsllq
		xmm12, xmm4, 0x2
	vpaddq
		xmm4, xmm12, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm12, xmm4, 0x3
	vpaddq
		xmm12, xmm12, xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x4e0]
	vpsllq
		xmm13, xmm4, 0x2
	vpaddq
		xmm4, xmm13, xmm4
	vprolq
		xmm4, xmm4, 0x7
	vpsllq
		xmm13, xmm4, 0x3
	vpaddq
		xmm4, xmm13, xmm4
	vmovdqa
		xmm13, xmmword ptr [rsp + 0x520]
	vmovdqa
		xmmword ptr [rsp + 0x5e0], xmm1
	vmovdqa
		xmmword ptr [rsp + 0x5f0], xmm3
	vmovdqa
		xmmword ptr [rsp + 0x600], xmm5
	vmovdqa
		xmmword ptr [rsp + 0x610], xmm6
	vmovdqa
		xmmword ptr [rsp + 0x620], xmm7
	vmovdqa
		xmmword ptr [rsp + 0x630], xmm8
	vmovdqa
		xmmword ptr [rsp + 0x640], xmm9
	vmovdqa
		xmmword ptr [rsp + 0x650], xmm10
	vmovdqa
		xmmword ptr [rsp + 0x660], xmm15
	vmovdqa64
		xmmword ptr [rsp + 0x670], xmm16
	vmovdqa64
		xmmword ptr [rsp + 0x680], xmm17
	vmovdqa64
		xmmword ptr [rsp + 0x690], xmm18
	vmovdqa64
		xmmword ptr [rsp + 0x6a0], xmm19
	vmovdqa64
		xmmword ptr [rsp + 0x6b0], xmm20
	vmovdqa
		xmmword ptr [rsp + 0x6c0], xmm11
	vmovdqa
		xmmword ptr [rsp + 0x6d0], xmm12
	mov
		r12, qword ptr [rsp + 0x5d0]
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
		xmm13, xmm0, 0x2
	vpaddq
		xmm0, xmm13, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm13, xmm0, 0x3
	vpaddq
		xmm13, xmm13, xmm0
	vpsllq
		xmm0, xmm2, 0x2
	vpaddq
		xmm0, xmm0, xmm2
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm2, xmm0, 0x3
	vpaddq
		xmm2, xmm2, xmm0
	jmp
		<L9>
<L16>:
	shl
		rbp, 0x3
	mov
		qword ptr [rsp + 0x20], rbx
	lea
		rcx, [rbp + 4*rbp]
	mov
		rax, rcx
	shr
		rax, 0x3
	imul
		ebp, eax, 0xcccccccd
	test
		ebp, ebp
	je
		<L38>
	vpxor
		xmm0, xmm0, xmm0
	mov
		qword ptr [rsp + 0x50], r15
	mov
		r15, r13
	mov
		qword ptr [rsp + 0x30], rcx
	mov
		qword ptr [rsp + 0x40], rsi
	vmovdqu64
		zmmword ptr [rsp + 0x110], zmm0
	vmovdqu64
		zmmword ptr [rsp + 0xd0], zmm0
	mov
		qword ptr [rsp + 0xc8], r13
	jmp
		<L19>
	nop
		word ptr [rax + rax]
<L17>:
	vmovss
		xmm0, dword ptr [rsp + 0xd4]
	mov
		r14d, 0x1
	vmovss
		dword ptr [rsp + 0xd8], xmm0
<L18>:
	mov
		eax, r14d
	lea
		rdx, [4*rax + 0x4]
	lea
		rdi, [rsp + 0xd0]
	xor
		esi, esi
	vzeroupper
	call
		<memset$plt>
	mov
		r15, rbx
<L19>:
	blsi
		ecx, ebp
	lea
		rax, [rcx + 4*rcx]
	lea
		rbx, [r15 + 8*rax]
	je
		<L17>
	mov
		r13d, 0x1
	mov
		r12d, 0x1
	mov
		qword ptr [rsp], rcx
	xor
		ecx, ecx
	jmp
		<L21>
	nop
		dword ptr [rax + rax]
<L20>:
	mov
		ecx, 0xfffffffe
	lea
		edx, [r13 + 0x1]
	movsxd
		rax, r14d
	add
		r15, 0x28
	mov
		r12d, r14d
	sub
		ecx, r13d
	lzcnt
		esi, edx
	vmovss
		dword ptr [rsp + 4*rax + 0xd0], xmm0
	mov
		r13d, edx
	popcnt
		ecx, ecx
	sub
		ecx, esi
	cmp
		r15, rbx
	je
		<L29>
<L21>:
	mov
		rax, qword ptr [r15]
	mov
		r14d, ecx
	mov
		rdi, qword ptr [r15 + 0x20]
	movzx
		ecx, byte ptr [r15 + 0x8]
	vzeroupper
	call
		qword ptr [rax + 8*rcx]
	mov
		edx, r14d
	sub
		edx, r12d
	jl
		<L20>
	movsxd
		rax, r12d
	cmp
		edx, 0x7
	jb
		<L27>
	lea
		rcx, [rdx + 0x1]
	cmp
		edx, 0x3f
	jae
		<L22>
	xor
		edx, edx
	jmp
		<L24>
<L22>:
	movabs
		rsi, 0x1ffffffc0
	lea
		r8, [rsp + 0x190]
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
<L23>:
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
		<L23>
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
		<L26>
<L24>:
	movabs
		rsi, 0x1ffffffc0
	lea
		rdi, [rsp + 4*rax + 0xd0]
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
<L25>:
	vaddps
		ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
	add
		rdx, 0x8
	cmp
		rsi, rdx
	jne
		<L25>
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
		<L27>
<L26>:
	add
		rax, rdx
	nop
		word ptr [rax + rax]
<L27>:
	mov
		ecx, r14d
	sub
		ecx, eax
	lea
		rax, [rsp + 4*rax + 0xd0]
	xor
		edx, edx
	inc
		ecx
	nop
		word ptr cs:[rax + rax]
<L28>:
	vaddss
		xmm0, xmm0, dword ptr [rax + 4*rdx]
	inc
		rdx
	cmp
		ecx, edx
	jne
		<L28>
	jmp
		<L20>
	nop
		word ptr cs:[rax + rax]
<L29>:
	sub
		ebp, dword ptr [rsp]
	mov
		r13, qword ptr [rsp + 0xc8]
	je
		<L30>
	vmovss
		dword ptr [rsp + 4*rax + 0xd4], xmm0
	mov
		r15, rbx
	test
		r14d, r14d
	jns
		<L18>
	jmp
		<L19>
<L30>:
	mov
		r15, qword ptr [rsp + 0x50]
	mov
		rsi, qword ptr [rsp + 0x40]
	mov
		rcx, qword ptr [rsp + 0x30]
	test
		rcx, rcx
	je
		<L39>
<L31>:
	mov
		r12, r15
	mov
		r15, qword ptr <__libc_single_threaded$got>
	lea
		rbx, [r13 + 0x18]
	vmovdqa
		xmmword ptr [rsp], xmm0
	jmp
		<L34>
	nop
		word ptr cs:[rax + rax]
<L32>:
	mov
		qword ptr [r14 + 0x8], 0x0
	mov
		rdi, r14
	mov
		rbp, rsi
	mov
		rax, qword ptr [r14]
	vzeroupper
	call
		qword ptr [rax + 0x10]
	mov
		rax, qword ptr [r14]
	mov
		rdi, r14
	call
		qword ptr [rax + 0x18]
	vmovdqa
		xmm0, xmmword ptr [rsp]
	mov
		rsi, rbp
<L33>:
	add
		rbx, 0x28
	add
		rsi, -0x28
	je
		<L37>
<L34>:
	mov
		r14, qword ptr [rbx]
	test
		r14, r14
	je
		<L33>
	mov
		rax, qword ptr [r14 + 0x8]
	movabs
		rcx, 0x100000001
	cmp
		rax, rcx
	je
		<L32>
	cmp
		byte ptr [r15], 0x0
	je
		<L35>
	lea
		ecx, [rax - 0x1]
	mov
		dword ptr [r14 + 0x8], ecx
	cmp
		eax, 0x1
	jne
		<L33>
	jmp
		<L36>
<L35>:
	mov
		eax, 0xffffffff
	lock
	xadd
		dword ptr [r14 + 0x8], eax
	cmp
		eax, 0x1
	jne
		<L33>
<L36>:
	mov
		rdi, r14
	mov
		r14, rsi
	vzeroupper
	call
		<std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release_last_use_cold()>
	vmovdqa
		xmm0, xmmword ptr [rsp]
	mov
		rsi, r14
	jmp
		<L33>
<L37>:
	mov
		rbx, qword ptr [rsp + 0x20]
	mov
		r15, r12
	test
		r13, r13
	jne
		<L4>
	jmp
		<L5>
<L38>:
	vpxor
		xmm0, xmm0, xmm0
	test
		rcx, rcx
	jne
		<L31>
<L39>:
	mov
		rbx, qword ptr [rsp + 0x20]
	test
		r13, r13
	jne
		<L4>
	jmp
		<L5>
<L40>:
	vucomiss
		xmm0, dword ptr <.LCPI0_5>
	je
		<L6>
<L41>:
	mov
		edi, 0x4
	vmovaps
		xmmword ptr [rsp], xmm0
	vzeroupper
	call
		<__cxa_allocate_exception$plt>
	vmovaps
		xmm0, xmmword ptr [rsp]
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

<__clang_call_terminate>:
	push
		rax
	call
		<__cxa_begin_catch$plt>
	call
		<_ZSt9terminatev$plt>

<std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release_last_use_cold()>:
	push
		rbx
	mov
		rax, qword ptr [rdi]
	mov
		rbx, rdi
	call
		qword ptr [rax + 0x10]
	mov
		rax, qword ptr <__libc_single_threaded$got>
	cmp
		byte ptr [rax], 0x0
	je
		<L1>
	mov
		eax, dword ptr [rbx + 0xc]
	lea
		ecx, [rax - 0x1]
	mov
		dword ptr [rbx + 0xc], ecx
	cmp
		eax, 0x1
	jne
		<L2>
<L0>:
	mov
		rax, qword ptr [rbx]
	mov
		rdi, rbx
	pop
		rbx
	jmp
		qword ptr [rax + 0x18]
<L1>:
	mov
		eax, 0xffffffff
	lock
	xadd
		dword ptr [rbx + 0xc], eax
	cmp
		eax, 0x1
	je
		<L0>
<L2>:
	pop
		rbx
	ret

<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x70
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		zmm0, zmmword ptr [rbx + 0x10]
	vmovups
		zmm1, zmmword ptr [rbx + 0x30]
	lea
		rcx, [rax + 0x10]
	lea
		rdx, <vtable for polymorphic::detail::holder_impl<Bodies3D::Head>+0x10>
	mov
		qword ptr [r14], rax
	vmovups
		zmmword ptr [rax + 0x10], zmm0
	vmovups
		zmmword ptr [rax + 0x30], zmm1
	mov
		qword ptr [rax], rdx
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::holder_interface::~holder_interface()>:
	ret

<polymorphic::detail::holder_impl<Bodies3D::Head@Evaluation.CRTP.Head>::~holder_impl()>:
	mov
		esi, 0x70
	jmp
		<_ZdlPvm$plt>

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
	mov
		esi, 0x80
	jmp
		<_ZdlPvm$plt>

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
	mov
		rax, qword ptr [rdi + 0x10]
	add
		rdi, 0x10
	jmp
		qword ptr [rax + 0x8]

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Head>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
	lea
		rcx, <std::_Sp_make_shared_tag::_S_ti()::__tag>
	mov
		rax, rdi
	cmp
		rsi, rcx
	je
		<L1>
	mov
		rdi, qword ptr [rsi + 0x8]
	lea
		rcx, <typeinfo name for std::_Sp_make_shared_tag>
	cmp
		rdi, rcx
	je
		<L1>
	cmp
		byte ptr [rdi], 0x2a
	jne
		<L0>
	xor
		eax, eax
	ret
<L0>:
	push
		rbx
	lea
		rsi, <typeinfo name for std::_Sp_make_shared_tag>
	mov
		rbx, rax
	call
		<strcmp$plt>
	mov
		ecx, eax
	mov
		rax, rbx
	test
		ecx, ecx
	pop
		rbx
	je
		<L1>
	xor
		eax, eax
	ret
<L1>:
	add
		rax, 0x10
	ret

<polymorphic::detail::trampoline<Bodies3D::Head, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm1, xmm0, xmm0
	vmulss
		xmm1, xmm1, dword ptr <.LCPI39_0>
	vmulss
		xmm0, xmm1, xmm0
	ret

<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x38
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipsoid>+0x10>
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		rdx, qword ptr [rbx + 0x30]
	mov
		qword ptr [r14], rax
	mov
		qword ptr [rax + 0x30], rdx
	mov
		qword ptr [rax], rsi
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::~holder_impl()>:
	mov
		esi, 0x38
	jmp
		<_ZdlPvm$plt>

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Ellipsoid>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
	mov
		esi, 0x48
	jmp
		<_ZdlPvm$plt>

<polymorphic::detail::trampoline<Bodies3D::Ellipsoid, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI39_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x24]
	ret

<polymorphic::detail::holder_impl<Bodies3D::Cone@Evaluation.CRTP.Cone>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x38
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Cone>+0x10>
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		edx, dword ptr [rbx + 0x30]
	mov
		qword ptr [r14], rax
	mov
		dword ptr [rax + 0x30], edx
	mov
		qword ptr [rax], rsi
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::trampoline<Bodies3D::Cone, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI25_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	ret

<polymorphic::detail::holder_impl<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x38
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Cylinder>+0x10>
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		edx, dword ptr [rbx + 0x30]
	mov
		qword ptr [r14], rax
	mov
		dword ptr [rax + 0x30], edx
	mov
		qword ptr [rax], rsi
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::trampoline<Bodies3D::Cylinder, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI95_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	ret

<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x30
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rdx, <vtable for polymorphic::detail::holder_impl<Bodies3D::Sphere>+0x10>
	mov
		qword ptr [r14], rax
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		qword ptr [rax], rdx
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::holder_impl<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::~holder_impl()>:
	mov
		esi, 0x30
	jmp
		<_ZdlPvm$plt>

<std::_Sp_counted_ptr_inplace<polymorphic::detail::holder_impl<Bodies3D::Sphere>, std::allocator<void>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
	mov
		esi, 0x40
	jmp
		<_ZdlPvm$plt>

<polymorphic::detail::holder_impl<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x38
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Pyramid>+0x10>
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		rdx, qword ptr [rbx + 0x30]
	mov
		qword ptr [r14], rax
	mov
		qword ptr [rax + 0x30], rdx
	mov
		qword ptr [rax], rsi
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::trampoline<Bodies3D::Pyramid, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI46_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x24]
	ret

<polymorphic::detail::holder_impl<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x38
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Cuboid>+0x10>
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		rdx, qword ptr [rbx + 0x30]
	mov
		qword ptr [r14], rax
	mov
		qword ptr [rax + 0x30], rdx
	mov
		qword ptr [rax], rsi
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::trampoline<Bodies3D::Cuboid, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x24]
	ret

<polymorphic::detail::holder_impl<Bodies3D::Cube@Evaluation.CRTP.Cube>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x30
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rdx, <vtable for polymorphic::detail::holder_impl<Bodies3D::Cube>+0x10>
	mov
		qword ptr [r14], rax
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		qword ptr [rax], rdx
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::trampoline<Bodies3D::Cube, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm1, xmm0, xmm0
	vmulss
		xmm0, xmm1, xmm0
	ret

<polymorphic::detail::holder_impl<Bodies3D::Triangle@Evaluation.CRTP.Triangle>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x38
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Triangle>+0x10>
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		edx, dword ptr [rbx + 0x30]
	mov
		qword ptr [r14], rax
	mov
		dword ptr [rax + 0x30], edx
	mov
		qword ptr [rax], rsi
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::trampoline<Bodies3D::Triangle, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI67_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	ret

<polymorphic::detail::holder_impl<Bodies3D::Square@Evaluation.CRTP.Square>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x30
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rdx, <vtable for polymorphic::detail::holder_impl<Bodies3D::Square>+0x10>
	mov
		qword ptr [r14], rax
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		qword ptr [rax], rdx
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::trampoline<Bodies3D::Square, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	ret

<polymorphic::detail::holder_impl<Bodies3D::Rectangle@Evaluation.CRTP.Rectangle>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x38
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Rectangle>+0x10>
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		edx, dword ptr [rbx + 0x30]
	mov
		qword ptr [r14], rax
	mov
		dword ptr [rax + 0x30], edx
	mov
		qword ptr [rax], rsi
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::trampoline<Bodies3D::Rectangle, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x1c]
	ret

<polymorphic::detail::holder_impl<Bodies3D::Ellipse@Evaluation.CRTP.Ellipse>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x38
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rsi, <vtable for polymorphic::detail::holder_impl<Bodies3D::Ellipse>+0x10>
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		edx, dword ptr [rbx + 0x30]
	mov
		qword ptr [r14], rax
	mov
		dword ptr [rax + 0x30], edx
	mov
		qword ptr [rax], rsi
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::trampoline<Bodies3D::Ellipse, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr <.LCPI95_0>
	vmulss
		xmm0, xmm0, dword ptr [rdi + 0x20]
	ret

<polymorphic::detail::holder_impl<Bodies3D::Circle@Evaluation.CRTP.Circle>::clone() const>:
	push
		r14
	push
		rbx
	push
		rax
	mov
		r14, rdi
	mov
		edi, 0x30
	mov
		rbx, rsi
	call
		<_Znwm$plt>
	vmovups
		ymm0, ymmword ptr [rbx + 0x10]
	lea
		rcx, [rax + 0x10]
	lea
		rdx, <vtable for polymorphic::detail::holder_impl<Bodies3D::Circle>+0x10>
	mov
		qword ptr [r14], rax
	vmovups
		ymmword ptr [rax + 0x10], ymm0
	mov
		qword ptr [rax], rdx
	mov
		qword ptr [rax + 0x8], rcx
	mov
		rax, r14
	add
		rsp, 0x8
	pop
		rbx
	pop
		r14
	vzeroupper
	ret

<polymorphic::detail::trampoline<Bodies3D::Circle, float (Bodies3D::ComputeVolumeTag) const>::jump(void const*)>:
	vmovss
		xmm0, dword ptr [rdi + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, dword ptr <.LCPI95_0>
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
		xmm4, qword ptr <.LCPI96_1>
	vpbroadcastq
		xmm7, qword ptr <.LCPI96_2>
	vpsrlq
		xmm2, xmm0, 0x1e
	vpaddq
		xmm1, xmm0, qword ptr {1to2} <.LCPI96_0>
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
		xmm2, xmm0, qword ptr {1to2} <.LCPI96_3>
	vpaddq
		xmm0, xmm0, qword ptr {1to2} <.LCPI96_4>
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
