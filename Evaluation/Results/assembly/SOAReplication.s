
build/Evaluation/bin/SOAReplication:	file format elf64-x86-64

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

<__cxa_throw$plt>:
               	mov	r11d, 0x0

<__cxa_throw@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x18>
               	int3
               	int3
               	int3
               	int3

<__cxa_allocate_exception$plt>:
               	mov	r11d, 0x1

<__cxa_allocate_exception@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x20>
               	int3
               	int3
               	int3
               	int3

<__stack_chk_fail$plt>:
               	mov	r11d, 0x2

<__stack_chk_fail@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	int3
               	int3
               	int3
               	int3

<free$plt>:
               	mov	r11d, 0x3

<free@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x30>
               	int3
               	int3
               	int3
               	int3

<aligned_alloc$plt>:
               	mov	r11d, 0x4

<aligned_alloc@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	int3
               	int3
               	int3
               	int3

<memset$plt>:
               	mov	r11d, 0x5

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
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
               	mov	rbp, rsp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	and	rsp, -0x40
               	sub	rsp, 0xac0
               	mov	rax, qword ptr fs:[0x28]
               	mov	qword ptr [rsp + 0xa80], rax
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	rbx, byte ptr [rcx]
               	movzx	edx, byte ptr [rcx + 0x1]
               	add	rbx, -0x30
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
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
               	shl	r15, 0x4
               	mov	r13d, 0x40
               	mov	edi, 0x40
               	mov	eax, r15d
               	and	eax, 0x30
               	sub	r13d, eax
               	test	eax, eax
               	cmove	r13d, eax
               	add	r13d, r15d
               	lea	rax, [r13 + 4*r13]
               	lea	rsi, [r13 + 8*rax]
               	call	 <aligned_alloc$plt>
               	movabs	rcx, -0x61c8864680b583eb
               	vmovq	xmm1, rbx
               	lea	rdi, [rsp + 0x280]
               	mov	r12, rax
               	add	rcx, rbx
               	vmovq	xmm0, rcx
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	call	 <RandomGenerators@Evaluation.Dependency.PseudoRandomSequence::RandomGenerators<0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>(Meta::Random::Splitmix64@Meta.Random.Splitmix<2ul>, std::integer_sequence<unsigned long, 0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>)>
               	test	r15, r15
               	je	 <L4>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x280]
               	vmovdqa64	xmm30, xmmword ptr [rsp + 0x290]
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x2a0]
               	vmovdqa	xmm7, xmmword ptr [rsp + 0x2b0]
               	vmovdqa64	xmm28, xmmword ptr [rsp + 0x2d0]
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x310]
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x350]
               	vmovdqa64	xmm18, xmmword ptr [rsp + 0x390]
               	vmovdqa64	xmm22, xmmword ptr [rsp + 0x2e0]
               	vmovdqa64	xmm20, xmmword ptr [rsp + 0x2f0]
               	vmovdqa64	xmm26, xmmword ptr [rsp + 0x320]
               	vmovdqa64	xmm16, xmmword ptr [rsp + 0x330]
               	vmovdqa	xmm15, xmmword ptr [rsp + 0x370]
               	vmovdqa	xmm13, xmmword ptr [rsp + 0x3b0]
               	vmovdqa	xmm4, xmmword ptr [rsp + 0x3f0]
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x430]
               	vmovdqa	xmm10, xmmword ptr [rsp + 0x470]
               	vmovdqa	xmm9, xmmword ptr [rsp + 0x4b0]
               	vmovdqa	xmm8, xmmword ptr [rsp + 0x4f0]
               	vmovdqa	xmm12, xmmword ptr [rsp + 0x500]
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x530]
               	movabs	r11, 0x1fffffffe0
               	movabs	rax, 0xffffffff0
               	movabs	rcx, 0x3fffffffc
               	mov	rdx, r15
               	vmovaps	xmmword ptr [rsp + 0x80], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x3d0]
               	vmovaps	xmmword ptr [rsp + 0x1e0], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x410]
               	vmovaps	xmmword ptr [rsp + 0x1d0], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x450]
               	vmovaps	xmmword ptr [rsp + 0x1b0], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x490]
               	vmovaps	xmmword ptr [rsp + 0x170], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x4d0]
               	vmovaps	xmmword ptr [rsp + 0x150], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x510]
               	vmovaps	xmmword ptr [rsp + 0x140], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x2c0]
               	vmovaps	xmmword ptr [rsp + 0x70], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x300]
               	vmovaps	xmmword ptr [rsp + 0x60], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x340]
               	vmovaps	xmmword ptr [rsp + 0x30], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x360]
               	vmovaps	xmmword ptr [rsp + 0x130], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x380]
               	vmovaps	xmmword ptr [rsp + 0x50], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x3a0]
               	vmovaps	xmmword ptr [rsp + 0x110], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x3c0]
               	vmovaps	xmmword ptr [rsp + 0x40], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x3e0]
               	vmovaps	xmmword ptr [rsp + 0x1a0], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x400]
               	vmovaps	xmmword ptr [rsp + 0x1c0], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x420]
               	vmovaps	xmmword ptr [rsp + 0x190], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x440]
               	vmovaps	xmmword ptr [rsp + 0x180], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x460]
               	vmovaps	xmmword ptr [rsp + 0xe0], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x480]
               	vmovaps	xmmword ptr [rsp + 0x160], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x4a0]
               	vmovaps	xmmword ptr [rsp + 0xf0], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x4c0]
               	vmovaps	xmmword ptr [rsp + 0x120], xmm0
               	vmovaps	xmm0, xmmword ptr [rsp + 0x4e0]
               	vmovaps	xmmword ptr [rsp + 0x100], xmm0
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x520]
               	nop	word ptr cs:[rax + rax]
<L5>:
               	vmovdqa	xmmword ptr [rsp + 0x220], xmm4
               	vpsllq	xmm4, xmm30, 0x2
               	vmovdqa64	xmm25, xmm15
               	vmovdqa	xmmword ptr [rsp + 0x250], xmm0
               	vmovdqa	xmmword ptr [rsp + 0x230], xmm9
               	vmovdqa	xmm14, xmmword ptr [rsp + 0x1e0]
               	vmovdqa	xmmword ptr [rsp + 0x240], xmm8
               	vmovdqa64	xmm27, xmmword ptr [rsp + 0x1d0]
               	vmovdqa64	xmm29, xmmword ptr [rsp + 0x1b0]
               	vmovdqa	xmmword ptr [rsp + 0x200], xmm10
               	vmovdqa64	xmm31, xmmword ptr [rsp + 0x170]
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm12
               	vmovdqa	xmm12, xmmword ptr [rsp + 0x150]
               	mov	rdi, r13
               	shr	rdi, 0x1e
               	vmovdqa	xmmword ptr [rsp + 0x210], xmm2
               	vmovdqa	xmm2, xmm1
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x140]
               	lea	r8, [4*r13]
               	vmovdqa	xmm11, xmm13
               	mov	rsi, r13
               	mov	r14d, esi
               	lea	r9, [r14 + 2*r14]
               	vpxorq	xmm7, xmm7, xmm30
               	vpaddq	xmm4, xmm4, xmm30
               	and	rdi, rcx
               	vprolq	xmm4, xmm4, 0x7
               	and	r8, rcx
               	vpsllq	xmm15, xmm4, 0x3
               	vpaddq	xmm17, xmm15, xmm4
               	vpsllq	xmm4, xmm28, 0x2
               	vpaddq	xmm4, xmm4, xmm28
               	vprolq	xmm4, xmm4, 0x7
               	vpsllq	xmm15, xmm4, 0x3
               	vpaddq	xmm0, xmm15, xmm4
               	vpsllq	xmm4, xmm3, 0x2
               	vpaddq	xmm4, xmm4, xmm3
               	vpmovzxbd	zmm0, xmm0      # zmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero,xmm0[8],zero,zero,zero,xmm0[9],zero,zero,zero,xmm0[10],zero,zero,zero,xmm0[11],zero,zero,zero,xmm0[12],zero,zero,zero,xmm0[13],zero,zero,zero,xmm0[14],zero,zero,zero,xmm0[15],zero,zero,zero
               	vprolq	xmm4, xmm4, 0x7
               	vpsllq	xmm15, xmm4, 0x3
               	vpaddq	xmm9, xmm15, xmm4
               	vpsllq	xmm4, xmm5, 0x2
               	vcvtdq2ps	zmm0, zmm0
               	vpaddq	xmm4, xmm4, xmm5
               	vprolq	xmm4, xmm4, 0x7
               	vmovaps	zmmword ptr [r12 + rdi], zmm0
               	vpmovzxbd	zmm0, xmm9      # zmm0 = xmm9[0],zero,zero,zero,xmm9[1],zero,zero,zero,xmm9[2],zero,zero,zero,xmm9[3],zero,zero,zero,xmm9[4],zero,zero,zero,xmm9[5],zero,zero,zero,xmm9[6],zero,zero,zero,xmm9[7],zero,zero,zero,xmm9[8],zero,zero,zero,xmm9[9],zero,zero,zero,xmm9[10],zero,zero,zero,xmm9[11],zero,zero,zero,xmm9[12],zero,zero,zero,xmm9[13],zero,zero,zero,xmm9[14],zero,zero,zero,xmm9[15],zero,zero,zero
               	lea	rdi, [r12 + rdi]
               	vmovdqa	xmm9, xmmword ptr [rsp + 0x1c0]
               	vpsllq	xmm15, xmm4, 0x3
               	vpaddq	xmm8, xmm15, xmm4
               	vpsllq	xmm4, xmm18, 0x2
               	vpaddq	xmm4, xmm4, xmm18
               	vprolq	xmm4, xmm4, 0x7
               	vcvtdq2ps	zmm0, zmm0
               	vpsllq	xmm15, xmm4, 0x3
               	vpaddq	xmm15, xmm15, xmm4
               	vpsllq	xmm4, xmm14, 0x2
               	vmovaps	zmmword ptr [r8 + rdi], zmm0
               	vpmovzxbd	zmm0, xmm8      # zmm0 = xmm8[0],zero,zero,zero,xmm8[1],zero,zero,zero,xmm8[2],zero,zero,zero,xmm8[3],zero,zero,zero,xmm8[4],zero,zero,zero,xmm8[5],zero,zero,zero,xmm8[6],zero,zero,zero,xmm8[7],zero,zero,zero,xmm8[8],zero,zero,zero,xmm8[9],zero,zero,zero,xmm8[10],zero,zero,zero,xmm8[11],zero,zero,zero,xmm8[12],zero,zero,zero,xmm8[13],zero,zero,zero,xmm8[14],zero,zero,zero,xmm8[15],zero,zero,zero
               	mov	r8, r13
               	shl	r8, 0x4
               	vpaddq	xmm4, xmm14, xmm4
               	and	r8, rax
               	vprolq	xmm4, xmm4, 0x7
               	vpsllq	xmm19, xmm4, 0x3
               	vcvtdq2ps	zmm0, zmm0
               	vpaddq	xmm10, xmm19, xmm4
               	vpsllq	xmm4, xmm27, 0x2
               	vpaddq	xmm4, xmm4, xmm27
               	vprolq	xmm4, xmm4, 0x7
               	vmovaps	zmmword ptr [rdi + 8*r14], zmm0
               	vpmovzxbd	zmm0, xmm10     # zmm0 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero,xmm10[8],zero,zero,zero,xmm10[9],zero,zero,zero,xmm10[10],zero,zero,zero,xmm10[11],zero,zero,zero,xmm10[12],zero,zero,zero,xmm10[13],zero,zero,zero,xmm10[14],zero,zero,zero,xmm10[15],zero,zero,zero
               	vmovdqa	xmm10, xmmword ptr [rsp + 0x180]
               	vpsllq	xmm19, xmm4, 0x3
               	vpaddq	xmm23, xmm19, xmm4
               	vpsllq	xmm4, xmm29, 0x2
               	vpaddq	xmm4, xmm4, xmm29
               	vcvtdq2ps	zmm0, zmm0
               	vprolq	xmm4, xmm4, 0x7
               	vpsllq	xmm19, xmm4, 0x3
               	vpaddq	xmm24, xmm19, xmm4
               	vpsllq	xmm4, xmm31, 0x2
               	vpaddq	xmm4, xmm4, xmm31
               	vprolq	xmm4, xmm4, 0x7
               	vpsllq	xmm19, xmm4, 0x3
               	vpaddq	xmm4, xmm19, xmm4
               	vpsllq	xmm19, xmm12, 0x2
               	vpaddq	xmm19, xmm19, xmm12
               	vpmovzxbd	zmm4, xmm4      # zmm4 = xmm4[0],zero,zero,zero,xmm4[1],zero,zero,zero,xmm4[2],zero,zero,zero,xmm4[3],zero,zero,zero,xmm4[4],zero,zero,zero,xmm4[5],zero,zero,zero,xmm4[6],zero,zero,zero,xmm4[7],zero,zero,zero,xmm4[8],zero,zero,zero,xmm4[9],zero,zero,zero,xmm4[10],zero,zero,zero,xmm4[11],zero,zero,zero,xmm4[12],zero,zero,zero,xmm4[13],zero,zero,zero,xmm4[14],zero,zero,zero,xmm4[15],zero,zero,zero
               	vprolq	xmm19, xmm19, 0x7
               	vpsllq	xmm21, xmm19, 0x3
               	vpaddq	xmm19, xmm21, xmm19
               	vpsllq	xmm21, xmm1, 0x2
               	vcvtdq2ps	zmm4, zmm4
               	vpaddq	xmm21, xmm21, xmm1
               	vprolq	xmm21, xmm21, 0x7
               	vpsllq	xmm13, xmm21, 0x3
               	vpaddq	xmm21, xmm13, xmm21
               	vpmovzxbd	zmm13, xmm15    # zmm13 = xmm15[0],zero,zero,zero,xmm15[1],zero,zero,zero,xmm15[2],zero,zero,zero,xmm15[3],zero,zero,zero,xmm15[4],zero,zero,zero,xmm15[5],zero,zero,zero,xmm15[6],zero,zero,zero,xmm15[7],zero,zero,zero,xmm15[8],zero,zero,zero,xmm15[9],zero,zero,zero,xmm15[10],zero,zero,zero,xmm15[11],zero,zero,zero,xmm15[12],zero,zero,zero,xmm15[13],zero,zero,zero,xmm15[14],zero,zero,zero,xmm15[15],zero,zero,zero
               	vcvtdq2ps	zmm13, zmm13
               	vmovaps	zmmword ptr [rdi + 4*r9], zmm13
               	vmovaps	zmmword ptr [r8 + rdi], zmm0
               	vpmovzxbd	zmm0, xmm23     # zmm0 = xmm23[0],zero,zero,zero,xmm23[1],zero,zero,zero,xmm23[2],zero,zero,zero,xmm23[3],zero,zero,zero,xmm23[4],zero,zero,zero,xmm23[5],zero,zero,zero,xmm23[6],zero,zero,zero,xmm23[7],zero,zero,zero,xmm23[8],zero,zero,zero,xmm23[9],zero,zero,zero,xmm23[10],zero,zero,zero,xmm23[11],zero,zero,zero,xmm23[12],zero,zero,zero,xmm23[13],zero,zero,zero,xmm23[14],zero,zero,zero,xmm23[15],zero,zero,zero
               	vpmovzxbd	zmm13, xmm24    # zmm13 = xmm24[0],zero,zero,zero,xmm24[1],zero,zero,zero,xmm24[2],zero,zero,zero,xmm24[3],zero,zero,zero,xmm24[4],zero,zero,zero,xmm24[5],zero,zero,zero,xmm24[6],zero,zero,zero,xmm24[7],zero,zero,zero,xmm24[8],zero,zero,zero,xmm24[9],zero,zero,zero,xmm24[10],zero,zero,zero,xmm24[11],zero,zero,zero,xmm24[12],zero,zero,zero,xmm24[13],zero,zero,zero,xmm24[14],zero,zero,zero,xmm24[15],zero,zero,zero
               	lea	r8, [r14 + 4*r14]
               	vpxorq	xmm23, xmm14, xmmword ptr [rsp + 0x220]
               	vpxorq	xmm24, xmm2, xmm27
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x120]
               	vcvtdq2ps	zmm0, zmm0
               	vmovaps	zmmword ptr [rdi + 4*r8], zmm0
               	vcvtdq2ps	zmm0, zmm13
               	vpmovzxbd	zmm13, xmm21    # zmm13 = xmm21[0],zero,zero,zero,xmm21[1],zero,zero,zero,xmm21[2],zero,zero,zero,xmm21[3],zero,zero,zero,xmm21[4],zero,zero,zero,xmm21[5],zero,zero,zero,xmm21[6],zero,zero,zero,xmm21[7],zero,zero,zero,xmm21[8],zero,zero,zero,xmm21[9],zero,zero,zero,xmm21[10],zero,zero,zero,xmm21[11],zero,zero,zero,xmm21[12],zero,zero,zero,xmm21[13],zero,zero,zero,xmm21[14],zero,zero,zero,xmm21[15],zero,zero,zero
               	lea	r8, [r12 + 8*r8]
               	vpxorq	xmm21, xmm11, xmm18
               	vmovdqa	xmm11, xmmword ptr [rsp + 0x160]
               	vmovaps	zmmword ptr [rdi + 8*r9], zmm0
               	vpmovzxbw	ymm0, xmm17     # ymm0 = xmm17[0],zero,xmm17[1],zero,xmm17[2],zero,xmm17[3],zero,xmm17[4],zero,xmm17[5],zero,xmm17[6],zero,xmm17[7],zero,xmm17[8],zero,xmm17[9],zero,xmm17[10],zero,xmm17[11],zero,xmm17[12],zero,xmm17[13],zero,xmm17[14],zero,xmm17[15],zero
               	vpmullw	ymm0, ymm0, ymmword ptr  <.LCPI0_0>
               	lea	r9, [r14 + 8*r14]
               	vcvtdq2ps	zmm13, zmm13
               	lea	r10, [r9 + 2*r9]
               	add	r10, r14
               	vmovaps	zmmword ptr [rdi + r10], zmm4
               	vpmovzxbd	zmm4, xmm19     # zmm4 = xmm19[0],zero,zero,zero,xmm19[1],zero,zero,zero,xmm19[2],zero,zero,zero,xmm19[3],zero,zero,zero,xmm19[4],zero,zero,zero,xmm19[5],zero,zero,zero,xmm19[6],zero,zero,zero,xmm19[7],zero,zero,zero,xmm19[8],zero,zero,zero,xmm19[9],zero,zero,zero,xmm19[10],zero,zero,zero,xmm19[11],zero,zero,zero,xmm19[12],zero,zero,zero,xmm19[13],zero,zero,zero,xmm19[14],zero,zero,zero,xmm19[15],zero,zero,zero
               	mov	r10, r13
               	shl	r10, 0x5
               	vpxorq	xmm19, xmm25, xmm5
               	and	r10, r11
               	vcvtdq2ps	zmm4, zmm4
               	vpsrlw	ymm0, ymm0, 0x8
               	vpmovwb	xmm0, ymm0
               	vgf2p8affineqb	xmm0, xmm0, qword ptr {1to2}, 0x0 <.LCPI0_9>
               	vmovaps	zmmword ptr [r10 + rdi], zmm4
               	vmovdqa64	xmm4, xmm16
               	vmovdqa64	xmm16, xmmword ptr [rsp + 0x80]
               	vmovaps	zmmword ptr [rdi + 4*r9], zmm13
               	mov	rdi, r13
               	shr	rdi, 0x20
               	vpxorq	xmm13, xmm6, xmm16
               	vmovdqa64	xmm6, xmm20
               	vmovdqa64	xmm20, xmmword ptr [rsp + 0x70]
               	vpxorq	xmm15, xmm6, xmm28
               	vpxorq	xmm16, xmm7, xmm16
               	vprolq	xmm7, xmm7, 0x2d
               	vpmovzxbw	ymm0, xmm0      # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero,xmm0[8],zero,xmm0[9],zero,xmm0[10],zero,xmm0[11],zero,xmm0[12],zero,xmm0[13],zero,xmm0[14],zero,xmm0[15],zero
               	vpmullw	ymm0, ymm0, ymmword ptr  <.LCPI0_2>
               	vmovdqa64	xmmword ptr [rsp + 0x80], xmm16
               	vpmovwb	xmm0, ymm0
               	vpsubb	xmm0, xmm17, xmm0
               	vpxorq	xmm17, xmm4, xmm3
               	vmovdqa	xmmword ptr [rdi + r8], xmm0
               	vpsllq	xmm0, xmm30, 0x11
               	vpxorq	xmm30, xmm13, xmm30
               	movabs	r8, -0x100000000
               	mov	rdi, r13
               	vprolq	xmm16, xmm17, 0x2d
               	vpxor	xmm0, xmm13, xmm0
               	vpxorq	xmm13, xmm22, xmm20
               	vmovdqa64	xmm22, xmmword ptr [rsp + 0x60]
               	and	rdi, r8
               	vpxorq	xmm20, xmm15, xmm20
               	add	rdx, -0x10
               	vmovdqa	xmmword ptr [rsp + 0x1f0], xmm0
               	vpsllq	xmm0, xmm28, 0x11
               	vpxorq	xmm28, xmm13, xmm28
               	lea	r8, [rax + rdi]
               	vmovdqa64	xmmword ptr [rsp + 0x70], xmm20
               	vprolq	xmm20, xmm15, 0x2d
               	vprolq	xmm15, xmm19, 0x2d
               	vpxor	xmm6, xmm13, xmm0
               	vpsllq	xmm0, xmm3, 0x11
               	lea	r13, [r14 + r8 + 0x10]
               	vpxorq	xmm13, xmm26, xmm22
               	vmovdqa64	xmm26, xmmword ptr [rsp + 0x30]
               	vpxorq	xmm22, xmm17, xmm22
               	vpxor	xmm3, xmm13, xmm3
               	vpxor	xmm4, xmm13, xmm0
               	vpxorq	xmm13, xmm26, xmmword ptr [rsp + 0x130]
               	vpsllq	xmm0, xmm5, 0x11
               	vmovdqa64	xmmword ptr [rsp + 0x60], xmm22
               	vmovdqa64	xmm22, xmm6
               	vmovdqa	xmm6, xmmword ptr [rsp + 0x1f0]
               	vmovdqa64	xmm25, xmm3
               	vmovdqa64	xmm3, xmm30
               	vmovdqa64	xmm30, xmmword ptr [rsp + 0x50]
               	vpxorq	xmm26, xmm19, xmm26
               	vpxor	xmm5, xmm13, xmm5
               	vpxor	xmm0, xmm13, xmm0
               	vpxorq	xmm13, xmm30, xmmword ptr [rsp + 0x110]
               	vmovdqa64	xmmword ptr [rsp + 0x30], xmm26
               	vmovdqa64	xmm26, xmm4
               	vprolq	xmm4, xmm23, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x130], xmm0
               	vpsllq	xmm0, xmm18, 0x11
               	vmovdqa	xmmword ptr [rsp + 0x270], xmm5
               	vpxorq	xmm30, xmm21, xmm30
               	vmovdqa	xmm5, xmmword ptr [rsp + 0x270]
               	vmovdqa64	xmmword ptr [rsp + 0x50], xmm30
               	vmovdqa64	xmm30, xmm3
               	vmovdqa64	xmm3, xmm25
               	vpxorq	xmm8, xmm13, xmm18
               	vmovdqa64	xmm18, xmmword ptr [rsp + 0x40]
               	vpxor	xmm0, xmm13, xmm0
               	vpxorq	xmm13, xmm18, xmmword ptr [rsp + 0x1a0]
               	vmovdqa	xmmword ptr [rsp + 0x110], xmm0
               	vpsllq	xmm0, xmm14, 0x11
               	vpxorq	xmm18, xmm23, xmm18
               	vpxor	xmm14, xmm13, xmm14
               	vpxor	xmm0, xmm13, xmm0
               	vpxor	xmm13, xmm9, xmmword ptr [rsp + 0x190]
               	vpxorq	xmm9, xmm24, xmm9
               	vmovdqa64	xmmword ptr [rsp + 0x40], xmm18
               	vmovdqa64	xmm18, xmm8
               	vmovdqa	xmmword ptr [rsp + 0x1a0], xmm0
               	vpsllq	xmm0, xmm27, 0x11
               	vmovdqa	xmmword ptr [rsp + 0x1e0], xmm14
               	vpxor	xmm14, xmm1, xmmword ptr [rsp + 0x210]
               	vmovdqa	xmmword ptr [rsp + 0x1c0], xmm9
               	vpxorq	xmm27, xmm13, xmm27
               	vpxor	xmm0, xmm13, xmm0
               	vpxor	xmm13, xmm10, xmmword ptr [rsp + 0xe0]
               	vmovdqa	xmmword ptr [rsp + 0x190], xmm0
               	vpsllq	xmm0, xmm29, 0x11
               	vmovdqa64	xmmword ptr [rsp + 0x1d0], xmm27
               	vpxorq	xmm27, xmm29, xmmword ptr [rsp + 0x200]
               	vpxorq	xmm29, xmm13, xmm29
               	vpxor	xmm0, xmm13, xmm0
               	vpxor	xmm13, xmm11, xmmword ptr [rsp + 0xf0]
               	vmovdqa	xmmword ptr [rsp + 0xe0], xmm0
               	vpsllq	xmm0, xmm31, 0x11
               	vmovdqa64	xmmword ptr [rsp + 0x1b0], xmm29
               	vpxorq	xmm29, xmm31, xmmword ptr [rsp + 0x230]
               	vpxorq	xmm10, xmm27, xmm10
               	vmovdqa	xmmword ptr [rsp + 0x180], xmm10
               	vprolq	xmm10, xmm27, 0x2d
               	vpxorq	xmm31, xmm13, xmm31
               	vpxor	xmm0, xmm13, xmm0
               	vpxor	xmm13, xmm2, xmmword ptr [rsp + 0x100]
               	vmovdqa64	xmmword ptr [rsp + 0x170], xmm31
               	vpxorq	xmm31, xmm12, xmmword ptr [rsp + 0x240]
               	vmovdqa	xmmword ptr [rsp + 0xf0], xmm0
               	vpsllq	xmm0, xmm12, 0x11
               	vprolq	xmm9, xmm29, 0x2d
               	vpxorq	xmm11, xmm29, xmm11
               	vmovdqa	xmmword ptr [rsp + 0x160], xmm11
               	vpxor	xmm12, xmm13, xmm12
               	vpxor	xmm0, xmm13, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x150], xmm12
               	vmovdqa	xmm12, xmmword ptr [rsp + 0x260]
               	vmovdqa	xmmword ptr [rsp + 0x100], xmm0
               	vpxorq	xmm2, xmm31, xmm2
               	vpsllq	xmm0, xmm1, 0x11
               	vprolq	xmm8, xmm31, 0x2d
               	vpxor	xmm13, xmm12, xmmword ptr [rsp + 0x250]
               	vmovdqa	xmmword ptr [rsp + 0x120], xmm2
               	vprolq	xmm2, xmm14, 0x2d
               	vpxor	xmm12, xmm14, xmm12
               	vpxor	xmm1, xmm13, xmm1
               	vpxor	xmm0, xmm13, xmm0
               	vprolq	xmm13, xmm21, 0x2d
               	vmovdqa	xmmword ptr [rsp + 0x140], xmm1
               	vprolq	xmm1, xmm24, 0x2d
               	jne	 <L5>
               	shr	rsi, 0x24
               	vpxor	xmm0, xmm0, xmm0
               	cmp	esi, 0xffffffe
               	ja	 <L6>
               	mov	qword ptr [rsp + 0x50], rbx
               	lea	rbx, [rax + rdi + 0x10]
               	mov	edx, 0x800
               	lea	rdi, [rsp + 0x280]
               	movabs	r13, 0x1fffffffe0
               	mov	qword ptr [rsp + 0x30], r12
               	mov	qword ptr [rsp + 0x40], r15
               	shr	rbx, 0x24
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
<L11>:
               	mov	edx, edi
               	shl	rdx, 0x6
               	lea	rdi, [rsp + 0x280]
               	add	rdx, 0x40
<L7>:
               	xor	esi, esi
               	vzeroupper
               	call	 <memset$plt>
               	vmovdqa64	zmm5, zmmword ptr  <memset+0x800>
               	vpbroadcastd	zmm6, dword ptr  <.LCPI0_4>
               	vpbroadcastd	zmm7, dword ptr  <.LCPI0_5>
               	vpbroadcastd	zmm8, dword ptr  <.LCPI0_6>
               	mov	rax, r14
               	nop	word ptr [rax + rax]
<L10>:
               	blsi	r14d, ebx
               	movabs	rdx, -0x100000000
               	mov	rcx, rax
               	mov	edi, 0x1
               	mov	qword ptr [rsp + 0x70], rbx
               	mov	qword ptr [rsp + 0x60], r14
               	and	rcx, rdx
               	shl	r14, 0x24
               	add	r14, rcx
               	mov	ecx, eax
               	mov	qword ptr [rsp + 0x80], rcx
               	mov	rcx, r14
               	xor	rcx, rax
               	shr	rcx, 0x20
               	jne	 <L8>
<L13>:
               	movsxd	rax, edi
               	mov	rbx, qword ptr [rsp + 0x70]
               	shl	rax, 0x6
               	sub	ebx, dword ptr [rsp + 0x60]
               	lea	rax, [rsp + rax + 0x280]
               	je	 <L9>
               	vmovdqa64	zmm0, zmmword ptr [rax]
               	or	r14, qword ptr [rsp + 0x80]
               	vmovdqa64	zmmword ptr [rax + 0x40], zmm0
               	mov	rax, r14
               	test	edi, edi
               	js	 <L10>
               	jmp	 <L11>
<L8>:
               	mov	rdx, qword ptr [rsp + 0x80]
               	mov	rdi, qword ptr [rsp + 0x30]
               	mov	rsi, rax
               	shl	rax, 0x5
               	shr	rsi, 0x20
               	mov	r11d, 0x1
               	mov	r12d, 0x1
               	and	rax, r13
               	lea	rcx, [rdx + 4*rdx]
               	add	rax, rdi
               	lea	r8, [rdi + 8*rcx]
               	lea	rcx, [rdx + 8*rdx]
               	add	rdx, rdi
               	lea	r9, [rcx + 2*rcx]
               	lea	r10, [rdi + 4*rcx]
               	xor	ecx, ecx
               	add	r9, rdx
               	jmp	 <L12>
               	nop	dword ptr [rax + rax]
<L14>:
               	movsxd	rcx, edi
               	lea	edx, [r11 + 0x1]
               	add	esi, 0x10
               	mov	r12d, edi
               	shl	rcx, 0x6
               	mov	rbx, rsi
               	shl	rbx, 0x20
               	vmovaps	zmmword ptr [rsp + rcx + 0x280], zmm0
               	mov	ecx, 0xfffffffe
               	sub	ecx, r11d
               	lzcnt	r11d, edx
               	popcnt	ecx, ecx
               	sub	ecx, r11d
               	mov	r11d, edx
               	cmp	rbx, r14
               	je	 <L13>
<L12>:
               	vpmovzxbd	zmm0, xmmword ptr [r8 + rsi]
               	vmovaps	zmm3, zmmword ptr [r9 + 4*rsi]
               	mov	ebx, ecx
               	sub	ebx, r12d
               	mov	edi, ecx
               	vpsllvd	zmm2, zmm6, zmm0
               	vpermd	zmm1, zmm0, zmm5
               	vpsllvd	zmm4, zmm7, zmm0
               	vpsllvd	zmm0, zmm8, zmm0
               	vpmovd2m	k1, zmm2
               	vmovaps	zmm2 {k1} {z}, zmmword ptr [rax + 4*rsi]
               	vmulps	zmm1, zmm3, zmm1
               	vblendmps	zmm2 {k1}, zmm3, zmm2
               	vpmovd2m	k1, zmm4
               	vmovaps	zmm4 {k1} {z}, zmmword ptr [r10 + 4*rsi]
               	vmulps	zmm1, zmm1, zmm2
               	vmovaps	zmm3 {k1}, zmm4
               	vpmovd2m	k1, zmm0
               	vmulps	zmm0, zmm1, zmm3
               	vmovaps	zmm0 {k1}, zmm1
               	jl	 <L14>
               	lea	ecx, [rbx + 0x1]
               	movsxd	r15, r12d
               	and	ecx, 0x7
               	je	 <L15>
               	mov	r13d, edi
               	mov	rdx, r15
               	shl	rdx, 0x6
               	dec	ecx
               	sub	r13b, r12b
               	lea	rdx, [rsp + rdx + 0x280]
               	inc	r13b
               	movzx	r12d, r13b
               	xor	r13d, r13d
               	and	r12d, 0x7
               	shl	r12d, 0x6
               	nop	dword ptr [rax + rax]
<L16>:
               	vaddps	zmm0, zmm0, zmmword ptr [rdx + r13]
               	add	r13, 0x40
               	cmp	r12d, r13d
               	jne	 <L16>
               	lea	r15, [r15 + rcx + 0x1]
               	movabs	r13, 0x1fffffffe0
<L15>:
               	cmp	ebx, 0x7
               	jb	 <L14>
               	mov	ecx, edi
               	sub	ecx, r15d
               	shl	r15, 0x6
               	lea	rdx, [rsp + 0x440]
               	inc	ecx
               	add	r15, rdx
               	nop
<L17>:
               	vaddps	zmm0, zmm0, zmmword ptr [r15 - 0x1c0]
               	vaddps	zmm0, zmm0, zmmword ptr [r15 - 0x180]
               	vaddps	zmm0, zmm0, zmmword ptr [r15 - 0x140]
               	vaddps	zmm0, zmm0, zmmword ptr [r15 - 0x100]
               	vaddps	zmm0, zmm0, zmmword ptr [r15 - 0xc0]
               	vaddps	zmm0, zmm0, zmmword ptr [r15 - 0x80]
               	vaddps	zmm0, zmm0, zmmword ptr [r15 - 0x40]
               	vaddps	zmm0, zmm0, zmmword ptr [r15]
               	add	r15, 0x200
               	add	ecx, -0x8
               	jne	 <L17>
               	jmp	 <L14>
<L4>:
               	vpxor	xmm0, xmm0, xmm0
               	jmp	 <L6>
<L9>:
               	vmovdqa64	zmm0, zmmword ptr [rax]
               	mov	rbx, qword ptr [rsp + 0x50]
               	mov	r15, qword ptr [rsp + 0x40]
               	mov	r12, qword ptr [rsp + 0x30]
<L6>:
               	mov	rdi, r12
               	vmovdqa64	zmmword ptr [rsp + 0x80], zmm0
               	vzeroupper
               	call	 <free$plt>
               	cmp	rbx, 0x2a
               	jne	 <L18>
               	vmovaps	zmm1, zmmword ptr [rsp + 0x80]
               	vextractf64x4	ymm0, zmm1, 0x1
               	vaddps	ymm0, ymm0, ymm1
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	r15, 0x30d40
               	je	 <L19>
               	cmp	r15, 0x186a0
               	jne	 <L18>
               	vucomiss	xmm0, dword ptr  <.LCPI0_8>
               	jne	 <L20>
<L18>:
               	mov	rax, qword ptr fs:[0x28]
               	cmp	rax, qword ptr [rsp + 0xa80]
               	jne	 <L21>
               	xor	eax, eax
               	lea	rsp, [rbp - 0x28]
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L19>:
               	vucomiss	xmm0, dword ptr  <.LCPI0_7>
               	je	 <L18>
<L20>:
               	vmovss	dword ptr [rsp + 0x80], xmm0
               	mov	rax, qword ptr fs:[0x28]
               	cmp	rax, qword ptr [rsp + 0xa80]
               	jne	 <L21>
               	mov	edi, 0x4
               	vzeroupper
               	call	 <__cxa_allocate_exception$plt>
               	vmovss	xmm0, dword ptr [rsp + 0x80]
               	mov	rsi, qword ptr  <_ZTIf$got>
               	mov	rdi, rax
               	xor	edx, edx
               	vmovss	dword ptr [rax], xmm0
               	call	 <__cxa_throw$plt>
<L21>:
               	vzeroupper
               	call	 <__stack_chk_fail$plt>
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
               	vpbroadcastq	xmm4, qword ptr  <.LCPI1_1>
               	vpbroadcastq	xmm7, qword ptr  <.LCPI1_2>
               	vpsrlq	xmm2, xmm0, 0x1e
               	vpaddq	xmm1, xmm0, qword ptr {1to2} <.LCPI1_0>
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
               	vpaddq	xmm2, xmm0, qword ptr {1to2} <.LCPI1_3>
               	vpaddq	xmm0, xmm0, qword ptr {1to2} <.LCPI1_4>
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
