
build/Evaluation/bin/Dyno:	file format elf64-x86-64

Disassembly of section .fini:

<_fini>:
               	endbr64
               	sub	rsp, 0x8
               	add	rsp, 0x8
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__gmon_start__$got>
               	test	rax, rax
               	je	 <L0>
               	call	rax
<L0>:
               	add	rsp, 0x8
               	ret

Disassembly of section .plt:

<_PROCEDURE_LINKAGE_TABLE_>:
               	endbr64
               	push	r11
               	push	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x8>
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x10>
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

<_ZSt9terminatev$plt>:
               	mov	r11d, 0x0

<_ZSt9terminatev@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x18>
               	int3
               	int3
               	int3
               	int3

<__cxa_throw$plt>:
               	mov	r11d, 0x1

<__cxa_throw@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x20>
               	int3
               	int3
               	int3
               	int3

<__cxa_begin_catch$plt>:
               	mov	r11d, 0x2

<__cxa_begin_catch@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	int3
               	int3
               	int3
               	int3

<__cxa_allocate_exception$plt>:
               	mov	r11d, 0x3

<__cxa_allocate_exception@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x30>
               	int3
               	int3
               	int3
               	int3

<_ZdaPv$plt>:
               	mov	r11d, 0x4

<_ZdaPv@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	int3
               	int3
               	int3
               	int3

<_ZnamRKSt9nothrow_t$plt>:
               	mov	r11d, 0x5

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
               	int3
               	int3
               	int3
               	int3

<__stack_chk_fail$plt>:
               	mov	r11d, 0x6

<__stack_chk_fail@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x48>
               	int3
               	int3
               	int3
               	int3

<free$plt>:
               	mov	r11d, 0x7

<free@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x50>
               	int3
               	int3
               	int3
               	int3

<malloc$plt>:
               	mov	r11d, 0x8

<malloc@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x58>
               	int3
               	int3
               	int3
               	int3

<memset$plt>:
               	mov	r11d, 0x9

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x60>
               	int3
               	int3
               	int3
               	int3

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
               	call	qword ptr  <__libc_start_main$got>
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
<L4>:
               	lea	rdi,  <__bss_start>
               	lea	rax,  <__bss_start>
               	cmp	rax, rdi
               	je	 <L0>
               	mov	rax, qword ptr  <_ITM_deregisterTMCloneTable$got>
               	test	rax, rax
               	je	 <L0>
               	jmp	rax
               	nop	dword ptr [rax]
<L0>:
               	ret
               	nop	dword ptr [rax]
<L5>:
               	lea	rdi,  <__bss_start>
               	lea	rsi,  <__bss_start>
               	sub	rsi, rdi
               	mov	rax, rsi
               	shr	rsi, 0x3f
               	sar	rax, 0x3
               	add	rsi, rax
               	sar	rsi
               	je	 <L1>
               	mov	rax, qword ptr  <_ITM_registerTMCloneTable$got>
               	test	rax, rax
               	je	 <L1>
               	jmp	rax
               	nop	word ptr [rax + rax]
<L1>:
               	ret
               	nop	dword ptr [rax]
               	endbr64
               	cmp	byte ptr , 0x0 <__bss_start>
               	jne	 <L2>
               	push	rbp
               	cmp	qword ptr , 0x0 <__cxa_finalize$got>
               	mov	rbp, rsp
               	je	 <L3>
               	mov	rdi, qword ptr  <__dso_handle>
               	call	qword ptr  <__cxa_finalize$got>
<L3>:
               	call	 <L4>
               	mov	byte ptr , 0x1 <__bss_start>
               	pop	rbp
               	ret
               	nop	word ptr cs:[rax + rax]
<L2>:
               	ret
               	nop	dword ptr [rax]
               	nop	word ptr cs:[rax + rax]
               	endbr64
               	jmp	 <L5>
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
               	sub	rsp, 0x7d8
               	mov	rax, qword ptr fs:[0x28]
               	mov	qword ptr [rsp + 0x7d0], rax
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r15, byte ptr [rcx]
               	movzx	edx, byte ptr [rcx + 0x1]
               	add	r15, -0x30
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop
<L1>:
               	lea	rsi, [r15 + 4*r15]
               	movsx	rdx, dl
               	lea	r15, [rdx + 2*rsi - 0x30]
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	rcx, byte ptr [rax]
               	movzx	edx, byte ptr [rax + 0x1]
               	add	rcx, -0x30
               	test	dl, dl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	rcx, [rcx + 4*rcx]
               	movsx	rdx, dl
               	lea	rcx, [rdx + 2*rcx - 0x30]
               	movzx	edx, byte ptr [rax]
               	inc	rax
               	test	dl, dl
               	jne	 <L3>
<L2>:
               	mov	rsi, qword ptr  <_ZSt7nothrow$got>
               	mov	rbx, rcx
               	shl	rcx, 0x8
               	shl	rbx, 0x4
               	lea	rdi, [rcx + 4*rcx]
               	call	 <_ZnamRKSt9nothrow_t$plt>
               	movabs	rcx, -0x61c8864680b583eb
               	vmovq	xmm1, r15
               	lea	r14, [rsp + 0x180]
               	mov	r13, rax
               	add	rcx, r15
               	mov	rdi, r14
               	vmovq	xmm0, rcx
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	call	 <RandomGenerators@Evaluation.Dependency.PseudoRandomSequence::RandomGenerators<0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>(Meta::Random::Splitmix64@Meta.Random.Splitmix<2ul>, std::integer_sequence<unsigned long, 0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>)>
               	mov	qword ptr [rsp + 0x680], 0x0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x190]
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x1d0]
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x210]
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x250]
               	vpsllq	xmm4, xmm0, 0x2
               	vpaddq	xmm0, xmm4, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm4, xmm0, 0x3
               	vpaddq	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x690], xmm0
               	vpsllq	xmm0, xmm1, 0x2
               	vpaddq	xmm0, xmm0, xmm1
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x6a0], xmm0
               	vpsllq	xmm0, xmm2, 0x2
               	vpaddq	xmm0, xmm0, xmm2
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x6b0], xmm0
               	vpsllq	xmm0, xmm3, 0x2
               	vpaddq	xmm0, xmm0, xmm3
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x6c0], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x290]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x6d0], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x2d0]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x6e0], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x310]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x6f0], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x350]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x700], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x390]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x710], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x3d0]
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x410]
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x450]
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x490]
               	vpsllq	xmm4, xmm0, 0x2
               	vpaddq	xmm0, xmm4, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm4, xmm0, 0x3
               	vpaddq	xmm16, xmm4, xmm0
               	vpsllq	xmm0, xmm1, 0x2
               	vpaddq	xmm0, xmm0, xmm1
               	vmovdqa64	xmmword ptr [rsp + 0x720], xmm16
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm17, xmm1, xmm0
               	vpsllq	xmm0, xmm2, 0x2
               	vpaddq	xmm0, xmm0, xmm2
               	vmovdqa64	xmmword ptr [rsp + 0x730], xmm17
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm18, xmm1, xmm0
               	vpsllq	xmm0, xmm3, 0x2
               	vpaddq	xmm0, xmm0, xmm3
               	vmovdqa64	xmmword ptr [rsp + 0x740], xmm18
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm19, xmm1, xmm0
               	vmovdqa64	xmmword ptr [rsp + 0x750], xmm19
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x4d0]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm20, xmm1, xmm0
               	vmovdqa64	xmmword ptr [rsp + 0x760], xmm20
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x510]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm21, xmm1, xmm0
               	vmovdqa64	xmmword ptr [rsp + 0x770], xmm21
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x550]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm22, xmm1, xmm0
               	vmovdqa64	xmmword ptr [rsp + 0x780], xmm22
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x590]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm23, xmm1, xmm0
               	vmovdqa64	xmmword ptr [rsp + 0x790], xmm23
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x5d0]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm12, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x7a0], xmm12
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x610]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm11, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x7b0], xmm11
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x650]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm24, xmm1, xmm0
               	vmovdqa64	xmmword ptr [rsp + 0x7c0], xmm24
               	mov	r12, qword ptr [rsp + 0x680]
               	cmp	r12, rbx
               	jne	 <L4>
               	vpxor	xmm0, xmm0, xmm0
               	test	r13, r13
               	jne	 <L5>
               	jmp	 <L6>
<L4>:
               	vpbroadcastq	zmm0, r14
               	vpaddq	zmm13, zmm0, zmmword ptr  <memset+0xf80>
               	vpbroadcastd	ymm14, dword ptr  <.LCPI0_7>
               	vpbroadcastq	xmm15, qword ptr  <.LCPI0_8>
               	mov	rax, qword ptr [rsp + 0x690]
               	vpunpcklqdq	xmm5, xmm18, xmm19 # xmm5 = xmm18[0],xmm19[0]
               	vpunpcklqdq	xmm3, xmm23, xmm12 # xmm3 = xmm23[0],xmm12[0]
               	vpunpcklqdq	xmm4, xmm21, xmm22 # xmm4 = xmm21[0],xmm22[0]
               	vpunpcklqdq	xmm0, xmm20, xmm11 # xmm0 = xmm20[0],xmm11[0]
               	vpunpcklqdq	xmm1, xmm17, xmm16 # xmm1 = xmm17[0],xmm16[0]
               	lea	rsi,  <memset+0xfc0>
               	xor	ebp, ebp
               	mov	qword ptr [rsp + 0x28], r15
               	mov	qword ptr [rsp + 0x8], 0x0
               	vmovdqu64	zmmword ptr [rsp + 0x140], zmm13
               	jmp	 <L7>
               	nop	dword ptr [rax]
<L12>:
               	vpsrldq	xmm0, xmmword ptr [rsp + 0x690], 0x1 # xmm0 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm16, xmm16, 0x1       # xmm16 = xmm16[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm17, xmm17, 0x1       # xmm17 = xmm17[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm18, xmm18, 0x1       # xmm18 = xmm18[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm19, xmm19, 0x1       # xmm19 = xmm19[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm20, xmm20, 0x1       # xmm20 = xmm20[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm21, xmm21, 0x1       # xmm21 = xmm21[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm22, xmm22, 0x1       # xmm22 = xmm22[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm23, xmm23, 0x1       # xmm23 = xmm23[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm12, xmm12, 0x1       # xmm12 = xmm12[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm11, xmm11, 0x1       # xmm11 = xmm11[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm24, xmm24, 0x1       # xmm24 = xmm24[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x690], xmm0
               	vmovq	rax, xmm0
               	vpsrldq	xmm1, xmmword ptr [rsp + 0x6a0], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x6a0], xmm1
               	vpsrldq	xmm1, xmmword ptr [rsp + 0x6b0], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x6b0], xmm1
               	vpsrldq	xmm1, xmmword ptr [rsp + 0x6c0], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x6c0], xmm1
               	vpsrldq	xmm1, xmmword ptr [rsp + 0x6d0], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x6d0], xmm1
               	vpsrldq	xmm1, xmmword ptr [rsp + 0x6e0], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x6e0], xmm1
               	vpsrldq	xmm1, xmmword ptr [rsp + 0x6f0], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x6f0], xmm1
               	vpsrldq	xmm1, xmmword ptr [rsp + 0x700], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x700], xmm1
               	vpsrldq	xmm1, xmmword ptr [rsp + 0x710], 0x1 # xmm1 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x710], xmm1
               	vmovapd	xmmword ptr [rsp + 0x720], xmm16
               	vmovapd	xmmword ptr [rsp + 0x730], xmm17
               	vmovapd	xmmword ptr [rsp + 0x740], xmm18
               	vmovapd	xmmword ptr [rsp + 0x750], xmm19
               	vmovapd	xmmword ptr [rsp + 0x760], xmm20
               	vmovapd	xmmword ptr [rsp + 0x770], xmm21
               	vmovapd	xmmword ptr [rsp + 0x780], xmm22
               	vmovapd	xmmword ptr [rsp + 0x790], xmm23
<L15>:
               	add	qword ptr [rsp + 0x8], 0x50
               	vunpcklpd	xmm5, xmm18, xmm19 # xmm5 = xmm18[0],xmm19[0]
               	vunpcklpd	xmm3, xmm23, xmm12 # xmm3 = xmm23[0],xmm12[0]
               	vunpcklpd	xmm4, xmm21, xmm22 # xmm4 = xmm21[0],xmm22[0]
               	vunpcklpd	xmm0, xmm20, xmm11 # xmm0 = xmm20[0],xmm11[0]
               	vunpcklpd	xmm1, xmm17, xmm16 # xmm1 = xmm17[0],xmm16[0]
               	inc	rbp
               	vmovapd	xmmword ptr [rsp + 0x7a0], xmm12
               	vmovapd	xmmword ptr [rsp + 0x7b0], xmm11
               	vmovapd	xmmword ptr [rsp + 0x7c0], xmm24
               	cmp	r12, rbx
               	je	 <L8>
<L7>:
               	movzx	ecx, al
               	kxnorw	k1, k0, k0
               	vpxor	xmm2, xmm2, xmm2
               	vpshufb	xmm1, xmm1, xmm15
               	imul	ecx, ecx, 0x4f
               	vpgatherqq	zmm2 {k1}, qword ptr [1*zmm13]
               	vcvtdq2ps	xmm1, xmm1
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	vpmovqd	ymm2, zmm2
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	movsxd	rax, dword ptr [rsi + 4*rax]
               	vpand	ymm2, ymm14, ymm2
               	vcvtdq2ps	ymm2, ymm2
               	add	rax, rsi
               	jmp	rax
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Circle@Evaluation.CRTP.Circle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'(Bodies3D::Circle@Evaluation.CRTP.Circle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'(Bodies3D::Circle@Evaluation.CRTP.Circle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'()>>>>
               	jmp	 <L9>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'()>>>>
               	jmp	 <L10>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Triangle@Evaluation.CRTP.Triangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'(Bodies3D::Triangle@Evaluation.CRTP.Triangle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'(Bodies3D::Triangle@Evaluation.CRTP.Triangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'()>>>>
               	jmp	 <L11>
               	mov	r14, qword ptr [rsp + 0x8]
               	vpextrb	eax, xmm0, 0x8
               	vpextrb	ecx, xmm0, 0x0
               	mov	edi, 0x60
               	mov	r15, rbx
               	mov	rbx, rsi
               	vmovdqa64	xmmword ptr [rsp + 0x10], xmm16
               	vmovdqa64	xmmword ptr [rsp + 0x40], xmm17
               	vmovdqa64	xmmword ptr [rsp + 0x30], xmm18
               	vmovdqa64	xmmword ptr [rsp + 0xf0], xmm19
               	vmovdqa64	xmmword ptr [rsp + 0xe0], xmm20
               	vmovdqa64	xmmword ptr [rsp + 0xd0], xmm21
               	vmovdqa64	xmmword ptr [rsp + 0xc0], xmm22
               	vmovdqa64	xmmword ptr [rsp + 0xb0], xmm23
               	vmovdqa	xmmword ptr [rsp + 0xa0], xmm12
               	vmovdqa	xmmword ptr [rsp + 0x90], xmm11
               	vmovdqa64	xmmword ptr [rsp + 0x80], xmm24
               	vmovdqa	xmmword ptr [rsp + 0x70], xmm3
               	vmovdqu	ymmword ptr [rsp + 0x120], ymm4
               	vmovdqa	xmmword ptr [rsp + 0x60], xmm5
               	vmovups	ymmword ptr [rsp + 0x100], ymm2
               	vcvtsi2ss	xmm1, xmm6, eax
               	vcvtsi2ss	xmm0, xmm6, ecx
               	lea	rax,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Head@Evaluation.CRTP.Head, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'()>>>>
               	vmovss	dword ptr [rsp + 0x24], xmm1
               	vmovss	dword ptr [rsp + 0x20], xmm0
               	mov	qword ptr [r13 + r14], rax
               	mov	byte ptr [r13 + r14 + 0x40], 0x1
               	vzeroupper
               	call	 <malloc$plt>
               	vmovups	ymm1, ymmword ptr [rsp + 0x100]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x120]
               	vmovss	xmm3, dword ptr [rsp + 0x20]
               	vmovdqa64	xmm24, xmmword ptr [rsp + 0x80]
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x90]
               	vmovdqa	xmm12, xmmword ptr [rsp + 0xa0]
               	vmovdqa64	xmm23, xmmword ptr [rsp + 0xb0]
               	vmovdqa64	xmm22, xmmword ptr [rsp + 0xc0]
               	vmovdqa64	xmm21, xmmword ptr [rsp + 0xd0]
               	vmovdqa64	xmm20, xmmword ptr [rsp + 0xe0]
               	vmovdqa64	xmm19, xmmword ptr [rsp + 0xf0]
               	vmovdqa64	xmm18, xmmword ptr [rsp + 0x30]
               	vmovdqa64	xmm17, xmmword ptr [rsp + 0x40]
               	vmovdqa64	xmm16, xmmword ptr [rsp + 0x10]
               	vpbroadcastq	xmm15, qword ptr  <.LCPI0_8>
               	vpbroadcastd	ymm14, dword ptr  <.LCPI0_7>
               	vmovdqu64	zmm13, zmmword ptr [rsp + 0x140]
               	mov	rsi, rbx
               	mov	rbx, r15
               	mov	qword ptr [r13 + r14 + 0x10], rax
               	vinserti128	ymm2, ymm2, xmmword ptr [rsp + 0x70], 0x1
               	vshufps	xmm0, xmm1, xmm1, 0xff  # xmm0 = xmm1[3,3,3,3]
               	vmovups	ymmword ptr [rax], ymm1
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x60]
               	vpshufb	xmm1, xmm1, xmmword ptr  <.LCPI0_3>
               	vpmovqd	xmm2, ymm2
               	vpandd	xmm2, xmm2, dword ptr {1to4} <.LCPI0_7>
               	vcvtdq2ps	xmm1, xmm1
               	vcvtdq2ps	xmm2, xmm2
               	vmovlps	qword ptr [rax + 0x20], xmm1
               	vmovss	dword ptr [rax + 0x28], xmm3
               	vmovss	dword ptr [rax + 0x2c], xmm0
               	vmovdqu	xmmword ptr [rax + 0x30], xmm2
               	vmovlps	qword ptr [rax + 0x40], xmm1
               	vmovss	dword ptr [rax + 0x48], xmm3
               	vmovd	xmm3, dword ptr [rsp + 0x24]
               	vpshufd	xmm1, xmm2, 0xe9        # xmm1 = xmm2[1,2,2,3]
               	vmovss	dword ptr [rax + 0x4c], xmm0
               	vmovd	dword ptr [rax + 0x50], xmm3
               	vmovq	qword ptr [rax + 0x54], xmm1
               	vextractps	dword ptr [rax + 0x5c], xmm2, 0x3
               	inc	r12
               	mov	qword ptr [rsp + 0x680], r12
               	test	r12b, 0xf
               	jne	 <L12>
               	jmp	 <L13>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'()>>>>
               	jmp	 <L14>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'()>>>>
               	jmp	 <L11>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Square@Evaluation.CRTP.Square, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'(Bodies3D::Square@Evaluation.CRTP.Square const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'(Bodies3D::Square@Evaluation.CRTP.Square&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'()>>>>
               	jmp	 <L9>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'()>>>>
               	jmp	 <L10>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'(Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'(Bodies3D::Ellipse@Evaluation.CRTP.Ellipse&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'()>>>>
<L11>:
               	mov	qword ptr [r13 + rax], rcx
               	mov	byte ptr [r13 + rax + 0x40], 0x0
               	vmovdqu	ymmword ptr [r13 + rax + 0x10], ymm2
               	vmovd	dword ptr [r13 + rax + 0x30], xmm1
               	inc	r12
               	mov	qword ptr [rsp + 0x680], r12
               	test	r12b, 0xf
               	jne	 <L12>
               	jmp	 <L13>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cube@Evaluation.CRTP.Cube, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'()>>>>
               	jmp	 <L9>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'()>>>>
<L10>:
               	mov	qword ptr [r13 + rax], rcx
               	mov	byte ptr [r13 + rax + 0x40], 0x0
               	vmovdqu	ymmword ptr [r13 + rax + 0x10], ymm2
               	vmovq	qword ptr [r13 + rax + 0x30], xmm1
               	inc	r12
               	mov	qword ptr [rsp + 0x680], r12
               	test	r12b, 0xf
               	jne	 <L12>
               	jmp	 <L13>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Cone@Evaluation.CRTP.Cone, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'()>>>>
<L14>:
               	mov	qword ptr [r13 + rax], rcx
               	mov	byte ptr [r13 + rax + 0x40], 0x0
               	vmovdqu	ymmword ptr [r13 + rax + 0x10], ymm2
               	vextractps	dword ptr [r13 + rax + 0x30], xmm1, 0x1
               	inc	r12
               	mov	qword ptr [rsp + 0x680], r12
               	test	r12b, 0xf
               	jne	 <L12>
               	jmp	 <L13>
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rcx,  <dyno::detail::static_vtable<dyno::local_vtable<boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::method_t<float () const>>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::function_t<void (dyno::T&)>>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::function_t<dyno::storage_info ()>>>, dyno::concept_map_t<dyno::concept_<Bodies3D::VolumeComputer, dyno::Destructible, dyno::Storable>, Bodies3D::Sphere@Evaluation.CRTP.Sphere, boost::hana::pair<dyno::detail::string<(char)67, (char)111, (char)109, (char)112, (char)117, (char)116, (char)101, (char)86, (char)111, (char)108, (char)117, (char)109, (char)101>, dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>, boost::hana::pair<dyno::detail::string<(char)100, (char)101, (char)115, (char)116, (char)114, (char)117, (char)99, (char)116>, dyno::default_concept_map<dyno::Destructible, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(Bodies3D::Sphere@Evaluation.CRTP.Sphere&)>, boost::hana::pair<dyno::detail::string<(char)115, (char)116, (char)111, (char)114, (char)97, (char)103, (char)101, (char)95, (char)105, (char)110, (char)102, (char)111>, dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'()>>>>
<L9>:
               	mov	qword ptr [r13 + rax], rcx
               	mov	byte ptr [r13 + rax + 0x40], 0x0
               	vmovdqu	ymmword ptr [r13 + rax + 0x10], ymm2
               	inc	r12
               	mov	qword ptr [rsp + 0x680], r12
               	test	r12b, 0xf
               	jne	 <L12>
<L13>:
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x190]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x180]
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x1c0]
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x1d0]
               	vpxor	xmm5, xmm0, xmmword ptr [rsp + 0x1a0]
               	vpxor	xmm6, xmm1, xmmword ptr [rsp + 0x1b0]
               	vpsllq	xmm4, xmm1, 0x11
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm0, xmm6, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x190], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x180], xmm0
               	vpxor	xmm0, xmm5, xmm4
               	vmovdqa	xmmword ptr [rsp + 0x1a0], xmm0
               	vprolq	xmm0, xmm6, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x1b0], xmm0
               	vpsllq	xmm0, xmm3, 0x11
               	vpxor	xmm1, xmm2, xmmword ptr [rsp + 0x1e0]
               	vpxor	xmm4, xmm3, xmmword ptr [rsp + 0x1f0]
               	vpxor	xmm3, xmm1, xmm3
               	vpxor	xmm2, xmm4, xmm2
               	vpxor	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x1d0], xmm3
               	vmovdqa	xmmword ptr [rsp + 0x1c0], xmm2
               	vmovdqa	xmmword ptr [rsp + 0x1e0], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x1f0], xmm0
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x200]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x210]
               	vpxor	xmm3, xmm2, xmmword ptr [rsp + 0x220]
               	vpxor	xmm4, xmm0, xmmword ptr [rsp + 0x230]
               	vpsllq	xmm1, xmm0, 0x11
               	vpxor	xmm0, xmm3, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x210], xmm0
               	vpxor	xmm0, xmm4, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x200], xmm0
               	vpxor	xmm0, xmm3, xmm1
               	vmovdqa	xmmword ptr [rsp + 0x220], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x230], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x250]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x240]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x260]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x270]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x250], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x240], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x270], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x290]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x280]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x2a0]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x2b0]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x290], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x280], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x2a0], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x2b0], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x2d0]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x2c0]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x2e0]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x2f0]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x2d0], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x2c0], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x2e0], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x2f0], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x310]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x300]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x320]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x330]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x310], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x300], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x320], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x330], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x350]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x340]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x360]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x370]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x350], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x340], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x360], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x370], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x390]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x380]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x3a0]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x3b0]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x390], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x380], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x3a0], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x3b0], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x3d0]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x3c0]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x3e0]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x3f0]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x3d0], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x3c0], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x3e0], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x3f0], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x410]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x400]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x420]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x430]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x410], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x400], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x420], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x430], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x450]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x440]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x460]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x470]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x450], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x440], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x460], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x470], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x490]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x480]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x4a0]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x4b0]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x490], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x480], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x4a0], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x4b0], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x4d0]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x4c0]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x4e0]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x4f0]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x4d0], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x4c0], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x4e0], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x4f0], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x510]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x500]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x520]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x530]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x510], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x500], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x520], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x530], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x550]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x540]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x560]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x570]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x550], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x540], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x560], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x570], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x590]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x580]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x5a0]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x5b0]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x590], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x580], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x5a0], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x5b0], xmm0
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x5d0]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x5c0]
               	vpxor	xmm3, xmm0, xmmword ptr [rsp + 0x5e0]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x5f0]
               	vpsllq	xmm2, xmm1, 0x11
               	vpxor	xmm1, xmm3, xmm1
               	vpxor	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x5d0], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x5c0], xmm0
               	vpxor	xmm0, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x5e0], xmm0
               	vprolq	xmm0, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x5f0], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x610]
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x600]
               	vpxor	xmm3, xmm1, xmmword ptr [rsp + 0x620]
               	vpxor	xmm4, xmm0, xmmword ptr [rsp + 0x630]
               	vpsllq	xmm2, xmm0, 0x11
               	vpxor	xmm0, xmm3, xmm0
               	vpxor	xmm1, xmm4, xmm1
               	vmovdqa	xmmword ptr [rsp + 0x610], xmm0
               	vmovdqa	xmmword ptr [rsp + 0x600], xmm1
               	vpxor	xmm1, xmm3, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x620], xmm1
               	vprolq	xmm1, xmm4, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x630], xmm1
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x650]
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x640]
               	vpxor	xmm4, xmm1, xmmword ptr [rsp + 0x660]
               	vpxor	xmm5, xmm2, xmmword ptr [rsp + 0x670]
               	vpsllq	xmm3, xmm2, 0x11
               	vpxor	xmm2, xmm4, xmm2
               	vpxor	xmm1, xmm5, xmm1
               	vmovdqa	xmmword ptr [rsp + 0x650], xmm2
               	vmovdqa	xmmword ptr [rsp + 0x640], xmm1
               	vpxor	xmm1, xmm4, xmm3
               	vmovdqa	xmmword ptr [rsp + 0x660], xmm1
               	vprolq	xmm1, xmm5, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x670], xmm1
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x190]
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x1d0]
               	vmovdqa	xmm4, xmmword ptr [rsp + 0x210]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x250]
               	vpsllq	xmm6, xmm1, 0x2
               	vpaddq	xmm1, xmm6, xmm1
               	vprolq	xmm1, xmm1, 0x7
               	vpsllq	xmm6, xmm1, 0x3
               	vpaddq	xmm1, xmm6, xmm1
               	vpsllq	xmm6, xmm3, 0x2
               	vpaddq	xmm3, xmm6, xmm3
               	vmovq	rax, xmm1
               	vprolq	xmm3, xmm3, 0x7
               	vpsllq	xmm6, xmm3, 0x3
               	vpaddq	xmm3, xmm6, xmm3
               	vpsllq	xmm6, xmm4, 0x2
               	vpaddq	xmm4, xmm6, xmm4
               	vprolq	xmm4, xmm4, 0x7
               	vpsllq	xmm6, xmm4, 0x3
               	vpaddq	xmm4, xmm6, xmm4
               	vpsllq	xmm6, xmm5, 0x2
               	vpaddq	xmm5, xmm6, xmm5
               	vprolq	xmm5, xmm5, 0x7
               	vpsllq	xmm6, xmm5, 0x3
               	vpaddq	xmm5, xmm6, xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x290]
               	vpsllq	xmm7, xmm6, 0x2
               	vpaddq	xmm6, xmm7, xmm6
               	vprolq	xmm6, xmm6, 0x7
               	vpsllq	xmm7, xmm6, 0x3
               	vpaddq	xmm6, xmm7, xmm6
               	vmovdqa	xmm7, xmmword ptr [rsp + 0x2d0]
               	vpsllq	xmm8, xmm7, 0x2
               	vpaddq	xmm7, xmm8, xmm7
               	vprolq	xmm7, xmm7, 0x7
               	vpsllq	xmm8, xmm7, 0x3
               	vpaddq	xmm7, xmm8, xmm7
               	vmovdqa	xmm8, xmmword ptr [rsp + 0x310]
               	vpsllq	xmm9, xmm8, 0x2
               	vpaddq	xmm8, xmm9, xmm8
               	vprolq	xmm8, xmm8, 0x7
               	vpsllq	xmm9, xmm8, 0x3
               	vpaddq	xmm8, xmm9, xmm8
               	vmovdqa	xmm9, xmmword ptr [rsp + 0x350]
               	vpsllq	xmm10, xmm9, 0x2
               	vpaddq	xmm9, xmm10, xmm9
               	vprolq	xmm9, xmm9, 0x7
               	vpsllq	xmm10, xmm9, 0x3
               	vpaddq	xmm9, xmm10, xmm9
               	vmovdqa	xmm10, xmmword ptr [rsp + 0x390]
               	vpsllq	xmm11, xmm10, 0x2
               	vpaddq	xmm10, xmm11, xmm10
               	vprolq	xmm10, xmm10, 0x7
               	vpsllq	xmm11, xmm10, 0x3
               	vpaddq	xmm10, xmm11, xmm10
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x3d0]
               	vpsllq	xmm12, xmm11, 0x2
               	vpaddq	xmm11, xmm12, xmm11
               	vprolq	xmm11, xmm11, 0x7
               	vpsllq	xmm12, xmm11, 0x3
               	vpaddq	xmm16, xmm12, xmm11
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x410]
               	vpsllq	xmm12, xmm11, 0x2
               	vpaddq	xmm11, xmm12, xmm11
               	vprolq	xmm11, xmm11, 0x7
               	vpsllq	xmm12, xmm11, 0x3
               	vpaddq	xmm17, xmm12, xmm11
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x450]
               	vpsllq	xmm12, xmm11, 0x2
               	vpaddq	xmm11, xmm12, xmm11
               	vprolq	xmm11, xmm11, 0x7
               	vpsllq	xmm12, xmm11, 0x3
               	vpaddq	xmm18, xmm12, xmm11
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x490]
               	vpsllq	xmm12, xmm11, 0x2
               	vpaddq	xmm11, xmm12, xmm11
               	vprolq	xmm11, xmm11, 0x7
               	vpsllq	xmm12, xmm11, 0x3
               	vpaddq	xmm19, xmm12, xmm11
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x4d0]
               	vpsllq	xmm12, xmm11, 0x2
               	vpaddq	xmm11, xmm12, xmm11
               	vprolq	xmm11, xmm11, 0x7
               	vpsllq	xmm12, xmm11, 0x3
               	vpaddq	xmm20, xmm12, xmm11
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x510]
               	vpsllq	xmm12, xmm11, 0x2
               	vpaddq	xmm11, xmm12, xmm11
               	vprolq	xmm11, xmm11, 0x7
               	vpsllq	xmm12, xmm11, 0x3
               	vpaddq	xmm21, xmm12, xmm11
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x550]
               	vpsllq	xmm12, xmm11, 0x2
               	vpaddq	xmm11, xmm12, xmm11
               	vprolq	xmm11, xmm11, 0x7
               	vpsllq	xmm12, xmm11, 0x3
               	vpaddq	xmm22, xmm12, xmm11
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x590]
               	vpsllq	xmm12, xmm11, 0x2
               	vpaddq	xmm11, xmm12, xmm11
               	vprolq	xmm11, xmm11, 0x7
               	vpsllq	xmm12, xmm11, 0x3
               	vpaddq	xmm23, xmm12, xmm11
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x5d0]
               	vmovdqa	xmmword ptr [rsp + 0x690], xmm1
               	vmovdqa	xmmword ptr [rsp + 0x6a0], xmm3
               	vmovdqa	xmmword ptr [rsp + 0x6b0], xmm4
               	vmovdqa	xmmword ptr [rsp + 0x6c0], xmm5
               	vmovdqa	xmmword ptr [rsp + 0x6d0], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x6e0], xmm7
               	vmovdqa	xmmword ptr [rsp + 0x6f0], xmm8
               	vmovdqa	xmmword ptr [rsp + 0x700], xmm9
               	vmovdqa	xmmword ptr [rsp + 0x710], xmm10
               	vmovdqa64	xmmword ptr [rsp + 0x720], xmm16
               	vmovdqa64	xmmword ptr [rsp + 0x730], xmm17
               	vmovdqa64	xmmword ptr [rsp + 0x740], xmm18
               	vmovdqa64	xmmword ptr [rsp + 0x750], xmm19
               	vmovdqa64	xmmword ptr [rsp + 0x760], xmm20
               	vmovdqa64	xmmword ptr [rsp + 0x770], xmm21
               	vmovdqa64	xmmword ptr [rsp + 0x780], xmm22
               	vmovdqa64	xmmword ptr [rsp + 0x790], xmm23
               	mov	r12, qword ptr [rsp + 0x680]
               	vpsllq	xmm12, xmm11, 0x2
               	vpaddq	xmm11, xmm12, xmm11
               	vprolq	xmm11, xmm11, 0x7
               	vpsllq	xmm12, xmm11, 0x3
               	vpaddq	xmm12, xmm12, xmm11
               	vpsllq	xmm11, xmm0, 0x2
               	vpaddq	xmm0, xmm11, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm11, xmm0, 0x3
               	vpaddq	xmm11, xmm11, xmm0
               	vpsllq	xmm0, xmm2, 0x2
               	vpaddq	xmm0, xmm0, xmm2
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm2, xmm0, 0x3
               	vpaddq	xmm24, xmm2, xmm0
               	jmp	 <L15>
<L8>:
               	shl	rbp, 0x4
               	lea	rcx, [rbp + 4*rbp]
               	mov	rax, rcx
               	shr	rax, 0x4
               	imul	ebp, eax, 0xcccccccd
               	test	ebp, ebp
               	je	 <L16>
               	vpxor	xmm0, xmm0, xmm0
               	mov	qword ptr [rsp + 0x40], rbx
               	mov	rbx, r13
               	mov	qword ptr [rsp + 0x30], rcx
               	vmovdqu64	zmmword ptr [rsp + 0x1c0], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x180], zmm0
               	mov	qword ptr [rsp + 0x58], r13
               	jmp	 <L17>
               	nop	word ptr cs:[rax + rax]
<L18>:
               	vmovss	xmm0, dword ptr [rsp + 0x184]
               	mov	r12d, 0x1
               	vmovss	dword ptr [rsp + 0x188], xmm0
<L32>:
               	mov	eax, r12d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x180]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset$plt>
               	mov	rbx, r15
<L17>:
               	blsi	eax, ebp
               	lea	r15, [rax + 4*rax]
               	shl	r15, 0x4
               	add	r15, rbx
               	test	eax, eax
               	je	 <L18>
               	mov	r14d, 0x1
               	mov	r13d, 0x1
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x10], rax
               	jmp	 <L19>
               	nop	word ptr cs:[rax + rax]
<L23>:
               	mov	ecx, 0xfffffffe
               	movsxd	rax, r12d
               	add	rbx, 0x50
               	mov	r14d, r12d
               	sub	ecx, r13d
               	inc	r13d
               	vmovss	dword ptr [rsp + 4*rax + 0x180], xmm0
               	lzcnt	esi, r13d
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	cmp	rbx, r15
               	je	 <L20>
<L19>:
               	mov	rax, qword ptr [rbx]
               	cmp	byte ptr [rbx + 0x40], 0x0
               	mov	r12d, ecx
               	mov	rax, qword ptr [rax]
               	je	 <L21>
               	mov	rdi, qword ptr [rbx + 0x10]
               	jmp	 <L22>
               	nop	word ptr [rax + rax]
<L21>:
               	lea	rdi, [rbx + 0x10]
<L22>:
               	vzeroupper
               	call	rax
               	mov	edx, r12d
               	sub	edx, r14d
               	jl	 <L23>
               	movsxd	rax, r14d
               	cmp	edx, 0x7
               	jb	 <L24>
               	lea	rcx, [rdx + 0x1]
               	cmp	edx, 0x3f
               	jae	 <L25>
               	xor	edx, edx
               	jmp	 <L26>
<L25>:
               	movabs	rsi, 0x1ffffffc0
               	lea	r8, [rsp + 0x240]
               	mov	rdx, rcx
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	and	rdx, rsi
               	lea	rsi, [r8 + 4*rax]
               	nop	word ptr cs:[rax + rax]
<L27>:
               	vaddps	zmm0, zmm0, zmmword ptr [rsi + 4*rdi - 0xc0]
               	vaddps	zmm1, zmm1, zmmword ptr [rsi + 4*rdi - 0x80]
               	vaddps	zmm2, zmm2, zmmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	zmm3, zmm3, zmmword ptr [rsi + 4*rdi]
               	add	rdi, 0x40
               	cmp	rdx, rdi
               	jne	 <L27>
               	vaddps	zmm0, zmm1, zmm0
               	vaddps	zmm2, zmm3, zmm2
               	vaddps	zmm0, zmm2, zmm0
               	vextractf64x4	ymm1, zmm0, 0x1
               	vaddps	zmm0, zmm0, zmm1
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rdx
               	je	 <L23>
               	test	cl, 0x38
               	je	 <L28>
<L26>:
               	movabs	rsi, 0x1ffffffc0
               	lea	rdi, [rsp + 4*rax + 0x180]
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	add	rsi, 0x38
               	and	rsi, rcx
               	nop	word ptr cs:[rax + rax]
<L29>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
               	add	rdx, 0x8
               	cmp	rsi, rdx
               	jne	 <L29>
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rsi
               	je	 <L23>
               	add	rax, rsi
               	jmp	 <L24>
<L28>:
               	add	rax, rdx
               	nop	word ptr [rax + rax]
<L24>:
               	mov	ecx, r12d
               	sub	ecx, eax
               	lea	rax, [rsp + 4*rax + 0x180]
               	xor	edx, edx
               	inc	ecx
               	nop	word ptr cs:[rax + rax]
<L30>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L30>
               	jmp	 <L23>
               	nop	word ptr cs:[rax + rax]
<L20>:
               	sub	ebp, dword ptr [rsp + 0x10]
               	mov	r13, qword ptr [rsp + 0x58]
               	je	 <L31>
               	vmovss	dword ptr [rsp + 4*rax + 0x184], xmm0
               	mov	rbx, r15
               	test	r12d, r12d
               	jns	 <L32>
               	jmp	 <L17>
<L31>:
               	mov	rbx, qword ptr [rsp + 0x40]
               	mov	rcx, qword ptr [rsp + 0x30]
               	mov	rbp, qword ptr [rsp + 0x8]
               	test	rcx, rcx
               	je	 <L33>
<L42>:
               	mov	r12, rbx
               	mov	rbx, r13
               	vmovdqa	xmmword ptr [rsp + 0x10], xmm0
               	jmp	 <L34>
               	nop	dword ptr [rax + rax]
<L36>:
               	mov	rax, qword ptr [rbx]
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [rax + 0x8]
<L37>:
               	add	rbx, 0x50
               	add	rbp, -0x50
               	je	 <L35>
<L34>:
               	cmp	byte ptr [rbx + 0x40], 0x1
               	lea	r14, [rbx + 0x10]
               	jne	 <L36>
               	mov	rdi, qword ptr [r14]
               	test	rdi, rdi
               	je	 <L37>
               	mov	rax, qword ptr [rbx]
               	vzeroupper
               	call	qword ptr [rax + 0x8]
               	mov	rdi, qword ptr [r14]
               	call	 <free$plt>
               	jmp	 <L37>
<L35>:
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
               	mov	r15, qword ptr [rsp + 0x28]
               	mov	rbx, r12
               	test	r13, r13
               	je	 <L6>
<L5>:
               	mov	rdi, r13
               	vmovdqa	xmmword ptr [rsp + 0x10], xmm0
               	vzeroupper
               	call	 <_ZdaPv$plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
<L6>:
               	cmp	r15, 0x2a
               	jne	 <L38>
               	cmp	rbx, 0x30d40
               	je	 <L39>
               	cmp	rbx, 0x186a0
               	jne	 <L38>
               	vucomiss	xmm0, dword ptr  <.LCPI0_6>
               	jne	 <L40>
<L38>:
               	mov	rax, qword ptr fs:[0x28]
               	cmp	rax, qword ptr [rsp + 0x7d0]
               	jne	 <L41>
               	xor	eax, eax
               	add	rsp, 0x7d8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L16>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rbp, qword ptr [rsp + 0x8]
               	test	rcx, rcx
               	jne	 <L42>
<L33>:
               	mov	r15, qword ptr [rsp + 0x28]
               	test	r13, r13
               	jne	 <L5>
               	jmp	 <L6>
<L39>:
               	vucomiss	xmm0, dword ptr  <.LCPI0_5>
               	je	 <L38>
<L40>:
               	vmovaps	xmmword ptr [rsp + 0x10], xmm0
               	mov	rax, qword ptr fs:[0x28]
               	cmp	rax, qword ptr [rsp + 0x7d0]
               	jne	 <L41>
               	mov	edi, 0x4
               	vzeroupper
               	call	 <__cxa_allocate_exception$plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x10]
               	mov	rsi, qword ptr  <_ZTIf$got>
               	mov	rdi, rax
               	xor	edx, edx
               	vmovss	dword ptr [rax], xmm0
               	call	 <__cxa_throw$plt>
<L41>:
               	vzeroupper
               	call	 <__stack_chk_fail$plt>
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

<__clang_call_terminate>:
               	push	rax
               	call	 <__cxa_begin_catch$plt>
               	call	 <_ZSt9terminatev$plt>
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head const&), float (Bodies3D::Head@Evaluation.CRTP.Head const&)>, float (dyno::T const&), float (Bodies3D::Head@Evaluation.CRTP.Head const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <.LCPI5_0>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Destructible, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(Bodies3D::Head@Evaluation.CRTP.Head&), void (Bodies3D::Head@Evaluation.CRTP.Head&)>, void (dyno::T&), void (Bodies3D::Head@Evaluation.CRTP.Head&)>::apply(void*)>:
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Head@Evaluation.CRTP.Head, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
               	mov	eax, 0x60
               	mov	edx, 0x4
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&), float (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>, float (dyno::T const&), float (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI5_0>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
               	mov	eax, 0x28
               	mov	edx, 0x4
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(Bodies3D::Cone@Evaluation.CRTP.Cone const&), float (Bodies3D::Cone@Evaluation.CRTP.Cone const&)>, float (dyno::T const&), float (Bodies3D::Cone@Evaluation.CRTP.Cone const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI8_0>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Cone@Evaluation.CRTP.Cone, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
               	mov	eax, 0x24
               	mov	edx, 0x4
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, void>::'lambda'(Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&), float (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>, float (dyno::T const&), float (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI38_0>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<dyno::Storable, Bodies3D::Sphere@Evaluation.CRTP.Sphere, void>::'lambda'(), dyno::storage_info ()>, dyno::storage_info (), dyno::storage_info ()>::apply()>:
               	mov	eax, 0x20
               	mov	edx, 0x4
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, void>::'lambda'(Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&), float (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>, float (dyno::T const&), float (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI17_0>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, void>::'lambda'(Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&), float (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>, float (dyno::T const&), float (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Cube@Evaluation.CRTP.Cube, void>::'lambda'(Bodies3D::Cube@Evaluation.CRTP.Cube const&), float (Bodies3D::Cube@Evaluation.CRTP.Cube const&)>, float (dyno::T const&), float (Bodies3D::Cube@Evaluation.CRTP.Cube const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Triangle@Evaluation.CRTP.Triangle, void>::'lambda'(Bodies3D::Triangle@Evaluation.CRTP.Triangle const&), float (Bodies3D::Triangle@Evaluation.CRTP.Triangle const&)>, float (dyno::T const&), float (Bodies3D::Triangle@Evaluation.CRTP.Triangle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI26_0>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Square@Evaluation.CRTP.Square, void>::'lambda'(Bodies3D::Square@Evaluation.CRTP.Square const&), float (Bodies3D::Square@Evaluation.CRTP.Square const&)>, float (dyno::T const&), float (Bodies3D::Square@Evaluation.CRTP.Square const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, void>::'lambda'(Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const&), float (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const&)>, float (dyno::T const&), float (Bodies3D::Rectangle@Evaluation.CRTP.Rectangle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, void>::'lambda'(Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const&), float (Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const&)>, float (dyno::T const&), float (Bodies3D::Ellipse@Evaluation.CRTP.Ellipse const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI38_0>
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

<dyno::detail::thunk<void, dyno::detail::default_constructible_lambda<dyno::default_concept_map<Bodies3D::VolumeComputer, Bodies3D::Circle@Evaluation.CRTP.Circle, void>::'lambda'(Bodies3D::Circle@Evaluation.CRTP.Circle const&), float (Bodies3D::Circle@Evaluation.CRTP.Circle const&)>, float (dyno::T const&), float (Bodies3D::Circle@Evaluation.CRTP.Circle const&)>::apply(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI38_0>
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

<RandomGenerators@Evaluation.Dependency.PseudoRandomSequence::RandomGenerators<0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>(Meta::Random::Splitmix64@Meta.Random.Splitmix<2ul>, std::integer_sequence<unsigned long, 0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>)>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	vpbroadcastq	xmm4, qword ptr  <.LCPI41_1>
               	vpbroadcastq	xmm7, qword ptr  <.LCPI41_2>
               	vpsrlq	xmm2, xmm0, 0x1e
               	vpaddq	xmm1, xmm0, qword ptr {1to2} <.LCPI41_0>
               	movabs	rsi, 0x2020220200222
               	mov	qword ptr [rsp - 0x8], rdi
               	xor	eax, eax
               	vpxor	xmm2, xmm2, xmm0
               	vpmullq	xmm2, xmm2, xmm4
               	vpsrlq	xmm5, xmm1, 0x1e
               	vpxor	xmm1, xmm5, xmm1
               	vpmullq	xmm1, xmm1, xmm4
               	vpsrlq	xmm3, xmm2, 0x1b
               	vpxor	xmm2, xmm3, xmm2
               	vpmullq	xmm2, xmm2, xmm7
               	vpsrlq	xmm5, xmm1, 0x1b
               	vpxor	xmm1, xmm5, xmm1
               	vpmullq	xmm1, xmm1, xmm7
               	vpsrlq	xmm3, xmm2, 0x1f
               	vpxor	xmm3, xmm3, xmm2
               	vpaddq	xmm2, xmm0, qword ptr {1to2} <.LCPI41_3>
               	vpaddq	xmm0, xmm0, qword ptr {1to2} <.LCPI41_4>
               	vpsrlq	xmm5, xmm1, 0x1f
               	vmovdqa	xmmword ptr [rdi], xmm3
               	vpxor	xmm5, xmm5, xmm1
               	vmovdqa	xmmword ptr [rdi + 0x10], xmm5
               	vpsrlq	xmm1, xmm2, 0x1e
               	vpxor	xmm1, xmm1, xmm2
               	vpmullq	xmm1, xmm1, xmm4
               	vpsrlq	xmm2, xmm1, 0x1b
               	vpxor	xmm1, xmm2, xmm1
               	vpmullq	xmm1, xmm1, xmm7
               	vpsrlq	xmm2, xmm1, 0x1f
               	vpxor	xmm6, xmm2, xmm1
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rdi + 0x20], xmm6
               	vpmullq	xmm0, xmm0, xmm4
               	vpxor	xmm4, xmm4, xmm4
               	vpsrlq	xmm1, xmm0, 0x1b
               	vpxor	xmm0, xmm1, xmm0
               	vpmullq	xmm0, xmm0, xmm7
               	vpsrlq	xmm1, xmm0, 0x1f
               	vpxor	xmm7, xmm1, xmm0
               	vpxor	xmm0, xmm0, xmm0
               	vpxor	xmm1, xmm1, xmm1
               	vmovdqa	xmmword ptr [rdi + 0x30], xmm7
               	jmp	 <L0>
               	nop	dword ptr [rax]
<L5>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	add	rax, 0x4
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	cmp	rax, 0x40
               	je	 <L1>
<L0>:
               	movabs	rcx, 0x1000001110110010
               	bt	rcx, rax
               	jae	 <L2>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L2>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	shrx	rcx, rsi, rax
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	test	cl, 0x2
               	je	 <L3>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L3>:
               	vpxor	xmm7, xmm5, xmm7
               	movabs	rcx, 0x4444004440000
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	shrx	rcx, rcx, rax
               	test	cl, 0x4
               	je	 <L4>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L4>:
               	vpxor	xmm7, xmm5, xmm7
               	movabs	rcx, 0x808808008880888
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	shrx	rcx, rcx, rax
               	test	cl, 0x8
               	je	 <L5>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
               	jmp	 <L5>
<L1>:
               	movabs	r8, -0x7f7fffff7f77f7f8
               	movabs	r9, 0x4404004440400004
               	movabs	r10, 0x1100100010011100
               	movabs	r11, 0x22022220002020
               	xor	eax, eax
               	jmp	 <L6>
               	nop	word ptr cs:[rax + rax]
<L11>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	add	rax, 0x4
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	cmp	rax, 0x40
               	je	 <L7>
<L6>:
               	bt	r10, rax
               	jae	 <L8>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L8>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	shrx	rcx, r11, rax
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	test	cl, 0x2
               	je	 <L9>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L9>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	shrx	rcx, r9, rax
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	test	cl, 0x4
               	je	 <L10>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L10>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	shrx	rcx, r8, rax
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	test	cl, 0x8
               	je	 <L11>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
               	jmp	 <L11>
<L7>:
               	movabs	rbx, -0x77f7fff77ff77778
               	movabs	r14, 0x2000220020220022
               	movabs	r15, 0x110001000110100
               	movabs	r12, 0x40040040044000
               	xor	eax, eax
               	jmp	 <L12>
               	nop	word ptr [rax + rax]
<L17>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	add	rax, 0x4
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	cmp	rax, 0x40
               	je	 <L13>
<L12>:
               	bt	r15, rax
               	jae	 <L14>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L14>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	shrx	rcx, r14, rax
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	test	cl, 0x2
               	je	 <L15>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L15>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	shrx	rcx, r12, rax
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	test	cl, 0x4
               	je	 <L16>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L16>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	shrx	rcx, rbx, rax
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	test	cl, 0x8
               	je	 <L17>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
               	jmp	 <L17>
<L13>:
               	movabs	r13, 0x2022000020202200
               	movabs	rbp, 0x1101100101110010
               	movabs	rax, 0x888880008800008
               	movabs	rdi, 0x444400004404
               	xor	ecx, ecx
               	jmp	 <L18>
               	nop	word ptr [rax + rax]
<L23>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	add	rcx, 0x4
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	cmp	rcx, 0x40
               	je	 <L19>
<L18>:
               	bt	rbp, rcx
               	jae	 <L20>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L20>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	shrx	rdx, r13, rcx
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	test	dl, 0x2
               	je	 <L21>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L21>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	test	dl, 0x4
               	je	 <L22>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
<L22>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm8, xmm5, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm3, xmm7, xmm3
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm5, xmm6, xmm5
               	vpxor	xmm6, xmm8, xmm6
               	test	dl, 0x8
               	je	 <L23>
               	vpxor	xmm1, xmm1, xmm3
               	vpxor	xmm0, xmm5, xmm0
               	vpxor	xmm4, xmm6, xmm4
               	vpxor	xmm2, xmm7, xmm2
               	jmp	 <L23>
<L19>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm6, xmm6, xmm6
               	vpxor	xmm7, xmm7, xmm7
               	vpxor	xmm3, xmm3, xmm3
               	vpxor	xmm5, xmm5, xmm5
               	vmovdqa	xmmword ptr [rcx + 0x40], xmm1
               	vmovdqa	xmmword ptr [rcx + 0x50], xmm0
               	vmovdqa	xmmword ptr [rcx + 0x60], xmm4
               	vmovdqa	xmmword ptr [rcx + 0x70], xmm2
               	xor	ecx, ecx
               	jmp	 <L24>
               	nop	dword ptr [rax + rax]
<L29>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm1, xmm2
               	vpxor	xmm9, xmm0, xmm4
               	add	rcx, 0x4
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm4, xmm8, xmm2
               	vprolq	xmm2, xmm9, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	cmp	rcx, 0x40
               	je	 <L25>
<L24>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L26>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm4, xmm7
               	vpxor	xmm6, xmm2, xmm6
<L26>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm9, xmm0, xmm2
               	shrx	rdx, rsi, rcx
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm2, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	test	dl, 0x2
               	je	 <L27>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
<L27>:
               	vpxor	xmm4, xmm0, xmm4
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm2, xmm1, xmm2
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm1, xmm4, xmm1
               	vprolq	xmm4, xmm4, 0x2d
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm2, xmm8, xmm2
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L28>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
<L28>:
               	vpxor	xmm4, xmm0, xmm4
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm2, xmm1, xmm2
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm1, xmm4, xmm1
               	vprolq	xmm4, xmm4, 0x2d
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm2, xmm8, xmm2
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L29>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
               	jmp	 <L29>
<L25>:
               	xor	ecx, ecx
               	jmp	 <L30>
               	nop	dword ptr [rax]
<L35>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm1, xmm2
               	vpxor	xmm9, xmm0, xmm4
               	add	rcx, 0x4
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm4, xmm8, xmm2
               	vprolq	xmm2, xmm9, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	cmp	rcx, 0x40
               	je	 <L31>
<L30>:
               	bt	r10, rcx
               	jae	 <L32>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm4, xmm7
               	vpxor	xmm6, xmm2, xmm6
<L32>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm9, xmm0, xmm2
               	shrx	rdx, r11, rcx
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm2, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	test	dl, 0x2
               	je	 <L33>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
<L33>:
               	vpxor	xmm4, xmm0, xmm4
               	vpxor	xmm2, xmm1, xmm2
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm1, xmm4, xmm1
               	vprolq	xmm4, xmm4, 0x2d
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm2, xmm8, xmm2
               	test	dl, 0x4
               	je	 <L34>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
<L34>:
               	vpxor	xmm4, xmm0, xmm4
               	vpxor	xmm2, xmm1, xmm2
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm1, xmm4, xmm1
               	vprolq	xmm4, xmm4, 0x2d
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm2, xmm8, xmm2
               	test	dl, 0x8
               	je	 <L35>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
               	jmp	 <L35>
<L31>:
               	xor	ecx, ecx
               	jmp	 <L36>
               	nop
<L41>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm1, xmm2
               	vpxor	xmm9, xmm0, xmm4
               	add	rcx, 0x4
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm4, xmm8, xmm2
               	vprolq	xmm2, xmm9, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	cmp	rcx, 0x40
               	je	 <L37>
<L36>:
               	bt	r15, rcx
               	jae	 <L38>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm4, xmm7
               	vpxor	xmm6, xmm2, xmm6
<L38>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm9, xmm0, xmm2
               	shrx	rdx, r14, rcx
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm2, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	test	dl, 0x2
               	je	 <L39>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
<L39>:
               	vpxor	xmm4, xmm0, xmm4
               	vpxor	xmm2, xmm1, xmm2
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm1, xmm4, xmm1
               	vprolq	xmm4, xmm4, 0x2d
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm2, xmm8, xmm2
               	test	dl, 0x4
               	je	 <L40>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
<L40>:
               	vpxor	xmm4, xmm0, xmm4
               	vpxor	xmm2, xmm1, xmm2
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm1, xmm4, xmm1
               	vprolq	xmm4, xmm4, 0x2d
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm2, xmm8, xmm2
               	test	dl, 0x8
               	je	 <L41>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
               	jmp	 <L41>
<L37>:
               	xor	ecx, ecx
               	jmp	 <L42>
               	nop
<L47>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm1, xmm2
               	vpxor	xmm9, xmm0, xmm4
               	add	rcx, 0x4
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm4, xmm8, xmm2
               	vprolq	xmm2, xmm9, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	cmp	rcx, 0x40
               	je	 <L43>
<L42>:
               	bt	rbp, rcx
               	jae	 <L44>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm4, xmm7
               	vpxor	xmm6, xmm2, xmm6
<L44>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm9, xmm0, xmm2
               	shrx	rdx, r13, rcx
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm2, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	test	dl, 0x2
               	je	 <L45>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
<L45>:
               	vpxor	xmm4, xmm0, xmm4
               	vpxor	xmm2, xmm1, xmm2
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm1, xmm4, xmm1
               	vprolq	xmm4, xmm4, 0x2d
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm2, xmm8, xmm2
               	test	dl, 0x4
               	je	 <L46>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
<L46>:
               	vpxor	xmm4, xmm0, xmm4
               	vpxor	xmm2, xmm1, xmm2
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm1, xmm4, xmm1
               	vprolq	xmm4, xmm4, 0x2d
               	vpxor	xmm0, xmm2, xmm0
               	vpxor	xmm2, xmm8, xmm2
               	test	dl, 0x8
               	je	 <L47>
               	vpxor	xmm5, xmm5, xmm1
               	vpxor	xmm3, xmm0, xmm3
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm6, xmm4, xmm6
               	jmp	 <L47>
<L43>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm4, xmm4, xmm4
               	vpxor	xmm8, xmm8, xmm8
               	vpxor	xmm0, xmm0, xmm0
               	vpxor	xmm2, xmm2, xmm2
               	vmovdqa	xmmword ptr [rcx + 0x80], xmm5
               	vmovdqa	xmmword ptr [rcx + 0x90], xmm3
               	vmovdqa	xmmword ptr [rcx + 0xa0], xmm7
               	vmovdqa	xmmword ptr [rcx + 0xb0], xmm6
               	xor	ecx, ecx
               	jmp	 <L48>
               	nop	word ptr cs:[rax + rax]
<L53>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm9, xmm5, xmm3
               	vpsllq	xmm7, xmm1, 0x11
               	add	rcx, 0x4
               	vpxor	xmm5, xmm6, xmm5
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm3, xmm9, xmm1
               	vpxor	xmm7, xmm9, xmm7
               	cmp	rcx, 0x40
               	je	 <L49>
<L48>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L50>
               	vpxor	xmm2, xmm2, xmm5
               	vpxor	xmm0, xmm3, xmm0
               	vpxor	xmm8, xmm8, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L50>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm9, xmm3, 0x11
               	shrx	rdx, rsi, rcx
               	vpxor	xmm1, xmm7, xmm3
               	vpxor	xmm3, xmm6, xmm5
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm5, xmm9, xmm7
               	test	dl, 0x2
               	je	 <L51>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm5
               	vpxor	xmm4, xmm6, xmm4
<L51>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm7, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm5, xmm7
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L52>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm5
               	vpxor	xmm4, xmm6, xmm4
<L52>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm9, xmm3, xmm5
               	vpsllq	xmm7, xmm1, 0x11
               	vpxor	xmm5, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	vpxor	xmm3, xmm9, xmm7
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L53>
               	vpxor	xmm2, xmm2, xmm5
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm3
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L53>
<L49>:
               	xor	ecx, ecx
               	jmp	 <L54>
               	nop	dword ptr [rax]
<L59>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm9, xmm5, xmm3
               	vpsllq	xmm7, xmm1, 0x11
               	add	rcx, 0x4
               	vpxor	xmm5, xmm6, xmm5
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm3, xmm9, xmm1
               	vpxor	xmm7, xmm9, xmm7
               	cmp	rcx, 0x40
               	je	 <L55>
<L54>:
               	bt	r10, rcx
               	jae	 <L56>
               	vpxor	xmm2, xmm2, xmm5
               	vpxor	xmm0, xmm3, xmm0
               	vpxor	xmm8, xmm8, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L56>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm9, xmm3, 0x11
               	shrx	rdx, r11, rcx
               	vpxor	xmm1, xmm7, xmm3
               	vpxor	xmm3, xmm6, xmm5
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm5, xmm9, xmm7
               	test	dl, 0x2
               	je	 <L57>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm5
               	vpxor	xmm4, xmm6, xmm4
<L57>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm7, xmm1, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm5, xmm7
               	test	dl, 0x4
               	je	 <L58>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm5
               	vpxor	xmm4, xmm6, xmm4
<L58>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm9, xmm3, xmm5
               	vpsllq	xmm7, xmm1, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm5, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	vpxor	xmm3, xmm9, xmm7
               	test	dl, 0x8
               	je	 <L59>
               	vpxor	xmm2, xmm2, xmm5
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm3
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L59>
<L55>:
               	xor	ecx, ecx
               	jmp	 <L60>
               	nop
<L65>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm9, xmm5, xmm3
               	vpsllq	xmm7, xmm1, 0x11
               	add	rcx, 0x4
               	vpxor	xmm5, xmm6, xmm5
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm3, xmm9, xmm1
               	vpxor	xmm7, xmm9, xmm7
               	cmp	rcx, 0x40
               	je	 <L61>
<L60>:
               	bt	r15, rcx
               	jae	 <L62>
               	vpxor	xmm2, xmm2, xmm5
               	vpxor	xmm0, xmm3, xmm0
               	vpxor	xmm8, xmm8, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L62>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm9, xmm3, 0x11
               	shrx	rdx, r14, rcx
               	vpxor	xmm1, xmm7, xmm3
               	vpxor	xmm3, xmm6, xmm5
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm5, xmm9, xmm7
               	test	dl, 0x2
               	je	 <L63>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm5
               	vpxor	xmm4, xmm6, xmm4
<L63>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm7, xmm1, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm5, xmm7
               	test	dl, 0x4
               	je	 <L64>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm5
               	vpxor	xmm4, xmm6, xmm4
<L64>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm9, xmm3, xmm5
               	vpsllq	xmm7, xmm1, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm5, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	vpxor	xmm3, xmm9, xmm7
               	test	dl, 0x8
               	je	 <L65>
               	vpxor	xmm2, xmm2, xmm5
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm3
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L65>
<L61>:
               	xor	ecx, ecx
               	jmp	 <L66>
               	nop
<L71>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm9, xmm5, xmm3
               	vpsllq	xmm7, xmm1, 0x11
               	add	rcx, 0x4
               	vpxor	xmm5, xmm6, xmm5
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm3, xmm9, xmm1
               	vpxor	xmm7, xmm9, xmm7
               	cmp	rcx, 0x40
               	je	 <L67>
<L66>:
               	bt	rbp, rcx
               	jae	 <L68>
               	vpxor	xmm2, xmm2, xmm5
               	vpxor	xmm0, xmm3, xmm0
               	vpxor	xmm8, xmm8, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L68>:
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm6, xmm3, xmm6
               	vpsllq	xmm9, xmm3, 0x11
               	shrx	rdx, r13, rcx
               	vpxor	xmm1, xmm7, xmm3
               	vpxor	xmm3, xmm6, xmm5
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm5, xmm9, xmm7
               	test	dl, 0x2
               	je	 <L69>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm5
               	vpxor	xmm4, xmm6, xmm4
<L69>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm7, xmm1, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm5, xmm7
               	test	dl, 0x4
               	je	 <L70>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm5
               	vpxor	xmm4, xmm6, xmm4
<L70>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm9, xmm3, xmm5
               	vpsllq	xmm7, xmm1, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm5, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm9, xmm1
               	vpxor	xmm3, xmm9, xmm7
               	test	dl, 0x8
               	je	 <L71>
               	vpxor	xmm2, xmm2, xmm5
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm8, xmm8, xmm3
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L71>
<L67>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm5, xmm5, xmm5
               	vpxor	xmm6, xmm6, xmm6
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm3, xmm3, xmm3
               	vmovdqa	xmmword ptr [rcx + 0xc0], xmm2
               	vmovdqa	xmmword ptr [rcx + 0xd0], xmm0
               	vmovdqa	xmmword ptr [rcx + 0xe0], xmm8
               	vmovdqa	xmmword ptr [rcx + 0xf0], xmm4
               	xor	ecx, ecx
               	jmp	 <L72>
               	nop	word ptr cs:[rax + rax]
<L77>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm7, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm8, xmm8, xmm4
               	vprolq	xmm4, xmm7, 0x2d
               	vpxor	xmm2, xmm7, xmm2
               	cmp	rcx, 0x40
               	je	 <L73>
<L72>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L74>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L74>:
               	vpsllq	xmm7, xmm0, 0x11
               	vpxor	xmm8, xmm8, xmm2
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, rsi, rcx
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm0, xmm8, xmm0
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L75>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L75>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L76>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L76>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L77>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L77>
<L73>:
               	xor	ecx, ecx
               	jmp	 <L78>
               	nop	dword ptr [rax]
<L83>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm7, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm8, xmm8, xmm4
               	vprolq	xmm4, xmm7, 0x2d
               	vpxor	xmm2, xmm7, xmm2
               	cmp	rcx, 0x40
               	je	 <L79>
<L78>:
               	bt	r10, rcx
               	jae	 <L80>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L80>:
               	vpsllq	xmm7, xmm0, 0x11
               	vpxor	xmm8, xmm8, xmm2
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r11, rcx
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm0, xmm8, xmm0
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L81>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L81>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L82>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L82>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L83>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L83>
<L79>:
               	xor	ecx, ecx
               	jmp	 <L84>
               	nop
<L89>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm7, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm8, xmm8, xmm4
               	vprolq	xmm4, xmm7, 0x2d
               	vpxor	xmm2, xmm7, xmm2
               	cmp	rcx, 0x40
               	je	 <L85>
<L84>:
               	bt	r15, rcx
               	jae	 <L86>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L86>:
               	vpsllq	xmm7, xmm0, 0x11
               	vpxor	xmm8, xmm8, xmm2
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r14, rcx
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm0, xmm8, xmm0
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L87>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L87>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L88>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L88>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L89>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L89>
<L85>:
               	xor	ecx, ecx
               	jmp	 <L90>
               	nop
<L95>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm7, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm8, xmm8, xmm4
               	vprolq	xmm4, xmm7, 0x2d
               	vpxor	xmm2, xmm7, xmm2
               	cmp	rcx, 0x40
               	je	 <L91>
<L90>:
               	bt	rbp, rcx
               	jae	 <L92>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L92>:
               	vpsllq	xmm7, xmm0, 0x11
               	vpxor	xmm8, xmm8, xmm2
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r13, rcx
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm0, xmm8, xmm0
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L93>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L93>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L94>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L94>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L95>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L95>
<L91>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm4, xmm4, xmm4
               	vpxor	xmm7, xmm7, xmm7
               	vpxor	xmm0, xmm0, xmm0
               	vpxor	xmm2, xmm2, xmm2
               	vmovdqa	xmmword ptr [rcx + 0x100], xmm3
               	vmovdqa	xmmword ptr [rcx + 0x110], xmm1
               	vmovdqa	xmmword ptr [rcx + 0x120], xmm6
               	vmovdqa	xmmword ptr [rcx + 0x130], xmm5
               	xor	ecx, ecx
               	jmp	 <L96>
               	nop	word ptr cs:[rax + rax]
<L101>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L97>
<L96>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L98>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L98>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, rsi, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L99>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L99>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L100>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L100>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L101>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L101>
<L97>:
               	xor	ecx, ecx
               	jmp	 <L102>
               	nop	dword ptr [rax]
<L107>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L103>
<L102>:
               	bt	r10, rcx
               	jae	 <L104>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L104>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r11, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L105>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L105>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L106>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L106>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L107>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L107>
<L103>:
               	xor	ecx, ecx
               	jmp	 <L108>
               	nop
<L113>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L109>
<L108>:
               	bt	r15, rcx
               	jae	 <L110>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L110>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r14, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L111>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L111>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L112>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L112>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L113>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L113>
<L109>:
               	xor	ecx, ecx
               	jmp	 <L114>
               	nop
<L119>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L115>
<L114>:
               	bt	rbp, rcx
               	jae	 <L116>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L116>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r13, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L117>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L117>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L118>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L118>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L119>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L119>
<L115>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm5, xmm5, xmm5
               	vpxor	xmm6, xmm6, xmm6
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm3, xmm3, xmm3
               	vmovdqa	xmmword ptr [rcx + 0x140], xmm2
               	vmovdqa	xmmword ptr [rcx + 0x150], xmm0
               	vmovdqa	xmmword ptr [rcx + 0x160], xmm7
               	vmovdqa	xmmword ptr [rcx + 0x170], xmm4
               	xor	ecx, ecx
               	jmp	 <L120>
               	nop	word ptr cs:[rax + rax]
<L125>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L121>
<L120>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L122>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L122>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, rsi, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L123>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L123>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L124>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L124>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L125>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L125>
<L121>:
               	xor	ecx, ecx
               	jmp	 <L126>
               	nop	dword ptr [rax]
<L131>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L127>
<L126>:
               	bt	r10, rcx
               	jae	 <L128>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L128>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r11, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L129>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L129>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L130>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L130>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L131>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L131>
<L127>:
               	xor	ecx, ecx
               	jmp	 <L132>
               	nop
<L137>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L133>
<L132>:
               	bt	r15, rcx
               	jae	 <L134>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L134>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r14, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L135>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L135>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L136>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L136>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L137>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L137>
<L133>:
               	xor	ecx, ecx
               	jmp	 <L138>
               	nop
<L143>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L139>
<L138>:
               	bt	rbp, rcx
               	jae	 <L140>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L140>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r13, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L141>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L141>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L142>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L142>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L143>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L143>
<L139>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm4, xmm4, xmm4
               	vpxor	xmm7, xmm7, xmm7
               	vpxor	xmm0, xmm0, xmm0
               	vpxor	xmm2, xmm2, xmm2
               	vmovdqa	xmmword ptr [rcx + 0x180], xmm3
               	vmovdqa	xmmword ptr [rcx + 0x190], xmm1
               	vmovdqa	xmmword ptr [rcx + 0x1a0], xmm6
               	vmovdqa	xmmword ptr [rcx + 0x1b0], xmm5
               	xor	ecx, ecx
               	jmp	 <L144>
               	nop	word ptr cs:[rax + rax]
<L149>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L145>
<L144>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L146>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L146>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, rsi, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L147>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L147>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L148>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L148>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L149>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L149>
<L145>:
               	xor	ecx, ecx
               	jmp	 <L150>
               	nop	dword ptr [rax]
<L155>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L151>
<L150>:
               	bt	r10, rcx
               	jae	 <L152>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L152>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r11, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L153>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L153>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L154>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L154>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L155>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L155>
<L151>:
               	xor	ecx, ecx
               	jmp	 <L156>
               	nop
<L161>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L157>
<L156>:
               	bt	r15, rcx
               	jae	 <L158>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L158>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r14, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L159>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L159>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L160>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L160>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L161>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L161>
<L157>:
               	xor	ecx, ecx
               	jmp	 <L162>
               	nop
<L167>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L163>
<L162>:
               	bt	rbp, rcx
               	jae	 <L164>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L164>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r13, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L165>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L165>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L166>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L166>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L167>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L167>
<L163>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm5, xmm5, xmm5
               	vpxor	xmm6, xmm6, xmm6
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm3, xmm3, xmm3
               	vmovdqa	xmmword ptr [rcx + 0x1c0], xmm2
               	vmovdqa	xmmword ptr [rcx + 0x1d0], xmm0
               	vmovdqa	xmmword ptr [rcx + 0x1e0], xmm7
               	vmovdqa	xmmword ptr [rcx + 0x1f0], xmm4
               	xor	ecx, ecx
               	jmp	 <L168>
               	nop	word ptr cs:[rax + rax]
<L173>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L169>
<L168>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L170>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L170>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, rsi, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L171>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L171>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L172>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L172>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L173>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L173>
<L169>:
               	xor	ecx, ecx
               	jmp	 <L174>
               	nop	dword ptr [rax]
<L179>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L175>
<L174>:
               	bt	r10, rcx
               	jae	 <L176>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L176>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r11, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L177>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L177>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L178>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L178>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L179>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L179>
<L175>:
               	xor	ecx, ecx
               	jmp	 <L180>
               	nop
<L185>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L181>
<L180>:
               	bt	r15, rcx
               	jae	 <L182>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L182>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r14, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L183>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L183>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L184>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L184>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L185>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L185>
<L181>:
               	xor	ecx, ecx
               	jmp	 <L186>
               	nop
<L191>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L187>
<L186>:
               	bt	rbp, rcx
               	jae	 <L188>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L188>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r13, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L189>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L189>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L190>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L190>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L191>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L191>
<L187>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm4, xmm4, xmm4
               	vpxor	xmm7, xmm7, xmm7
               	vpxor	xmm0, xmm0, xmm0
               	vpxor	xmm2, xmm2, xmm2
               	vmovdqa	xmmword ptr [rcx + 0x200], xmm3
               	vmovdqa	xmmword ptr [rcx + 0x210], xmm1
               	vmovdqa	xmmword ptr [rcx + 0x220], xmm6
               	vmovdqa	xmmword ptr [rcx + 0x230], xmm5
               	xor	ecx, ecx
               	jmp	 <L192>
               	nop	word ptr cs:[rax + rax]
<L197>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L193>
<L192>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L194>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L194>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, rsi, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L195>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L195>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L196>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L196>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L197>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L197>
<L193>:
               	xor	ecx, ecx
               	jmp	 <L198>
               	nop	dword ptr [rax]
<L203>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L199>
<L198>:
               	bt	r10, rcx
               	jae	 <L200>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L200>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r11, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L201>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L201>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L202>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L202>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L203>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L203>
<L199>:
               	xor	ecx, ecx
               	jmp	 <L204>
               	nop
<L209>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L205>
<L204>:
               	bt	r15, rcx
               	jae	 <L206>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L206>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r14, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L207>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L207>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L208>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L208>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L209>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L209>
<L205>:
               	xor	ecx, ecx
               	jmp	 <L210>
               	nop
<L215>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L211>
<L210>:
               	bt	rbp, rcx
               	jae	 <L212>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L212>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r13, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L213>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L213>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L214>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L214>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L215>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L215>
<L211>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm5, xmm5, xmm5
               	vpxor	xmm6, xmm6, xmm6
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm3, xmm3, xmm3
               	vmovdqa	xmmword ptr [rcx + 0x240], xmm2
               	vmovdqa	xmmword ptr [rcx + 0x250], xmm0
               	vmovdqa	xmmword ptr [rcx + 0x260], xmm7
               	vmovdqa	xmmword ptr [rcx + 0x270], xmm4
               	xor	ecx, ecx
               	jmp	 <L216>
               	nop	word ptr cs:[rax + rax]
<L221>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L217>
<L216>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L218>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L218>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, rsi, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L219>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L219>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L220>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L220>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L221>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L221>
<L217>:
               	xor	ecx, ecx
               	jmp	 <L222>
               	nop	dword ptr [rax]
<L227>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L223>
<L222>:
               	bt	r10, rcx
               	jae	 <L224>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L224>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r11, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L225>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L225>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L226>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L226>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L227>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L227>
<L223>:
               	xor	ecx, ecx
               	jmp	 <L228>
               	nop
<L233>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L229>
<L228>:
               	bt	r15, rcx
               	jae	 <L230>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L230>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r14, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L231>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L231>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L232>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L232>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L233>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L233>
<L229>:
               	xor	ecx, ecx
               	jmp	 <L234>
               	nop
<L239>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L235>
<L234>:
               	bt	rbp, rcx
               	jae	 <L236>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L236>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r13, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L237>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L237>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L238>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L238>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L239>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L239>
<L235>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm4, xmm4, xmm4
               	vpxor	xmm7, xmm7, xmm7
               	vpxor	xmm0, xmm0, xmm0
               	vpxor	xmm2, xmm2, xmm2
               	vmovdqa	xmmword ptr [rcx + 0x280], xmm3
               	vmovdqa	xmmword ptr [rcx + 0x290], xmm1
               	vmovdqa	xmmword ptr [rcx + 0x2a0], xmm6
               	vmovdqa	xmmword ptr [rcx + 0x2b0], xmm5
               	xor	ecx, ecx
               	jmp	 <L240>
               	nop	word ptr cs:[rax + rax]
<L245>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L241>
<L240>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L242>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L242>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, rsi, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L243>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L243>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L244>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L244>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L245>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L245>
<L241>:
               	xor	ecx, ecx
               	jmp	 <L246>
               	nop	dword ptr [rax]
<L251>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L247>
<L246>:
               	bt	r10, rcx
               	jae	 <L248>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L248>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r11, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L249>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L249>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L250>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L250>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L251>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L251>
<L247>:
               	xor	ecx, ecx
               	jmp	 <L252>
               	nop
<L257>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L253>
<L252>:
               	bt	r15, rcx
               	jae	 <L254>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L254>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r14, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L255>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L255>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L256>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L256>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L257>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L257>
<L253>:
               	xor	ecx, ecx
               	jmp	 <L258>
               	nop
<L263>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L259>
<L258>:
               	bt	rbp, rcx
               	jae	 <L260>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L260>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r13, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L261>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L261>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L262>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L262>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L263>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L263>
<L259>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm5, xmm5, xmm5
               	vpxor	xmm6, xmm6, xmm6
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm3, xmm3, xmm3
               	vmovdqa	xmmword ptr [rcx + 0x2c0], xmm2
               	vmovdqa	xmmword ptr [rcx + 0x2d0], xmm0
               	vmovdqa	xmmword ptr [rcx + 0x2e0], xmm7
               	vmovdqa	xmmword ptr [rcx + 0x2f0], xmm4
               	xor	ecx, ecx
               	jmp	 <L264>
               	nop	word ptr cs:[rax + rax]
<L269>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L265>
<L264>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L266>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L266>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, rsi, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L267>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L267>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L268>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L268>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L269>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L269>
<L265>:
               	xor	ecx, ecx
               	jmp	 <L270>
               	nop	dword ptr [rax]
<L275>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L271>
<L270>:
               	bt	r10, rcx
               	jae	 <L272>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L272>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r11, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L273>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L273>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L274>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L274>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L275>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L275>
<L271>:
               	xor	ecx, ecx
               	jmp	 <L276>
               	nop
<L281>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L277>
<L276>:
               	bt	r15, rcx
               	jae	 <L278>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L278>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r14, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L279>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L279>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L280>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L280>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L281>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L281>
<L277>:
               	xor	ecx, ecx
               	jmp	 <L282>
               	nop
<L287>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L283>
<L282>:
               	bt	rbp, rcx
               	jae	 <L284>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L284>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r13, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L285>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L285>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L286>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L286>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L287>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L287>
<L283>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm4, xmm4, xmm4
               	vpxor	xmm7, xmm7, xmm7
               	vpxor	xmm0, xmm0, xmm0
               	vpxor	xmm2, xmm2, xmm2
               	vmovdqa	xmmword ptr [rcx + 0x300], xmm3
               	vmovdqa	xmmword ptr [rcx + 0x310], xmm1
               	vmovdqa	xmmword ptr [rcx + 0x320], xmm6
               	vmovdqa	xmmword ptr [rcx + 0x330], xmm5
               	xor	ecx, ecx
               	jmp	 <L288>
               	nop	word ptr cs:[rax + rax]
<L293>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L289>
<L288>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L290>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L290>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, rsi, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L291>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L291>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L292>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L292>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L293>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L293>
<L289>:
               	xor	ecx, ecx
               	jmp	 <L294>
               	nop	dword ptr [rax]
<L299>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L295>
<L294>:
               	bt	r10, rcx
               	jae	 <L296>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L296>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r11, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L297>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L297>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L298>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L298>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L299>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L299>
<L295>:
               	xor	ecx, ecx
               	jmp	 <L300>
               	nop
<L305>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L301>
<L300>:
               	bt	r15, rcx
               	jae	 <L302>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L302>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r14, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L303>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L303>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L304>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L304>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L305>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L305>
<L301>:
               	xor	ecx, ecx
               	jmp	 <L306>
               	nop
<L311>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L307>
<L306>:
               	bt	rbp, rcx
               	jae	 <L308>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L308>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r13, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L309>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L309>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L310>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L310>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L311>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L311>
<L307>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm5, xmm5, xmm5
               	vpxor	xmm6, xmm6, xmm6
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm3, xmm3, xmm3
               	vmovdqa	xmmword ptr [rcx + 0x340], xmm2
               	vmovdqa	xmmword ptr [rcx + 0x350], xmm0
               	vmovdqa	xmmword ptr [rcx + 0x360], xmm7
               	vmovdqa	xmmword ptr [rcx + 0x370], xmm4
               	xor	ecx, ecx
               	jmp	 <L312>
               	nop	word ptr cs:[rax + rax]
<L317>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L313>
<L312>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L314>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L314>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, rsi, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L315>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L315>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L316>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L316>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L317>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L317>
<L313>:
               	xor	ecx, ecx
               	jmp	 <L318>
               	nop	dword ptr [rax]
<L323>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L319>
<L318>:
               	bt	r10, rcx
               	jae	 <L320>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L320>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r11, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L321>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L321>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L322>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L322>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L323>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L323>
<L319>:
               	xor	ecx, ecx
               	jmp	 <L324>
               	nop
<L329>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L325>
<L324>:
               	bt	r15, rcx
               	jae	 <L326>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L326>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r14, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L327>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L327>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L328>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L328>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L329>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L329>
<L325>:
               	xor	ecx, ecx
               	jmp	 <L330>
               	nop
<L335>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L331>
<L330>:
               	bt	rbp, rcx
               	jae	 <L332>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L332>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r13, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L333>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L333>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L334>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L334>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L335>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L335>
<L331>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm4, xmm4, xmm4
               	vpxor	xmm7, xmm7, xmm7
               	vpxor	xmm0, xmm0, xmm0
               	vpxor	xmm2, xmm2, xmm2
               	vmovdqa	xmmword ptr [rcx + 0x380], xmm3
               	vmovdqa	xmmword ptr [rcx + 0x390], xmm1
               	vmovdqa	xmmword ptr [rcx + 0x3a0], xmm6
               	vmovdqa	xmmword ptr [rcx + 0x3b0], xmm5
               	xor	ecx, ecx
               	jmp	 <L336>
               	nop	word ptr cs:[rax + rax]
<L341>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L337>
<L336>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L338>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L338>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, rsi, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L339>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L339>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L340>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L340>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L341>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L341>
<L337>:
               	xor	ecx, ecx
               	jmp	 <L342>
               	nop	dword ptr [rax]
<L347>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L343>
<L342>:
               	bt	r10, rcx
               	jae	 <L344>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L344>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r11, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L345>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L345>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L346>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L346>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L347>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L347>
<L343>:
               	xor	ecx, ecx
               	jmp	 <L348>
               	nop
<L353>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L349>
<L348>:
               	bt	r15, rcx
               	jae	 <L350>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L350>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r14, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L351>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L351>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L352>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L352>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L353>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L353>
<L349>:
               	xor	ecx, ecx
               	jmp	 <L354>
               	nop
<L359>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L355>
<L354>:
               	bt	rbp, rcx
               	jae	 <L356>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L356>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r13, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L357>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L357>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L358>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L358>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L359>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L359>
<L355>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm5, xmm5, xmm5
               	vpxor	xmm6, xmm6, xmm6
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm3, xmm3, xmm3
               	vmovdqa	xmmword ptr [rcx + 0x3c0], xmm2
               	vmovdqa	xmmword ptr [rcx + 0x3d0], xmm0
               	vmovdqa	xmmword ptr [rcx + 0x3e0], xmm7
               	vmovdqa	xmmword ptr [rcx + 0x3f0], xmm4
               	xor	ecx, ecx
               	jmp	 <L360>
               	nop	word ptr cs:[rax + rax]
<L365>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L361>
<L360>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L362>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L362>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, rsi, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L363>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L363>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L364>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L364>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L365>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L365>
<L361>:
               	xor	ecx, ecx
               	jmp	 <L366>
               	nop	dword ptr [rax]
<L371>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L367>
<L366>:
               	bt	r10, rcx
               	jae	 <L368>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L368>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r11, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L369>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L369>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L370>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L370>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L371>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L371>
<L367>:
               	xor	ecx, ecx
               	jmp	 <L372>
               	nop
<L377>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L373>
<L372>:
               	bt	r15, rcx
               	jae	 <L374>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L374>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r14, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L375>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L375>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L376>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L376>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L377>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L377>
<L373>:
               	xor	ecx, ecx
               	jmp	 <L378>
               	nop
<L383>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L379>
<L378>:
               	bt	rbp, rcx
               	jae	 <L380>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L380>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r13, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L381>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L381>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L382>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L382>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L383>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L383>
<L379>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm4, xmm4, xmm4
               	vpxor	xmm7, xmm7, xmm7
               	vpxor	xmm0, xmm0, xmm0
               	vpxor	xmm2, xmm2, xmm2
               	vmovdqa	xmmword ptr [rcx + 0x400], xmm3
               	vmovdqa	xmmword ptr [rcx + 0x410], xmm1
               	vmovdqa	xmmword ptr [rcx + 0x420], xmm6
               	vmovdqa	xmmword ptr [rcx + 0x430], xmm5
               	xor	ecx, ecx
               	jmp	 <L384>
               	nop	word ptr cs:[rax + rax]
<L389>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L385>
<L384>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L386>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L386>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, rsi, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L387>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L387>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L388>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L388>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L389>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L389>
<L385>:
               	xor	ecx, ecx
               	jmp	 <L390>
               	nop	dword ptr [rax]
<L395>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L391>
<L390>:
               	bt	r10, rcx
               	jae	 <L392>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L392>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r11, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L393>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L393>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L394>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L394>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L395>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L395>
<L391>:
               	xor	ecx, ecx
               	jmp	 <L396>
               	nop
<L401>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L397>
<L396>:
               	bt	r15, rcx
               	jae	 <L398>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L398>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r14, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L399>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L399>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L400>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L400>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L401>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L401>
<L397>:
               	xor	ecx, ecx
               	jmp	 <L402>
               	nop
<L407>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L403>
<L402>:
               	bt	rbp, rcx
               	jae	 <L404>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm6, xmm7
               	vpxor	xmm4, xmm5, xmm4
<L404>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r13, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L405>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L405>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L406>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
<L406>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L407>
               	vpxor	xmm2, xmm2, xmm3
               	vpxor	xmm0, xmm1, xmm0
               	vpxor	xmm7, xmm5, xmm7
               	vpxor	xmm4, xmm6, xmm4
               	jmp	 <L407>
<L403>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm5, xmm5, xmm5
               	vpxor	xmm6, xmm6, xmm6
               	vpxor	xmm1, xmm1, xmm1
               	vpxor	xmm3, xmm3, xmm3
               	vmovdqa	xmmword ptr [rcx + 0x440], xmm2
               	vmovdqa	xmmword ptr [rcx + 0x450], xmm0
               	vmovdqa	xmmword ptr [rcx + 0x460], xmm7
               	vmovdqa	xmmword ptr [rcx + 0x470], xmm4
               	xor	ecx, ecx
               	jmp	 <L408>
               	nop	word ptr cs:[rax + rax]
<L413>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L409>
<L408>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L410>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L410>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, rsi, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L411>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L411>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L412>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L412>:
               	vpxor	xmm7, xmm0, xmm7
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L413>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L413>
<L409>:
               	xor	ecx, ecx
               	jmp	 <L414>
               	nop	dword ptr [rax]
<L419>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L415>
<L414>:
               	bt	r10, rcx
               	jae	 <L416>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L416>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r11, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L417>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L417>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L418>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L418>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L419>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L419>
<L415>:
               	xor	ecx, ecx
               	jmp	 <L420>
               	nop
<L425>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L421>
<L420>:
               	bt	r15, rcx
               	jae	 <L422>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L422>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r14, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L423>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L423>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L424>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L424>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L425>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L425>
<L421>:
               	xor	ecx, ecx
               	jmp	 <L426>
               	nop
<L431>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm4, xmm2, xmm4
               	vpxor	xmm9, xmm0, xmm7
               	add	rcx, 0x4
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm7, xmm8, xmm4
               	vprolq	xmm4, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	cmp	rcx, 0x40
               	je	 <L427>
<L426>:
               	bt	rbp, rcx
               	jae	 <L428>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm7, xmm6
               	vpxor	xmm5, xmm4, xmm5
<L428>:
               	vpsllq	xmm8, xmm0, 0x11
               	vpxor	xmm7, xmm2, xmm7
               	vpxor	xmm9, xmm0, xmm4
               	shrx	rdx, r13, rcx
               	vpxor	xmm0, xmm7, xmm0
               	vpxor	xmm4, xmm8, xmm7
               	vprolq	xmm7, xmm9, 0x2d
               	vpxor	xmm2, xmm9, xmm2
               	test	dl, 0x2
               	je	 <L429>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L429>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x4
               	je	 <L430>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
<L430>:
               	vpxor	xmm7, xmm0, xmm7
               	vpxor	xmm4, xmm2, xmm4
               	vpsllq	xmm8, xmm0, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm2, xmm7, xmm2
               	vprolq	xmm7, xmm7, 0x2d
               	vpxor	xmm0, xmm4, xmm0
               	vpxor	xmm4, xmm8, xmm4
               	test	dl, 0x8
               	je	 <L431>
               	vpxor	xmm3, xmm3, xmm2
               	vpxor	xmm1, xmm0, xmm1
               	vpxor	xmm6, xmm4, xmm6
               	vpxor	xmm5, xmm7, xmm5
               	jmp	 <L431>
<L427>:
               	mov	rcx, qword ptr [rsp - 0x8]
               	vpxor	xmm0, xmm0, xmm0
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm4, xmm4, xmm4
               	vpxor	xmm7, xmm7, xmm7
               	vmovdqa	xmmword ptr [rcx + 0x480], xmm3
               	vmovdqa	xmmword ptr [rcx + 0x490], xmm1
               	vmovdqa	xmmword ptr [rcx + 0x4a0], xmm6
               	vmovdqa	xmmword ptr [rcx + 0x4b0], xmm5
               	xor	ecx, ecx
               	jmp	 <L432>
               	nop	word ptr cs:[rax + rax]
<L437>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L433>
<L432>:
               	movabs	rdx, 0x1000001110110010
               	bt	rdx, rcx
               	jae	 <L434>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm6, xmm2
               	vpxor	xmm0, xmm5, xmm0
<L434>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, rsi, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L435>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
<L435>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x4444004440000
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x4
               	je	 <L436>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
<L436>:
               	vpxor	xmm6, xmm1, xmm6
               	movabs	rdx, 0x808808008880888
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	shrx	rdx, rdx, rcx
               	test	dl, 0x8
               	je	 <L437>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
               	jmp	 <L437>
<L433>:
               	xor	ecx, ecx
               	jmp	 <L438>
               	nop	dword ptr [rax]
<L443>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L439>
<L438>:
               	bt	r10, rcx
               	jae	 <L440>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm6, xmm2
               	vpxor	xmm0, xmm5, xmm0
<L440>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r11, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L441>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
<L441>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r9, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L442>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
<L442>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r8, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L443>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
               	jmp	 <L443>
<L439>:
               	xor	ecx, ecx
               	jmp	 <L444>
               	nop
<L449>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L445>
<L444>:
               	bt	r15, rcx
               	jae	 <L446>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm6, xmm2
               	vpxor	xmm0, xmm5, xmm0
<L446>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r14, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L447>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
<L447>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, r12, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L448>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
<L448>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rbx, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L449>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
               	jmp	 <L449>
<L445>:
               	xor	ecx, ecx
               	jmp	 <L450>
               	nop
<L455>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm5, xmm3, xmm5
               	vpxor	xmm9, xmm1, xmm6
               	add	rcx, 0x4
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm6, xmm8, xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	cmp	rcx, 0x40
               	je	 <L451>
<L450>:
               	bt	rbp, rcx
               	jae	 <L452>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm6, xmm2
               	vpxor	xmm0, xmm5, xmm0
<L452>:
               	vpsllq	xmm8, xmm1, 0x11
               	vpxor	xmm6, xmm3, xmm6
               	vpxor	xmm9, xmm1, xmm5
               	shrx	rdx, r13, rcx
               	vpxor	xmm1, xmm6, xmm1
               	vpxor	xmm5, xmm8, xmm6
               	vprolq	xmm6, xmm9, 0x2d
               	vpxor	xmm3, xmm9, xmm3
               	test	dl, 0x2
               	je	 <L453>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
<L453>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rdi, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x4
               	je	 <L454>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
<L454>:
               	vpxor	xmm6, xmm1, xmm6
               	vpxor	xmm5, xmm3, xmm5
               	vpsllq	xmm8, xmm1, 0x11
               	shrx	rdx, rax, rcx
               	vpxor	xmm3, xmm6, xmm3
               	vprolq	xmm6, xmm6, 0x2d
               	vpxor	xmm1, xmm5, xmm1
               	vpxor	xmm5, xmm8, xmm5
               	test	dl, 0x8
               	je	 <L455>
               	vpxor	xmm7, xmm7, xmm3
               	vpxor	xmm4, xmm1, xmm4
               	vpxor	xmm2, xmm5, xmm2
               	vpxor	xmm0, xmm6, xmm0
               	jmp	 <L455>
<L451>:
               	mov	rax, qword ptr [rsp - 0x8]
               	vmovdqa	xmmword ptr [rax + 0x4c0], xmm7
               	vmovdqa	xmmword ptr [rax + 0x4d0], xmm4
               	vmovdqa	xmmword ptr [rax + 0x4e0], xmm2
               	vmovdqa	xmmword ptr [rax + 0x4f0], xmm0
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	ret
