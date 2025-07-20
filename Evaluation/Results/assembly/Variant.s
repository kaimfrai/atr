
build/Evaluation/bin/Variant:	file format elf64-x86-64

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

<memset$plt>:
               	mov	r11d, 0x7

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x50>
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
               	nop	word ptr cs:[rax + rax]
               	nop	dword ptr [rax]
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
               	sub	rsp, 0x698
               	mov	rax, qword ptr fs:[0x28]
               	mov	qword ptr [rsp + 0x690], rax
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	rbx, byte ptr [rcx]
               	movzx	edx, byte ptr [rcx + 0x1]
               	add	rbx, -0x30
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop
<L1>:
               	lea	rsi, [rbx + 4*rbx]
               	movsx	rdx, dl
               	lea	rbx, [rdx + 2*rsi - 0x30]
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	r15, byte ptr [rax]
               	movzx	ecx, byte ptr [rax + 0x1]
               	add	r15, -0x30
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	rdx, [r15 + 4*r15]
               	movsx	rcx, cl
               	lea	r15, [rcx + 2*rdx - 0x30]
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	mov	rsi, qword ptr  <_ZSt7nothrow$got>
               	imul	rdi, r15, 0x640
               	shl	r15, 0x4
               	call	 <_ZnamRKSt9nothrow_t$plt>
               	movabs	rcx, -0x61c8864680b583eb
               	vmovq	xmm1, rbx
               	lea	r14, [rsp + 0x40]
               	mov	r12, rax
               	add	rcx, rbx
               	mov	rdi, r14
               	vmovq	xmm0, rcx
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	call	 <RandomGenerators@Evaluation.Dependency.PseudoRandomSequence::RandomGenerators<0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>(Meta::Random::Splitmix64@Meta.Random.Splitmix<2ul>, std::integer_sequence<unsigned long, 0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>)>
               	mov	qword ptr [rsp + 0x540], 0x0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x50]
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x90]
               	vmovdqa	xmm2, xmmword ptr [rsp + 0xd0]
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x110]
               	vpsllq	xmm4, xmm0, 0x2
               	vpaddq	xmm0, xmm4, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm4, xmm0, 0x3
               	vpaddq	xmm0, xmm4, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x550], xmm0
               	vpsllq	xmm0, xmm1, 0x2
               	vpaddq	xmm0, xmm0, xmm1
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x560], xmm0
               	vpsllq	xmm0, xmm2, 0x2
               	vpaddq	xmm0, xmm0, xmm2
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x570], xmm0
               	vpsllq	xmm0, xmm3, 0x2
               	vpaddq	xmm0, xmm0, xmm3
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x580], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x150]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x590], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x190]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x5a0], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x1d0]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x5b0], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x210]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x5c0], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x250]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm0, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x5d0], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x290]
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x2d0]
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x310]
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x350]
               	vpsllq	xmm4, xmm0, 0x2
               	vpaddq	xmm0, xmm4, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm4, xmm0, 0x3
               	vpaddq	xmm5, xmm4, xmm0
               	vpsllq	xmm0, xmm1, 0x2
               	vpaddq	xmm0, xmm0, xmm1
               	vmovdqa	xmmword ptr [rsp + 0x5e0], xmm5
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm6, xmm1, xmm0
               	vpsllq	xmm0, xmm2, 0x2
               	vpaddq	xmm0, xmm0, xmm2
               	vmovdqa	xmmword ptr [rsp + 0x5f0], xmm6
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm7, xmm1, xmm0
               	vpsllq	xmm0, xmm3, 0x2
               	vpaddq	xmm0, xmm0, xmm3
               	vmovdqa	xmmword ptr [rsp + 0x600], xmm7
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm8, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x610], xmm8
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x390]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm9, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x620], xmm9
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x3d0]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm10, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x630], xmm10
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x410]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm11, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x640], xmm11
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x450]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm12, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x650], xmm12
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x490]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm13, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x660], xmm13
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x4d0]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm14, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x670], xmm14
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x510]
               	vpsllq	xmm1, xmm0, 0x2
               	vpaddq	xmm0, xmm1, xmm0
               	vprolq	xmm0, xmm0, 0x7
               	vpsllq	xmm1, xmm0, 0x3
               	vpaddq	xmm15, xmm1, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x680], xmm15
               	mov	rsi, qword ptr [rsp + 0x540]
               	cmp	rsi, r15
               	jne	 <L4>
               	vpxor	xmm0, xmm0, xmm0
               	test	r12, r12
               	jne	 <L5>
               	jmp	 <L6>
<L4>:
               	vpbroadcastq	zmm0, r14
               	vpaddq	zmm0, zmm0, zmmword ptr  <memset+0xc00>
               	vpbroadcastd	ymm1, dword ptr  <.LCPI0_7>
               	vpbroadcastq	xmm2, qword ptr  <.LCPI0_8>
               	vmovq	xmm3, qword ptr  <.LCPI0_9>
               	vpbroadcastd	xmm4, dword ptr  <.LCPI0_7>
               	mov	rdi, qword ptr [rsp + 0x550]
               	vpunpcklqdq	xmm18, xmm7, xmm8 # xmm18 = xmm7[0],xmm8[0]
               	vpunpcklqdq	xmm16, xmm12, xmm13 # xmm16 = xmm12[0],xmm13[0]
               	vpunpcklqdq	xmm17, xmm10, xmm11 # xmm17 = xmm10[0],xmm11[0]
               	vpunpcklqdq	xmm19, xmm9, xmm14 # xmm19 = xmm9[0],xmm14[0]
               	vpunpcklqdq	xmm20, xmm6, xmm5 # xmm20 = xmm6[0],xmm5[0]
               	lea	rcx,  <memset+0xc40>
               	xor	eax, eax
               	mov	rdx, r12
               	jmp	 <L7>
               	nop	word ptr [rax + rax]
<L10>:
               	vpsrldq	xmm16, xmmword ptr [rsp + 0x550], 0x1 # xmm16 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm5, xmm5, 0x1         # xmm5 = xmm5[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm6, xmm6, 0x1         # xmm6 = xmm6[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm7, xmm7, 0x1         # xmm7 = xmm7[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm8, xmm8, 0x1         # xmm8 = xmm8[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm9, xmm9, 0x1         # xmm9 = xmm9[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm10, xmm10, 0x1       # xmm10 = xmm10[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm11, xmm11, 0x1       # xmm11 = xmm11[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm12, xmm12, 0x1       # xmm12 = xmm12[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm13, xmm13, 0x1       # xmm13 = xmm13[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm14, xmm14, 0x1       # xmm14 = xmm14[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vpsrldq	xmm15, xmm15, 0x1       # xmm15 = xmm15[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x550], xmm16
               	vmovq	rdi, xmm16
               	vpsrldq	xmm17, xmmword ptr [rsp + 0x560], 0x1 # xmm17 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x560], xmm17
               	vpsrldq	xmm17, xmmword ptr [rsp + 0x570], 0x1 # xmm17 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x570], xmm17
               	vpsrldq	xmm17, xmmword ptr [rsp + 0x580], 0x1 # xmm17 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x580], xmm17
               	vpsrldq	xmm17, xmmword ptr [rsp + 0x590], 0x1 # xmm17 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x590], xmm17
               	vpsrldq	xmm17, xmmword ptr [rsp + 0x5a0], 0x1 # xmm17 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x5a0], xmm17
               	vpsrldq	xmm17, xmmword ptr [rsp + 0x5b0], 0x1 # xmm17 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x5b0], xmm17
               	vpsrldq	xmm17, xmmword ptr [rsp + 0x5c0], 0x1 # xmm17 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x5c0], xmm17
               	vpsrldq	xmm17, xmmword ptr [rsp + 0x5d0], 0x1 # xmm17 = mem[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
               	vmovapd	xmmword ptr [rsp + 0x5d0], xmm17
               	vmovapd	xmmword ptr [rsp + 0x5e0], xmm5
               	vmovapd	xmmword ptr [rsp + 0x5f0], xmm6
               	vmovapd	xmmword ptr [rsp + 0x600], xmm7
               	vmovapd	xmmword ptr [rsp + 0x610], xmm8
               	vmovapd	xmmword ptr [rsp + 0x620], xmm9
               	vmovapd	xmmword ptr [rsp + 0x630], xmm10
               	vmovapd	xmmword ptr [rsp + 0x640], xmm11
               	vmovapd	xmmword ptr [rsp + 0x650], xmm12
<L11>:
               	vunpcklpd	xmm18, xmm7, xmm8 # xmm18 = xmm7[0],xmm8[0]
               	vunpcklpd	xmm16, xmm12, xmm13 # xmm16 = xmm12[0],xmm13[0]
               	vunpcklpd	xmm17, xmm10, xmm11 # xmm17 = xmm10[0],xmm11[0]
               	vunpcklpd	xmm19, xmm9, xmm14 # xmm19 = xmm9[0],xmm14[0]
               	vunpcklpd	xmm20, xmm6, xmm5 # xmm20 = xmm6[0],xmm5[0]
               	add	rdx, 0x64
               	inc	rax
               	vmovapd	xmmword ptr [rsp + 0x660], xmm13
               	vmovapd	xmmword ptr [rsp + 0x670], xmm14
               	vmovapd	xmmword ptr [rsp + 0x680], xmm15
               	cmp	rsi, r15
               	je	 <L8>
<L7>:
               	movzx	r8d, dil
               	kxnorw	k1, k0, k0
               	vpshufb	xmm21, xmm20, xmm2
               	vpxord	xmm20, xmm20, xmm20
               	imul	r8d, r8d, 0x4f
               	vpgatherqq	zmm20 {k1}, qword ptr [1*zmm0]
               	vcvtdq2ps	xmm21, xmm21
               	shr	r8d, 0xa
               	lea	r9d, [r8 + 2*r8]
               	vpmovqd	ymm20, zmm20
               	lea	r8d, [r8 + 4*r9]
               	sub	dil, r8b
               	movzx	r8d, dil
               	movsxd	r8, dword ptr [rcx + 4*r8]
               	vpandd	ymm20, ymm20, ymm1
               	vcvtdq2ps	ymm20, ymm20
               	add	r8, rcx
               	jmp	r8
               	imul	r8, rax, 0x64
               	vmovdqu64	ymmword ptr [rdx], ymm20
               	vmovd	dword ptr [rdx + 0x20], xmm21
               	jmp	 <L9>
               	nop	word ptr [rax + rax]
               	imul	r8, rax, 0x64
               	vmovdqu64	ymmword ptr [rdx], ymm20
               	jmp	 <L9>
               	nop	dword ptr [rax]
               	imul	r8, rax, 0x64
               	vmovdqu64	ymmword ptr [rdx], ymm20
               	vmovq	qword ptr [rdx + 0x20], xmm21
               	jmp	 <L9>
               	imul	r8, rax, 0x64
               	vmovdqu64	ymmword ptr [rdx], ymm20
               	vextractps	dword ptr [rdx + 0x20], xmm21, 0x1
               	nop	word ptr cs:[rax + rax]
<L9>:
               	add	r8, r12
<L12>:
               	inc	rsi
               	mov	byte ptr [r8 + 0x60], dil
               	mov	qword ptr [rsp + 0x540], rsi
               	test	sil, 0xf
               	jne	 <L10>
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x50]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x40]
               	vmovdqa	xmm7, xmmword ptr [rsp + 0x80]
               	vmovdqa	xmm8, xmmword ptr [rsp + 0x90]
               	vpxor	xmm10, xmm5, xmmword ptr [rsp + 0x60]
               	vpxor	xmm11, xmm6, xmmword ptr [rsp + 0x70]
               	vpsllq	xmm9, xmm6, 0x11
               	vpxor	xmm6, xmm10, xmm6
               	vpxor	xmm5, xmm11, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x50], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x40], xmm5
               	vpxor	xmm5, xmm10, xmm9
               	vmovdqa	xmmword ptr [rsp + 0x60], xmm5
               	vprolq	xmm5, xmm11, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x70], xmm5
               	vpsllq	xmm5, xmm8, 0x11
               	vpxor	xmm6, xmm7, xmmword ptr [rsp + 0xa0]
               	vpxor	xmm9, xmm8, xmmword ptr [rsp + 0xb0]
               	vpxor	xmm8, xmm8, xmm6
               	vpxor	xmm7, xmm9, xmm7
               	vpxor	xmm5, xmm6, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x90], xmm8
               	vmovdqa	xmmword ptr [rsp + 0x80], xmm7
               	vmovdqa	xmmword ptr [rsp + 0xa0], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0xb0], xmm5
               	vmovdqa	xmm7, xmmword ptr [rsp + 0xc0]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0xd0]
               	vpxor	xmm8, xmm7, xmmword ptr [rsp + 0xe0]
               	vpxor	xmm9, xmm5, xmmword ptr [rsp + 0xf0]
               	vpsllq	xmm6, xmm5, 0x11
               	vpxor	xmm5, xmm8, xmm5
               	vmovdqa	xmmword ptr [rsp + 0xd0], xmm5
               	vpxor	xmm5, xmm9, xmm7
               	vmovdqa	xmmword ptr [rsp + 0xc0], xmm5
               	vpxor	xmm5, xmm8, xmm6
               	vmovdqa	xmmword ptr [rsp + 0xe0], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0xf0], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x110]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x100]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x120]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x130]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x110], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x100], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x120], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x130], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x150]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x140]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x160]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x170]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x150], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x140], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x160], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x170], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x190]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x180]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x1a0]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x1b0]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x190], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x180], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x1a0], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x1b0], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x1d0]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x1c0]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x1e0]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x1f0]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x1d0], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x1c0], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x1e0], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x1f0], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x210]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x200]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x220]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x230]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x210], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x200], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x220], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x230], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x250]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x240]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x260]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x270]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x250], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x240], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x270], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x290]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x280]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x2a0]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x2b0]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x290], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x280], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x2a0], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x2b0], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x2d0]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x2c0]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x2e0]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x2f0]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x2d0], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x2c0], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x2e0], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x2f0], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x310]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x300]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x320]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x330]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x310], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x300], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x320], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x330], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x350]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x340]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x360]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x370]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x350], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x340], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x360], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x370], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x390]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x380]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x3a0]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x3b0]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x390], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x380], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x3a0], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x3b0], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x3d0]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x3c0]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x3e0]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x3f0]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x3d0], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x3c0], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x3e0], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x3f0], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x410]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x400]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x420]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x430]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x410], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x400], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x420], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x430], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x450]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x440]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x460]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x470]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x450], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x440], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x460], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x470], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x490]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x480]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x4a0]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x4b0]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm6, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x490], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x480], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x4a0], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x4b0], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x4d0]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x4c0]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x4e0]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x4f0]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm14, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x4d0], xmm14
               	vmovdqa	xmmword ptr [rsp + 0x4c0], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x4e0], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x4f0], xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x510]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x500]
               	vpxor	xmm8, xmm5, xmmword ptr [rsp + 0x520]
               	vpxor	xmm9, xmm6, xmmword ptr [rsp + 0x530]
               	vpsllq	xmm7, xmm6, 0x11
               	vpxor	xmm15, xmm8, xmm6
               	vpxor	xmm5, xmm9, xmm5
               	vmovdqa	xmmword ptr [rsp + 0x510], xmm15
               	vmovdqa	xmmword ptr [rsp + 0x500], xmm5
               	vpxor	xmm5, xmm8, xmm7
               	vmovdqa	xmmword ptr [rsp + 0x520], xmm5
               	vprolq	xmm5, xmm9, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x530], xmm5
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x50]
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x90]
               	vmovdqa	xmm7, xmmword ptr [rsp + 0xd0]
               	vmovdqa	xmm8, xmmword ptr [rsp + 0x110]
               	vpsllq	xmm9, xmm5, 0x2
               	vpaddq	xmm5, xmm9, xmm5
               	vprolq	xmm5, xmm5, 0x7
               	vpsllq	xmm9, xmm5, 0x3
               	vpaddq	xmm16, xmm9, xmm5
               	vpsllq	xmm5, xmm6, 0x2
               	vpaddq	xmm5, xmm5, xmm6
               	vmovq	rdi, xmm16
               	vprolq	xmm5, xmm5, 0x7
               	vpsllq	xmm6, xmm5, 0x3
               	vpaddq	xmm17, xmm6, xmm5
               	vpsllq	xmm5, xmm7, 0x2
               	vpaddq	xmm5, xmm5, xmm7
               	vprolq	xmm5, xmm5, 0x7
               	vpsllq	xmm6, xmm5, 0x3
               	vpaddq	xmm18, xmm6, xmm5
               	vpsllq	xmm5, xmm8, 0x2
               	vpaddq	xmm5, xmm8, xmm5
               	vprolq	xmm5, xmm5, 0x7
               	vpsllq	xmm6, xmm5, 0x3
               	vpaddq	xmm19, xmm6, xmm5
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x150]
               	vpsllq	xmm6, xmm5, 0x2
               	vpaddq	xmm5, xmm6, xmm5
               	vprolq	xmm5, xmm5, 0x7
               	vpsllq	xmm6, xmm5, 0x3
               	vpaddq	xmm20, xmm6, xmm5
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x190]
               	vpsllq	xmm6, xmm5, 0x2
               	vpaddq	xmm5, xmm6, xmm5
               	vprolq	xmm5, xmm5, 0x7
               	vpsllq	xmm6, xmm5, 0x3
               	vpaddq	xmm21, xmm6, xmm5
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x1d0]
               	vpsllq	xmm6, xmm5, 0x2
               	vpaddq	xmm5, xmm6, xmm5
               	vprolq	xmm5, xmm5, 0x7
               	vpsllq	xmm6, xmm5, 0x3
               	vpaddq	xmm22, xmm6, xmm5
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x210]
               	vpsllq	xmm6, xmm5, 0x2
               	vpaddq	xmm5, xmm6, xmm5
               	vprolq	xmm5, xmm5, 0x7
               	vpsllq	xmm6, xmm5, 0x3
               	vpaddq	xmm23, xmm6, xmm5
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x250]
               	vpsllq	xmm6, xmm5, 0x2
               	vpaddq	xmm5, xmm6, xmm5
               	vprolq	xmm5, xmm5, 0x7
               	vpsllq	xmm6, xmm5, 0x3
               	vpaddq	xmm24, xmm6, xmm5
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x290]
               	vpsllq	xmm6, xmm5, 0x2
               	vpaddq	xmm5, xmm6, xmm5
               	vprolq	xmm5, xmm5, 0x7
               	vpsllq	xmm6, xmm5, 0x3
               	vpaddq	xmm5, xmm6, xmm5
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x2d0]
               	vpsllq	xmm7, xmm6, 0x2
               	vpaddq	xmm6, xmm7, xmm6
               	vprolq	xmm6, xmm6, 0x7
               	vpsllq	xmm7, xmm6, 0x3
               	vpaddq	xmm6, xmm7, xmm6
               	vmovdqa	xmm7, xmmword ptr [rsp + 0x310]
               	vpsllq	xmm8, xmm7, 0x2
               	vpaddq	xmm7, xmm8, xmm7
               	vprolq	xmm7, xmm7, 0x7
               	vpsllq	xmm8, xmm7, 0x3
               	vpaddq	xmm7, xmm8, xmm7
               	vmovdqa	xmm8, xmmword ptr [rsp + 0x350]
               	vpsllq	xmm9, xmm8, 0x2
               	vpaddq	xmm8, xmm9, xmm8
               	vprolq	xmm8, xmm8, 0x7
               	vpsllq	xmm9, xmm8, 0x3
               	vpaddq	xmm8, xmm9, xmm8
               	vmovdqa	xmm9, xmmword ptr [rsp + 0x390]
               	vpsllq	xmm10, xmm9, 0x2
               	vpaddq	xmm9, xmm10, xmm9
               	vprolq	xmm9, xmm9, 0x7
               	vpsllq	xmm10, xmm9, 0x3
               	vpaddq	xmm9, xmm10, xmm9
               	vmovdqa	xmm10, xmmword ptr [rsp + 0x3d0]
               	vpsllq	xmm11, xmm10, 0x2
               	vpaddq	xmm10, xmm11, xmm10
               	vprolq	xmm10, xmm10, 0x7
               	vpsllq	xmm11, xmm10, 0x3
               	vpaddq	xmm10, xmm11, xmm10
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x410]
               	vpsllq	xmm12, xmm11, 0x2
               	vpaddq	xmm11, xmm12, xmm11
               	vprolq	xmm11, xmm11, 0x7
               	vpsllq	xmm12, xmm11, 0x3
               	vpaddq	xmm11, xmm12, xmm11
               	vmovdqa	xmm12, xmmword ptr [rsp + 0x450]
               	vpsllq	xmm13, xmm12, 0x2
               	vpaddq	xmm12, xmm13, xmm12
               	vprolq	xmm12, xmm12, 0x7
               	vpsllq	xmm13, xmm12, 0x3
               	vpaddq	xmm12, xmm13, xmm12
               	vmovdqa	xmm13, xmmword ptr [rsp + 0x490]
               	vmovdqa64	xmmword ptr [rsp + 0x550], xmm16
               	vmovdqa64	xmmword ptr [rsp + 0x560], xmm17
               	vmovdqa64	xmmword ptr [rsp + 0x570], xmm18
               	vmovdqa64	xmmword ptr [rsp + 0x580], xmm19
               	vmovdqa64	xmmword ptr [rsp + 0x590], xmm20
               	vmovdqa64	xmmword ptr [rsp + 0x5a0], xmm21
               	vmovdqa64	xmmword ptr [rsp + 0x5b0], xmm22
               	vmovdqa64	xmmword ptr [rsp + 0x5c0], xmm23
               	vmovdqa64	xmmword ptr [rsp + 0x5d0], xmm24
               	vmovdqa	xmmword ptr [rsp + 0x5e0], xmm5
               	vmovdqa	xmmword ptr [rsp + 0x5f0], xmm6
               	vmovdqa	xmmword ptr [rsp + 0x600], xmm7
               	vmovdqa	xmmword ptr [rsp + 0x610], xmm8
               	vmovdqa	xmmword ptr [rsp + 0x620], xmm9
               	vmovdqa	xmmword ptr [rsp + 0x630], xmm10
               	vmovdqa	xmmword ptr [rsp + 0x640], xmm11
               	vmovdqa	xmmword ptr [rsp + 0x650], xmm12
               	mov	rsi, qword ptr [rsp + 0x540]
               	vpsllq	xmm25, xmm13, 0x2
               	vpaddq	xmm13, xmm25, xmm13
               	vprolq	xmm13, xmm13, 0x7
               	vpsllq	xmm25, xmm13, 0x3
               	vpaddq	xmm13, xmm25, xmm13
               	vpsllq	xmm25, xmm14, 0x2
               	vpaddq	xmm14, xmm25, xmm14
               	vprolq	xmm14, xmm14, 0x7
               	vpsllq	xmm25, xmm14, 0x3
               	vpaddq	xmm14, xmm25, xmm14
               	vpsllq	xmm25, xmm15, 0x2
               	vpaddq	xmm15, xmm25, xmm15
               	vprolq	xmm15, xmm15, 0x7
               	vpsllq	xmm25, xmm15, 0x3
               	vpaddq	xmm15, xmm25, xmm15
               	jmp	 <L11>
               	vinserti32x4	ymm16, ymm17, xmm16, 0x1
               	vpextrb	r8d, xmm19, 0x8
               	vpshufb	xmm18, xmm18, xmm3
               	vpshufd	xmm22, xmm20, 0xff      # xmm22 = xmm20[3,3,3,3]
               	vmovdqu64	ymmword ptr [rdx], ymm20
               	vpmovqd	xmm16, ymm16
               	vcvtsi2ss	xmm21, xmm26, r8d
               	vpextrb	r8d, xmm19, 0x0
               	vcvtsi2ss	xmm19, xmm26, r8d
               	imul	r8, rax, 0x64
               	vcvtdq2ps	xmm18, xmm18
               	vpandd	xmm16, xmm16, xmm4
               	vcvtdq2ps	xmm16, xmm16
               	add	r8, r12
               	vmovq	qword ptr [rdx + 0x20], xmm18
               	vmovss	dword ptr [rdx + 0x28], xmm19
               	vmovd	dword ptr [rdx + 0x2c], xmm22
               	vpshufd	xmm17, xmm16, 0xe9      # xmm17 = xmm16[1,2,2,3]
               	vmovdqu64	xmmword ptr [rdx + 0x30], xmm16
               	vmovq	qword ptr [rdx + 0x40], xmm18
               	vmovss	dword ptr [rdx + 0x48], xmm19
               	vmovd	dword ptr [rdx + 0x4c], xmm22
               	vmovss	dword ptr [rdx + 0x50], xmm21
               	vmovq	qword ptr [rdx + 0x54], xmm17
               	vextractps	dword ptr [rdx + 0x5c], xmm16, 0x3
               	jmp	 <L12>
               	vmovdqu64	ymmword ptr [rdx], ymm20
               	mov	r8, rdx
               	jmp	 <L12>
<L8>:
               	imul	rax, rax, 0x64
               	shr	rax, 0x2
               	imul	r13d, eax, 0xc28f5c29
               	test	r13d, r13d
               	je	 <L13>
               	mov	qword ptr [rsp + 0x20], r15
               	lea	r15, [rsp + 0x3f]
               	vpxor	xmm0, xmm0, xmm0
               	mov	qword ptr [rsp + 0x28], rbx
               	vmovdqu64	zmmword ptr [rsp + 0x80], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x40], zmm0
               	mov	qword ptr [rsp + 0x18], r12
               	jmp	 <L14>
               	nop	word ptr cs:[rax + rax]
<L15>:
               	vmovss	xmm0, dword ptr [rsp + 0x44]
               	mov	r14d, 0x1
               	vmovss	dword ptr [rsp + 0x48], xmm0
<L27>:
               	mov	eax, r14d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x40]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset$plt>
               	mov	r12, rbp
<L14>:
               	blsi	eax, r13d
               	imul	rbp, rax, 0x64
               	add	rbp, r12
               	test	eax, eax
               	je	 <L15>
               	mov	dword ptr [rsp], r13d
               	mov	ebx, 0x1
               	mov	r13d, 0x1
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x30], rax
               	jmp	 <L16>
               	nop	word ptr [rax + rax]
<L18>:
               	mov	ecx, 0xfffffffe
               	movsxd	rax, r14d
               	add	r12, 0x64
               	mov	r13d, r14d
               	sub	ecx, ebx
               	inc	ebx
               	vmovss	dword ptr [rsp + 4*rax + 0x40], xmm0
               	lzcnt	esi, ebx
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	cmp	r12, rbp
               	je	 <L17>
<L16>:
               	movzx	eax, byte ptr [r12 + 0x60]
               	mov	r14d, ecx
               	lea	rcx,  <std::__detail::__variant::__gen_vtable<std::__detail::__variant::__deduce_visit_result<float>, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&>::_S_vtable>
               	mov	rdi, r15
               	mov	rsi, r12
               	vzeroupper
               	call	qword ptr [rcx + 8*rax]
               	mov	edx, r14d
               	sub	edx, r13d
               	jl	 <L18>
               	movsxd	rax, r13d
               	cmp	edx, 0x7
               	jb	 <L19>
               	lea	rcx, [rdx + 0x1]
               	cmp	edx, 0x3f
               	jae	 <L20>
               	xor	edx, edx
               	jmp	 <L21>
<L20>:
               	movabs	rsi, 0x1ffffffc0
               	lea	r8, [rsp + 0x100]
               	mov	rdx, rcx
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	and	rdx, rsi
               	lea	rsi, [r8 + 4*rax]
<L22>:
               	vaddps	zmm0, zmm0, zmmword ptr [rsi + 4*rdi - 0xc0]
               	vaddps	zmm1, zmm1, zmmword ptr [rsi + 4*rdi - 0x80]
               	vaddps	zmm2, zmm2, zmmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	zmm3, zmm3, zmmword ptr [rsi + 4*rdi]
               	add	rdi, 0x40
               	cmp	rdx, rdi
               	jne	 <L22>
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
               	je	 <L18>
               	test	cl, 0x38
               	je	 <L23>
<L21>:
               	movabs	rsi, 0x1ffffffc0
               	lea	rdi, [rsp + 4*rax + 0x40]
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	add	rsi, 0x38
               	and	rsi, rcx
<L24>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
               	add	rdx, 0x8
               	cmp	rsi, rdx
               	jne	 <L24>
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rsi
               	je	 <L18>
               	add	rax, rsi
               	jmp	 <L19>
<L23>:
               	add	rax, rdx
               	nop	word ptr [rax + rax]
<L19>:
               	mov	ecx, r14d
               	sub	ecx, eax
               	lea	rax, [rsp + 4*rax + 0x40]
               	xor	edx, edx
               	inc	ecx
               	nop
<L25>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L25>
               	jmp	 <L18>
               	nop	word ptr cs:[rax + rax]
<L17>:
               	mov	r13d, dword ptr [rsp]
               	sub	r13d, dword ptr [rsp + 0x30]
               	je	 <L26>
               	vmovss	dword ptr [rsp + 4*rax + 0x44], xmm0
               	mov	r12, rbp
               	test	r14d, r14d
               	jns	 <L27>
               	jmp	 <L14>
<L26>:
               	mov	rbx, qword ptr [rsp + 0x28]
               	mov	r15, qword ptr [rsp + 0x20]
               	mov	r12, qword ptr [rsp + 0x18]
               	test	r12, r12
               	jne	 <L5>
<L6>:
               	cmp	rbx, 0x2a
               	je	 <L28>
               	jmp	 <L29>
<L13>:
               	vpxor	xmm0, xmm0, xmm0
<L5>:
               	mov	rdi, r12
               	vmovdqa	xmmword ptr [rsp], xmm0
               	vzeroupper
               	call	 <_ZdaPv$plt>
               	vmovdqa	xmm0, xmmword ptr [rsp]
               	cmp	rbx, 0x2a
               	jne	 <L29>
<L28>:
               	cmp	r15, 0x30d40
               	je	 <L30>
               	cmp	r15, 0x186a0
               	jne	 <L29>
               	vucomiss	xmm0, dword ptr  <.LCPI0_6>
               	jne	 <L31>
<L29>:
               	mov	rax, qword ptr fs:[0x28]
               	cmp	rax, qword ptr [rsp + 0x690]
               	jne	 <L32>
               	xor	eax, eax
               	add	rsp, 0x698
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L30>:
               	vucomiss	xmm0, dword ptr  <.LCPI0_5>
               	je	 <L29>
<L31>:
               	vmovaps	xmmword ptr [rsp], xmm0
               	mov	rax, qword ptr fs:[0x28]
               	cmp	rax, qword ptr [rsp + 0x690]
               	jne	 <L32>
               	mov	edi, 0x4
               	vzeroupper
               	call	 <__cxa_allocate_exception$plt>
               	vmovaps	xmm0, xmmword ptr [rsp]
               	mov	rsi, qword ptr  <_ZTIf$got>
               	mov	rdi, rax
               	xor	edx, edx
               	vmovss	dword ptr [rax], xmm0
               	call	 <__cxa_throw$plt>
<L32>:
               	vzeroupper
               	call	 <__stack_chk_fail$plt>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 0ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI3_0>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 1ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI3_0>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 2ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 3ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 4ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI6_0>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 5ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 6ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 7ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI9_0>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 8ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <.LCPI14_0>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 9ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI3_0>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 10ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI12_0>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 11ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Circle@Evaluation.CRTP.Circle, Bodies3D::Ellipse@Evaluation.CRTP.Ellipse, Bodies3D::Rectangle@Evaluation.CRTP.Rectangle, Bodies3D::Square@Evaluation.CRTP.Square, Bodies3D::Triangle@Evaluation.CRTP.Triangle, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <.LCPI14_0>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret
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
               	vpbroadcastq	xmm4, qword ptr  <.LCPI15_1>
               	vpbroadcastq	xmm7, qword ptr  <.LCPI15_2>
               	vpsrlq	xmm2, xmm0, 0x1e
               	vpaddq	xmm1, xmm0, qword ptr {1to2} <.LCPI15_0>
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
               	vpaddq	xmm2, xmm0, qword ptr {1to2} <.LCPI15_3>
               	vpaddq	xmm0, xmm0, qword ptr {1to2} <.LCPI15_4>
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
