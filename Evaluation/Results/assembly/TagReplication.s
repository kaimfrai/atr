
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
		rsp, 0xd98
	mov
		rcx, qword ptr [rsi + 0x8]
	mov
		rax, qword ptr [rsi + 0x10]
	movsx
		r12, byte ptr [rcx]
	movzx
		edx, byte ptr [rcx + 0x1]
	add
		r12, -0x30
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
		rsi, [r12 + 4*r12]
	movsx
		rdx, dl
	lea
		r12, [rdx + 2*rsi - 0x30]
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
		r15, byte ptr [rax]
	movzx
		ecx, byte ptr [rax + 0x1]
	add
		r15, -0x30
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
		rdx, [r15 + 4*r15]
	movsx
		rcx, cl
	lea
		r15, [rcx + 2*rdx - 0x30]
	movzx
		ecx, byte ptr [rax]
	inc
		rax
	test
		cl, cl
	jne
		<L2>
<L3>:
	shl
		r15, 0x4
	mov
		rsi, qword ptr <_ZSt7nothrow$got>
	mov
		ebx, r15d
	lea
		rax, [rbx + 4*rbx]
	lea
		rdi, [rbx + 8*rax]
	call
		<_ZnamRKSt9nothrow_t$plt>
	movabs
		rcx, -0x61c8864680b583eb
	vmovq
		xmm1, r12
	lea
		rdi, [rsp + 0x5d0]
	mov
		rbp, rax
	add
		rcx, r12
	vmovq
		xmm0, rcx
	vpunpcklqdq
		xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
	call
		<RandomGenerators<20ul>::RandomGenerators<0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>(Meta::Random::Splitmix64<2ul>, std::integer_sequence<unsigned long, 0ul, 1ul, 2ul, 3ul, 4ul, 5ul, 6ul, 7ul, 8ul, 9ul, 10ul, 11ul, 12ul, 13ul, 14ul, 15ul, 16ul, 17ul, 18ul>)>
	mov
		qword ptr [rsp + 0xad0], 0x0
	mov
		r8, r15
	mov
		qword ptr [rsp + 0x18], rbp
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x5e0]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x620]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x660]
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x6a0]
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
		xmmword ptr [rsp + 0xae0], xmm0
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
		xmmword ptr [rsp + 0xaf0], xmm0
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
		xmmword ptr [rsp + 0xb00], xmm0
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
		xmmword ptr [rsp + 0xb10], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x6e0]
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
		xmmword ptr [rsp + 0xb20], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x720]
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
		xmmword ptr [rsp + 0xb30], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x760]
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
		xmmword ptr [rsp + 0xb40], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x7a0]
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
		xmmword ptr [rsp + 0xb50], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x7e0]
	vpsllq
		xmm1, xmm0, 0x2
	vpaddq
		xmm0, xmm1, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm8, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0xb60], xmm8
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x820]
	vmovdqa
		xmm1, xmmword ptr [rsp + 0x860]
	vmovdqa
		xmm2, xmmword ptr [rsp + 0x8a0]
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x8e0]
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
	vmovdqa
		xmmword ptr [rsp + 0xb70], xmm4
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm5, xmm1, xmm0
	vpsllq
		xmm0, xmm2, 0x2
	vpaddq
		xmm0, xmm0, xmm2
	vmovdqa
		xmmword ptr [rsp + 0xb80], xmm5
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0xb90], xmm0
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
		xmmword ptr [rsp + 0xba0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x920]
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
		xmmword ptr [rsp + 0xbb0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x960]
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
		xmmword ptr [rsp + 0xbc0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x9a0]
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
		xmmword ptr [rsp + 0xbd0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x9e0]
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
		xmmword ptr [rsp + 0xbe0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xa20]
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
		xmmword ptr [rsp + 0xbf0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xa60]
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
		xmmword ptr [rsp + 0xc00], xmm9
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xaa0]
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
		xmmword ptr [rsp + 0xc10], xmm10
	mov
		r13, qword ptr [rsp + 0xad0]
	sub
		r8, r13
	jne
		<L4>
	shl
		rbx, 0x3
	xor
		esi, esi
	lea
		rax, [rbx + 4*rbx]
	jmp
		<L11>
<L4>:
	vmovaps
		xmm2, xmmword ptr [rsp + 0x5e0]
	vmovaps
		xmm3, xmmword ptr [rsp + 0x600]
	shl
		rbx, 0x3
	vmovapd
		xmm1, xmmword ptr [rsp + 0x5d0]
	vmovdqa
		xmm12, xmmword ptr [rsp + 0x5f0]
	vmovdqa
		xmm11, xmmword ptr [rsp + 0x630]
	vmovdqa64
		xmm25, xmmword ptr [rsp + 0xa80]
	vmovdqa64
		xmm24, xmmword ptr [rsp + 0xac0]
	vmovq
		xmm7, qword ptr <.LCPI0_8>
	vmovdqa
		xmm0, xmm4
	insertq
		xmm0, xmm5, 0x8, 0x8 # xmm0 = xmm0[0],xmm5[0],xmm0[2,3,4,5,6,7,u,u,u,u,u,u,u,u]
	inc
		r13
	lea
		r9, <memset+0x7c4>
	xor
		esi, esi
	mov
		qword ptr [rsp + 0x438], r8
	lea
		rax, [rbx + 4*rbx]
	mov
		qword ptr [rsp + 0x10], rax
	lea
		r14, [rbp + rax]
	movzx
		eax, byte ptr [rsp + 0xae0]
	vmovaps
		xmmword ptr [rsp + 0x5c0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x620]
	vmovaps
		xmmword ptr [rsp + 0x100], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x610]
	vmovapd
		xmmword ptr [rsp], xmm1
	vmovaps
		xmmword ptr [rsp + 0x5b0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x640]
	vmovaps
		xmmword ptr [rsp + 0x40], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x660]
	vmovaps
		xmmword ptr [rsp + 0x110], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x650]
	vmovaps
		xmmword ptr [rsp + 0x5a0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x670]
	vmovaps
		xmmword ptr [rsp + 0x30], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x680]
	vmovaps
		xmmword ptr [rsp + 0x410], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x6a0]
	vmovaps
		xmmword ptr [rsp + 0x120], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x690]
	vmovaps
		xmmword ptr [rsp + 0x590], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x6b0]
	vmovaps
		xmmword ptr [rsp + 0x20], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x6c0]
	vmovaps
		xmmword ptr [rsp + 0x3f0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x6e0]
	vmovaps
		xmmword ptr [rsp + 0x130], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x6d0]
	vmovaps
		xmmword ptr [rsp + 0x580], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x6f0]
	vmovaps
		xmmword ptr [rsp + 0x420], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x700]
	vmovaps
		xmmword ptr [rsp + 0x3d0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x720]
	vmovaps
		xmmword ptr [rsp + 0x140], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x710]
	vmovaps
		xmmword ptr [rsp + 0x570], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x730]
	vmovaps
		xmmword ptr [rsp + 0x400], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x740]
	vmovaps
		xmmword ptr [rsp + 0x3b0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x760]
	vmovaps
		xmmword ptr [rsp + 0x150], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x750]
	vmovaps
		xmmword ptr [rsp + 0x560], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x770]
	vmovaps
		xmmword ptr [rsp + 0x3e0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x780]
	vmovaps
		xmmword ptr [rsp + 0x3a0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x7a0]
	vmovaps
		xmmword ptr [rsp + 0x160], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x790]
	vmovaps
		xmmword ptr [rsp + 0x550], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x7b0]
	vmovaps
		xmmword ptr [rsp + 0x3c0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x7c0]
	vmovaps
		xmmword ptr [rsp + 0x390], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x7e0]
	vmovaps
		xmmword ptr [rsp + 0x50], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x7d0]
	vmovaps
		xmmword ptr [rsp + 0x540], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x7f0]
	vmovaps
		xmmword ptr [rsp + 0x380], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x800]
	vmovaps
		xmmword ptr [rsp + 0x350], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x820]
	vmovaps
		xmmword ptr [rsp + 0x60], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x810]
	vmovaps
		xmmword ptr [rsp + 0x530], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x830]
	vmovaps
		xmmword ptr [rsp + 0x370], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x840]
	vmovaps
		xmmword ptr [rsp + 0x330], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x860]
	vmovaps
		xmmword ptr [rsp + 0x70], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x850]
	vmovaps
		xmmword ptr [rsp + 0x520], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x870]
	vmovaps
		xmmword ptr [rsp + 0x360], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x880]
	vmovaps
		xmmword ptr [rsp + 0x310], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x8a0]
	vmovaps
		xmmword ptr [rsp + 0x80], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x890]
	vmovaps
		xmmword ptr [rsp + 0x510], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x8b0]
	vmovaps
		xmmword ptr [rsp + 0x340], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x8c0]
	vmovaps
		xmmword ptr [rsp + 0x2f0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x8e0]
	vmovaps
		xmmword ptr [rsp + 0x90], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x8d0]
	vmovaps
		xmmword ptr [rsp + 0x500], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x8f0]
	vmovaps
		xmmword ptr [rsp + 0x320], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x900]
	vmovaps
		xmmword ptr [rsp + 0x2d0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x920]
	vmovaps
		xmmword ptr [rsp + 0xa0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x910]
	vmovaps
		xmmword ptr [rsp + 0x4f0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x930]
	vmovaps
		xmmword ptr [rsp + 0x300], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x940]
	vmovaps
		xmmword ptr [rsp + 0x2c0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x960]
	vmovaps
		xmmword ptr [rsp + 0xb0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x950]
	vmovaps
		xmmword ptr [rsp + 0x4e0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x970]
	vmovaps
		xmmword ptr [rsp + 0x2e0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x980]
	vmovaps
		xmmword ptr [rsp + 0x2b0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x9a0]
	vmovaps
		xmmword ptr [rsp + 0xc0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x990]
	vmovaps
		xmmword ptr [rsp + 0x4d0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x9b0]
	vmovaps
		xmmword ptr [rsp + 0x4c0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x9c0]
	vmovaps
		xmmword ptr [rsp + 0x2a0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x9e0]
	vmovaps
		xmmword ptr [rsp + 0xd0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0x9d0]
	vmovaps
		xmmword ptr [rsp + 0x4b0], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0x9f0]
	vmovaps
		xmmword ptr [rsp + 0x4a0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0xa00]
	vmovaps
		xmmword ptr [rsp + 0x290], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0xa20]
	vmovaps
		xmmword ptr [rsp + 0xe0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0xa10]
	vmovaps
		xmmword ptr [rsp + 0x490], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0xa30]
	vmovaps
		xmmword ptr [rsp + 0x480], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0xa40]
	vmovaps
		xmmword ptr [rsp + 0x280], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0xa60]
	vmovaps
		xmmword ptr [rsp + 0xf0], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0xa50]
	vmovaps
		xmmword ptr [rsp + 0x470], xmm3
	vmovaps
		xmm3, xmmword ptr [rsp + 0xa70]
	vmovaps
		xmmword ptr [rsp + 0x460], xmm2
	vmovaps
		xmm2, xmmword ptr [rsp + 0xaa0]
	vmovaps
		xmmword ptr [rsp + 0x270], xmm3
	vmovapd
		xmm3, xmmword ptr [rsp + 0xa90]
	vmovaps
		xmmword ptr [rsp + 0x450], xmm2
	vmovapd
		xmm2, xmmword ptr [rsp + 0xab0]
	vmovapd
		xmmword ptr [rsp + 0x440], xmm3
	vmovapd
		xmmword ptr [rsp + 0x260], xmm2
	jmp
		<L7>
	nop
		dword ptr [rax + rax]
<L5>:
	vmovapd
		xmm0, xmmword ptr [rsp + 0xae0]
	vpsrldq
		xmm8, xmm8, 0x1 # xmm8 = xmm8[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm2, xmm2, 0x1 # xmm2 = xmm2[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm3, xmm3, 0x1 # xmm3 = xmm3[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm9, xmm9, 0x1 # xmm9 = xmm9[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm10, xmm10, 0x1 # xmm10 = xmm10[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm1, xmm0, 0x1 # xmm1 = xmm0[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpextrb
		eax, xmm0, 0x1
	vmovapd
		xmmword ptr [rsp + 0xae0], xmm1
	vpsrldq
		xmm1, xmm19, 0x1 # xmm1 = xmm19[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xaf0], xmm1
	vpsrldq
		xmm1, xmm23, 0x1 # xmm1 = xmm23[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xb00], xmm1
	vpsrldq
		xmm1, xmm22, 0x1 # xmm1 = xmm22[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xb10], xmm1
	vpsrldq
		xmm1, xmm21, 0x1 # xmm1 = xmm21[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xb20], xmm1
	vpsrldq
		xmm1, xmm18, 0x1 # xmm1 = xmm18[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xb30], xmm1
	vpsrldq
		xmm1, xmm20, 0x1 # xmm1 = xmm20[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xb40], xmm1
	vpsrldq
		xmm1, xmm6, 0x1 # xmm1 = xmm6[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpunpcklbw
		xmm6, xmm4, xmm5 # xmm6 = xmm4[0],xmm5[0],xmm4[1],xmm5[1],xmm4[2],xmm5[2],xmm4[3],xmm5[3],xmm4[4],xmm5[4],xmm4[5],xmm5[5],xmm4[6],xmm5[6],xmm4[7],xmm5[7]
	vpsrldq
		xmm4, xmm4, 0x1 # xmm4 = xmm4[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpsrldq
		xmm5, xmm5, 0x1 # xmm5 = xmm5[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xb50], xmm1
	vpsrldq
		xmm1, xmm14, 0x1 # xmm1 = xmm14[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xb60], xmm8
	vmovapd
		xmmword ptr [rsp + 0xb70], xmm4
	vmovapd
		xmmword ptr [rsp + 0xb80], xmm5
	vpsrld
		xmm0, xmm6, 0x10
	vmovapd
		xmmword ptr [rsp + 0xb90], xmm1
	vpsrldq
		xmm1, xmm17, 0x1 # xmm1 = xmm17[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xba0], xmm1
	vpsrldq
		xmm1, xmm16, 0x1 # xmm1 = xmm16[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xbb0], xmm1
	vpsrldq
		xmm1, xmm15, 0x1 # xmm1 = xmm15[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovapd
		xmmword ptr [rsp + 0xbc0], xmm1
	vpsrldq
		xmm1, xmm13, 0x1 # xmm1 = xmm13[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
<L6>:
	inc
		rsi
	vmovapd
		xmmword ptr [rsp + 0xbd0], xmm1
	vmovapd
		xmmword ptr [rsp + 0xbe0], xmm2
	vmovapd
		xmmword ptr [rsp + 0xbf0], xmm3
	vmovapd
		xmmword ptr [rsp + 0xc00], xmm9
	vmovapd
		xmmword ptr [rsp + 0xc10], xmm10
	cmp
		r8, rsi
	je
		<L10>
<L7>:
	vmovdqu64
		zmm19, zmmword ptr [rsp + 0xaf0]
	vmovdqu64
		zmm18, zmmword ptr [rsp + 0xb30]
	vmovd
		xmm1, dword ptr [rsp + 0xb60]
	vmovdqa
		xmm6, xmmword ptr [rsp + 0xb50]
	movzx
		ebx, al
	vmovdqu64
		zmm14, zmmword ptr [rsp + 0xb90]
	vmovdqa
		xmm3, xmmword ptr [rsp + 0xbf0]
	vmovdqu64
		zmm13, zmmword ptr [rsp + 0xbd0]
	vmovapd
		xmm23, xmmword ptr [rsp + 0xb00]
	vmovapd
		xmm22, xmmword ptr [rsp + 0xb10]
	vmovapd
		xmm21, xmmword ptr [rsp + 0xb20]
	vmovapd
		xmm20, xmmword ptr [rsp + 0xb40]
	vmovapd
		xmm17, xmmword ptr [rsp + 0xba0]
	vmovapd
		xmm16, xmmword ptr [rsp + 0xbb0]
	vmovapd
		xmm15, xmmword ptr [rsp + 0xbc0]
	vpmovzxbd
		xmm0, xmm0 # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
	imul
		eax, ebx, 0x4f
	vcvtdq2ps
		xmm0, xmm0
	shr
		eax, 0xa
	lea
		ecx, [rax + 2*rax]
	lea
		eax, [rax + 4*rcx]
	vmovdqa64
		zmm2, zmm19
	vpermt2b
		zmm2, zmm7, zmm18
	vpunpcklbw
		xmm1, xmm6, xmm1 # xmm1 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	sub
		bl, al
	movzx
		eax, bl
	movsxd
		rax, dword ptr [r9 + 4*rax]
	insertq
		xmm2, xmm1, 0x10, 0x30 # xmm2 = xmm2[0,1,2,3,4,5],xmm1[0,1],xmm2[u,u,u,u,u,u,u,u]
	vpmovzxbd
		ymm1, xmm2 # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
	vmovapd
		xmm2, xmmword ptr [rsp + 0xbe0]
	add
		rax, r9
	vcvtdq2ps
		ymm1, ymm1
	jmp
		rax
	mov
		ecx, esi
	lea
		rax, [rcx + 4*rcx]
	vmovdqu
		ymmword ptr [rbp + 8*rax], ymm1
	jmp
		<L9>
	nop
		word ptr cs:[rax + rax]
	mov
		ecx, esi
	lea
		rax, [rcx + 4*rcx]
	vmovdqu
		ymmword ptr [rbp + 8*rax], ymm1
	vmovd
		dword ptr [rbp + 8*rax + 0x20], xmm0
	jmp
		<L9>
	nop
		word ptr [rax + rax]
	mov
		ecx, esi
	lea
		rax, [rcx + 4*rcx]
	vmovdqu
		ymmword ptr [rbp + 8*rax], ymm1
	vmovq
		qword ptr [rbp + 8*rax + 0x20], xmm0
	jmp
		<L9>
	mov
		ecx, esi
	lea
		rax, [rcx + 4*rcx]
	vmovdqu
		ymmword ptr [rbp + 8*rax], ymm1
	vextractps
		dword ptr [rbp + 8*rax + 0x20], xmm0, 0x1
	jmp
		<L9>
	vmovss
		xmm0, dword ptr [rsp + 0xc00]
	mov
		rbp, rsi
	mov
		rsi, qword ptr <_ZSt7nothrow$got>
	mov
		edi, 0x20
	vmovdqu
		ymmword ptr [rsp + 0xc70], ymm1
	vmovapd
		xmmword ptr [rsp + 0xc30], xmm23
	vmovapd
		xmmword ptr [rsp + 0xc40], xmm22
	vmovapd
		xmmword ptr [rsp + 0xc50], xmm21
	vmovapd
		xmmword ptr [rsp + 0xc60], xmm20
	vmovdqu64
		zmmword ptr [rsp + 0xc90], zmm19
	vmovdqu64
		zmmword ptr [rsp + 0xcd0], zmm18
	vmovapd
		xmmword ptr [rsp + 0x170], xmm17
	vmovapd
		xmmword ptr [rsp + 0x180], xmm16
	vmovdqa
		xmmword ptr [rsp + 0x190], xmm6
	vmovapd
		xmmword ptr [rsp + 0x1a0], xmm15
	vmovapd
		xmmword ptr [rsp + 0x1b0], xmm2
	vmovdqa64
		xmmword ptr [rsp + 0x1d0], xmm25
	vmovdqa64
		xmmword ptr [rsp + 0x1e0], xmm24
	vmovdqa
		xmmword ptr [rsp + 0x1f0], xmm10
	vmovdqa
		xmmword ptr [rsp + 0x220], xmm5
	vmovdqa
		xmmword ptr [rsp + 0x230], xmm4
	vmovdqa
		xmmword ptr [rsp + 0x200], xmm9
	vmovdqa
		xmmword ptr [rsp + 0x240], xmm8
	vmovdqa
		xmmword ptr [rsp + 0x250], xmm11
	vmovdqa
		xmmword ptr [rsp + 0x210], xmm12
	vmovdqa
		xmmword ptr [rsp + 0x1c0], xmm3
	vmovdqu64
		zmmword ptr [rsp + 0xd50], zmm13
	vmovdqu64
		zmmword ptr [rsp + 0xd10], zmm14
	vmovaps
		xmmword ptr [rsp + 0xc20], xmm0
	vzeroupper
	call
		<_ZnamRKSt9nothrow_t$plt>
	vmovdqu64
		zmm14, zmmword ptr [rsp + 0xd10]
	vmovdqu64
		zmm13, zmmword ptr [rsp + 0xd50]
	vmovdqa
		xmm3, xmmword ptr [rsp + 0x1c0]
	vmovq
		xmm7, qword ptr <.LCPI0_8>
	test
		rax, rax
	je
		<L8>
	vpunpcklbw
		xmm0, xmm3, xmmword ptr [rsp + 0xc20] # xmm0 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3],xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	vmovdqa64
		zmm1, zmm14
	vpermt2b
		zmm1, zmm7, zmm13
	insertq
		xmm1, xmm0, 0x10, 0x30 # xmm1 = xmm1[0,1,2,3,4,5],xmm0[0,1],xmm1[u,u,u,u,u,u,u,u]
	vpmovzxbd
		ymm0, xmm1 # ymm0 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
	vcvtdq2ps
		ymm0, ymm0
	vmovups
		ymmword ptr [rax], ymm0
<L8>:
	vmovdqu
		ymm0, ymmword ptr [rsp + 0xc70]
	vmovdqa
		xmm12, xmmword ptr [rsp + 0x210]
	vmovdqa
		xmm11, xmmword ptr [rsp + 0x250]
	vmovdqa
		xmm8, xmmword ptr [rsp + 0x240]
	vmovdqa
		xmm9, xmmword ptr [rsp + 0x200]
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x230]
	vmovdqa
		xmm5, xmmword ptr [rsp + 0x220]
	vmovdqa
		xmm10, xmmword ptr [rsp + 0x1f0]
	vmovdqa64
		xmm24, xmmword ptr [rsp + 0x1e0]
	vmovdqa64
		xmm25, xmmword ptr [rsp + 0x1d0]
	vmovapd
		xmm2, xmmword ptr [rsp + 0x1b0]
	vmovapd
		xmm15, xmmword ptr [rsp + 0x1a0]
	vmovdqa
		xmm6, xmmword ptr [rsp + 0x190]
	vmovapd
		xmm16, xmmword ptr [rsp + 0x180]
	vmovapd
		xmm17, xmmword ptr [rsp + 0x170]
	vmovdqu64
		zmm18, zmmword ptr [rsp + 0xcd0]
	vmovdqu64
		zmm19, zmmword ptr [rsp + 0xc90]
	vmovapd
		xmm20, xmmword ptr [rsp + 0xc60]
	vmovapd
		xmm21, xmmword ptr [rsp + 0xc50]
	vmovapd
		xmm22, xmmword ptr [rsp + 0xc40]
	vmovapd
		xmm23, xmmword ptr [rsp + 0xc30]
	mov
		rsi, rbp
	mov
		rbp, qword ptr [rsp + 0x18]
	mov
		r8, qword ptr [rsp + 0x438]
	mov
		ecx, esi
	lea
		rdx, [rcx + 4*rcx]
	lea
		r9, <memset+0x7c4>
	mov
		qword ptr [rbp + 8*rdx], rax
	vmovdqu
		ymmword ptr [rbp + 8*rdx + 0x8], ymm0
	nop
<L9>:
	lea
		rax, [r13 + rsi]
	mov
		byte ptr [r14 + rcx], bl
	mov
		qword ptr [rsp + 0xad0], rax
	test
		al, 0xf
	jne
		<L5>
	vmovdqa64
		xmm23, xmmword ptr [rsp + 0x5c0]
	vpxor
		xmm0, xmm12, xmmword ptr [rsp]
	vmovdqa64
		xmm22, xmmword ptr [rsp + 0x5b0]
	vmovdqa64
		xmm21, xmmword ptr [rsp + 0x5a0]
	vmovdqa64
		xmm20, xmmword ptr [rsp + 0x590]
	vmovdqa64
		xmm19, xmmword ptr [rsp + 0x580]
	vmovdqa64
		xmm18, xmmword ptr [rsp + 0x570]
	vmovdqa64
		xmm17, xmmword ptr [rsp + 0x560]
	vmovdqa64
		xmm26, xmmword ptr [rsp + 0x550]
	vmovdqa64
		xmm16, xmmword ptr [rsp + 0x540]
	vmovdqa
		xmm15, xmmword ptr [rsp + 0x530]
	vmovdqa
		xmm14, xmmword ptr [rsp + 0x520]
	vmovdqa
		xmm13, xmmword ptr [rsp + 0x510]
	vmovdqa
		xmm10, xmmword ptr [rsp + 0x4f0]
	vmovdqa
		xmm9, xmmword ptr [rsp + 0x4e0]
	vmovdqa
		xmm8, xmmword ptr [rsp + 0x4d0]
	vmovdqa64
		xmm31, xmmword ptr [rsp + 0x4c0]
	vmovdqa
		xmm7, xmmword ptr [rsp + 0x4b0]
	vmovdqa64
		xmm30, xmmword ptr [rsp + 0x4a0]
	vmovdqa
		xmm6, xmmword ptr [rsp + 0x490]
	vmovdqa64
		xmm29, xmmword ptr [rsp + 0x480]
	vmovdqa
		xmm5, xmmword ptr [rsp + 0x470]
	vmovdqa64
		xmm28, xmmword ptr [rsp + 0x460]
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x450]
	vmovdqa64
		xmm27, xmmword ptr [rsp + 0x440]
	vpxorq
		xmm1, xmm23, xmmword ptr [rsp + 0x100]
	vmovdqa
		xmmword ptr [rsp + 0x100], xmm1
	vpsllq
		xmm1, xmm23, 0x11
	vpxorq
		xmm23, xmm0, xmm23
	vpxor
		xmm12, xmm0, xmm1
	vpxorq
		xmm1, xmm22, xmmword ptr [rsp + 0x110]
	vpxor
		xmm0, xmm11, xmmword ptr [rsp + 0x40]
	vmovdqa
		xmm11, xmmword ptr [rsp + 0x500]
	vmovdqa64
		xmmword ptr [rsp + 0x5c0], xmm23
	vmovdqa64
		xmmword ptr [rsp + 0x5e0], xmm23
	vmovdqa
		xmmword ptr [rsp + 0x110], xmm1
	vpsllq
		xmm1, xmm22, 0x11
	vpxorq
		xmm22, xmm0, xmm22
	vpxor
		xmm0, xmm0, xmm1
	vpxorq
		xmm1, xmm21, xmmword ptr [rsp + 0x120]
	vmovdqa64
		xmmword ptr [rsp + 0x5b0], xmm22
	vmovdqa
		xmmword ptr [rsp + 0x250], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x30]
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x410]
	vmovdqa
		xmmword ptr [rsp + 0x120], xmm1
	vpsllq
		xmm1, xmm21, 0x11
	vpxorq
		xmm21, xmm0, xmm21
	vpxor
		xmm0, xmm0, xmm1
	vpxorq
		xmm1, xmm20, xmmword ptr [rsp + 0x130]
	vmovdqa
		xmmword ptr [rsp + 0x410], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x20]
	vmovdqa64
		xmmword ptr [rsp + 0x5a0], xmm21
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x3f0]
	vmovdqa
		xmmword ptr [rsp + 0x130], xmm1
	vpsllq
		xmm1, xmm20, 0x11
	vpxorq
		xmm20, xmm0, xmm20
	vpxor
		xmm0, xmm0, xmm1
	vpxorq
		xmm1, xmm19, xmmword ptr [rsp + 0x140]
	vmovdqa
		xmmword ptr [rsp + 0x3f0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x420]
	vmovdqa64
		xmmword ptr [rsp + 0x590], xmm20
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x3d0]
	vmovdqa
		xmmword ptr [rsp + 0x140], xmm1
	vpsllq
		xmm1, xmm19, 0x11
	vpxorq
		xmm19, xmm0, xmm19
	vpxor
		xmm0, xmm0, xmm1
	vpxorq
		xmm1, xmm18, xmmword ptr [rsp + 0x150]
	vmovdqa
		xmmword ptr [rsp + 0x3d0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x400]
	vmovdqa64
		xmmword ptr [rsp + 0x580], xmm19
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x3b0]
	vmovdqa
		xmmword ptr [rsp + 0x150], xmm1
	vpsllq
		xmm1, xmm18, 0x11
	vpxorq
		xmm18, xmm0, xmm18
	vpxor
		xmm0, xmm0, xmm1
	vpxorq
		xmm1, xmm17, xmmword ptr [rsp + 0x160]
	vmovdqa
		xmmword ptr [rsp + 0x3b0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x3e0]
	vmovdqa64
		xmmword ptr [rsp + 0x570], xmm18
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x3a0]
	vmovdqa
		xmmword ptr [rsp + 0x160], xmm1
	vpsllq
		xmm1, xmm17, 0x11
	vpxorq
		xmm17, xmm0, xmm17
	vpxor
		xmm0, xmm0, xmm1
	vpxorq
		xmm1, xmm26, xmmword ptr [rsp + 0x50]
	vmovdqa
		xmmword ptr [rsp + 0x3a0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x3c0]
	vmovdqa64
		xmmword ptr [rsp + 0x560], xmm17
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x390]
	vmovdqa
		xmmword ptr [rsp + 0x50], xmm1
	vpsllq
		xmm1, xmm26, 0x11
	vpxorq
		xmm26, xmm0, xmm26
	vpxor
		xmm0, xmm0, xmm1
	vpxorq
		xmm1, xmm16, xmmword ptr [rsp + 0x60]
	vmovdqa
		xmmword ptr [rsp + 0x390], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x380]
	vmovdqa64
		xmmword ptr [rsp + 0x550], xmm26
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x350]
	vmovdqa
		xmmword ptr [rsp + 0x60], xmm1
	vpsllq
		xmm1, xmm16, 0x11
	vpxorq
		xmm16, xmm0, xmm16
	vpxor
		xmm0, xmm0, xmm1
	vpxor
		xmm1, xmm15, xmmword ptr [rsp + 0x70]
	vmovdqa
		xmmword ptr [rsp + 0x350], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x370]
	vmovdqa64
		xmmword ptr [rsp + 0x540], xmm16
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x330]
	vmovdqa
		xmmword ptr [rsp + 0x70], xmm1
	vpsllq
		xmm1, xmm15, 0x11
	vpxor
		xmm15, xmm15, xmm0
	vpxor
		xmm0, xmm0, xmm1
	vpxor
		xmm1, xmm14, xmmword ptr [rsp + 0x80]
	vmovdqa
		xmmword ptr [rsp + 0x330], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x360]
	vmovdqa
		xmmword ptr [rsp + 0x530], xmm15
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x310]
	vmovdqa
		xmmword ptr [rsp + 0x80], xmm1
	vpsllq
		xmm1, xmm14, 0x11
	vpxor
		xmm14, xmm14, xmm0
	vpxor
		xmm0, xmm0, xmm1
	vpxor
		xmm1, xmm13, xmmword ptr [rsp + 0x90]
	vmovdqa
		xmmword ptr [rsp + 0x310], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x340]
	vmovdqa
		xmmword ptr [rsp + 0x520], xmm14
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x2f0]
	vmovdqa
		xmmword ptr [rsp + 0x90], xmm1
	vpsllq
		xmm1, xmm13, 0x11
	vpxor
		xmm13, xmm13, xmm0
	vpxor
		xmm0, xmm0, xmm1
	vpxor
		xmm1, xmm11, xmmword ptr [rsp + 0xa0]
	vmovdqa
		xmmword ptr [rsp + 0x2f0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x320]
	vmovdqa
		xmmword ptr [rsp + 0x510], xmm13
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x2d0]
	vmovdqa
		xmmword ptr [rsp + 0xa0], xmm1
	vpsllq
		xmm1, xmm11, 0x11
	vpxor
		xmm11, xmm11, xmm0
	vpxor
		xmm0, xmm0, xmm1
	vpxor
		xmm1, xmm10, xmmword ptr [rsp + 0xb0]
	vmovdqa
		xmmword ptr [rsp + 0x2d0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x300]
	vmovdqa
		xmmword ptr [rsp + 0x500], xmm11
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x2c0]
	vmovdqa
		xmmword ptr [rsp + 0xb0], xmm1
	vpsllq
		xmm1, xmm10, 0x11
	vpxor
		xmm10, xmm10, xmm0
	vpxor
		xmm0, xmm0, xmm1
	vpxor
		xmm1, xmm9, xmmword ptr [rsp + 0xc0]
	vmovdqa
		xmmword ptr [rsp + 0x2c0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x2e0]
	vmovdqa
		xmmword ptr [rsp + 0x4f0], xmm10
	vpxor
		xmm0, xmm0, xmmword ptr [rsp + 0x2b0]
	vmovdqa
		xmmword ptr [rsp + 0xc0], xmm1
	vpsllq
		xmm1, xmm9, 0x11
	vpxor
		xmm9, xmm9, xmm0
	vpxor
		xmm0, xmm0, xmm1
	vpxor
		xmm1, xmm8, xmmword ptr [rsp + 0xd0]
	vmovdqa
		xmmword ptr [rsp + 0x2b0], xmm0
	vpxorq
		xmm0, xmm31, xmmword ptr [rsp + 0x2a0]
	vmovdqa
		xmmword ptr [rsp + 0x4e0], xmm9
	vmovdqa
		xmmword ptr [rsp + 0xd0], xmm1
	vpsllq
		xmm1, xmm8, 0x11
	vpxor
		xmm8, xmm8, xmm0
	vpxor
		xmm0, xmm0, xmm1
	vpxor
		xmm1, xmm7, xmmword ptr [rsp + 0xe0]
	vmovdqa
		xmmword ptr [rsp + 0x2a0], xmm0
	vpxorq
		xmm0, xmm30, xmmword ptr [rsp + 0x290]
	vmovdqa
		xmmword ptr [rsp + 0x4d0], xmm8
	vmovdqa
		xmmword ptr [rsp + 0xe0], xmm1
	vpsllq
		xmm1, xmm7, 0x11
	vpxor
		xmm7, xmm0, xmm7
	vpxor
		xmm0, xmm0, xmm1
	vpxor
		xmm1, xmm6, xmmword ptr [rsp + 0xf0]
	vmovdqa
		xmmword ptr [rsp + 0x290], xmm0
	vpxorq
		xmm0, xmm29, xmmword ptr [rsp + 0x280]
	vmovdqa
		xmmword ptr [rsp + 0x4b0], xmm7
	vmovdqa
		xmmword ptr [rsp + 0xf0], xmm1
	vpsllq
		xmm1, xmm6, 0x11
	vpxor
		xmm6, xmm0, xmm6
	vpxor
		xmm0, xmm0, xmm1
	vpxorq
		xmm1, xmm25, xmm5
	vmovdqa
		xmmword ptr [rsp + 0x280], xmm0
	vpxorq
		xmm0, xmm28, xmmword ptr [rsp + 0x270]
	vmovdqa
		xmmword ptr [rsp + 0x210], xmm1
	vpsllq
		xmm1, xmm5, 0x11
	vmovdqa
		xmmword ptr [rsp + 0x490], xmm6
	vpxor
		xmm5, xmm0, xmm5
	vpxor
		xmm0, xmm0, xmm1
	vpxorq
		xmm1, xmm24, xmm4
	vmovdqa
		xmmword ptr [rsp + 0x270], xmm0
	vpxorq
		xmm0, xmm27, xmmword ptr [rsp + 0x260]
	vmovdqa
		xmmword ptr [rsp + 0x200], xmm1
	vpsllq
		xmm1, xmm4, 0x11
	vmovdqa
		xmmword ptr [rsp + 0x470], xmm5
	vpxor
		xmm4, xmm0, xmm4
	vpxor
		xmm0, xmm0, xmm1
	vmovdqa
		xmmword ptr [rsp + 0x260], xmm0
	vpsllq
		xmm0, xmm23, 0x2
	vmovdqa
		xmmword ptr [rsp + 0x450], xmm4
	vpaddq
		xmm0, xmm0, xmm23
	vmovdqa64
		xmm23, xmmword ptr [rsp + 0x100]
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x1f0], xmm0
	vpsllq
		xmm0, xmm22, 0x2
	vpaddq
		xmm0, xmm0, xmm22
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x1e0], xmm0
	vpsllq
		xmm0, xmm21, 0x2
	vpaddq
		xmm0, xmm0, xmm21
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x1d0], xmm0
	vpsllq
		xmm0, xmm20, 0x2
	vpaddq
		xmm0, xmm0, xmm20
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x1c0], xmm0
	vpsllq
		xmm0, xmm19, 0x2
	vpaddq
		xmm0, xmm0, xmm19
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0xd50], xmm0
	vpsllq
		xmm0, xmm18, 0x2
	vpaddq
		xmm0, xmm0, xmm18
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0xd10], xmm0
	vpsllq
		xmm0, xmm17, 0x2
	vpaddq
		xmm0, xmm0, xmm17
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x1b0], xmm0
	vpsllq
		xmm0, xmm26, 0x2
	vpaddq
		xmm0, xmm0, xmm26
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x1a0], xmm0
	vpsllq
		xmm0, xmm16, 0x2
	vpaddq
		xmm0, xmm0, xmm16
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x240], xmm0
	vpsllq
		xmm0, xmm15, 0x2
	vpaddq
		xmm0, xmm15, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x230], xmm0
	vpsllq
		xmm0, xmm14, 0x2
	vpaddq
		xmm0, xmm14, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x220], xmm0
	vpsllq
		xmm0, xmm13, 0x2
	vpaddq
		xmm0, xmm13, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x190], xmm0
	vpsllq
		xmm0, xmm11, 0x2
	vpaddq
		xmm0, xmm11, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x180], xmm0
	vpsllq
		xmm0, xmm10, 0x2
	vpaddq
		xmm0, xmm10, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x170], xmm0
	vpsllq
		xmm0, xmm9, 0x2
	vpaddq
		xmm0, xmm9, xmm0
	vprolq
		xmm0, xmm0, 0x7
	vpsllq
		xmm1, xmm0, 0x3
	vpaddq
		xmm0, xmm1, xmm0
	vpsllq
		xmm1, xmm8, 0x2
	vpaddq
		xmm1, xmm8, xmm1
	vmovdqa
		xmmword ptr [rsp + 0xcd0], xmm0
	vprolq
		xmm1, xmm1, 0x7
	vpsllq
		xmm2, xmm1, 0x3
	vpaddq
		xmm0, xmm2, xmm1
	vpsllq
		xmm2, xmm7, 0x2
	vpaddq
		xmm2, xmm2, xmm7
	vprolq
		xmm2, xmm2, 0x7
	vpsllq
		xmm3, xmm2, 0x3
	vpaddq
		xmm1, xmm3, xmm2
	vpsllq
		xmm3, xmm6, 0x2
	vpaddq
		xmm3, xmm3, xmm6
	vmovdqa
		xmmword ptr [rsp + 0xc90], xmm1
	vmovdqa
		xmm1, xmmword ptr [rsp]
	vprolq
		xmm3, xmm3, 0x7
	vpsllq
		xmm24, xmm3, 0x3
	vpaddq
		xmm3, xmm24, xmm3
	vpsllq
		xmm24, xmm5, 0x2
	vpaddq
		xmm24, xmm24, xmm5
	vprolq
		xmm24, xmm24, 0x7
	vpsllq
		xmm25, xmm24, 0x3
	vpxorq
		xmm1, xmm23, xmm1
	vprolq
		xmm23, xmm23, 0x2d
	vpaddq
		xmm2, xmm25, xmm24
	vpsllq
		xmm24, xmm4, 0x2
	vmovdqa
		xmmword ptr [rsp + 0x5d0], xmm1
	vmovdqa
		xmmword ptr [rsp], xmm1
	vmovdqa
		xmm1, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x5f0], xmm12
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x110]
	vpaddq
		xmm24, xmm24, xmm4
	vmovdqa64
		xmmword ptr [rsp + 0x600], xmm23
	vmovdqa64
		xmmword ptr [rsp + 0x620], xmm22
	vmovdqa64
		xmm22, xmmword ptr [rsp + 0x40]
	vmovdqa64
		xmmword ptr [rsp + 0x100], xmm23
	vmovapd
		xmm23, xmmword ptr [rsp + 0x410]
	vprolq
		xmm24, xmm24, 0x7
	vpsllq
		xmm25, xmm24, 0x3
	vpaddq
		xmm25, xmm25, xmm24
	vmovdqa64
		xmm24, xmmword ptr [rsp + 0x250]
	vpxorq
		xmm22, xmm0, xmm22
	vmovdqa64
		xmmword ptr [rsp + 0x610], xmm22
	vmovdqa64
		xmmword ptr [rsp + 0x40], xmm22
	vprolq
		xmm22, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x120]
	vmovdqa64
		xmmword ptr [rsp + 0x110], xmm22
	vmovdqa64
		xmmword ptr [rsp + 0x630], xmm24
	vmovdqa64
		xmmword ptr [rsp + 0x640], xmm22
	vmovdqa64
		xmmword ptr [rsp + 0x660], xmm21
	vmovdqa64
		xmm21, xmmword ptr [rsp + 0x30]
	vprolq
		xmm22, xmm0, 0x2d
	vmovdqa64
		xmmword ptr [rsp + 0x120], xmm22
	vpxorq
		xmm21, xmm0, xmm21
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x130]
	vmovdqa64
		xmmword ptr [rsp + 0x650], xmm21
	vmovapd
		xmmword ptr [rsp + 0x670], xmm23
	vmovdqa64
		xmmword ptr [rsp + 0x680], xmm22
	vmovdqa64
		xmmword ptr [rsp + 0x6a0], xmm20
	vmovdqa64
		xmm20, xmmword ptr [rsp + 0x20]
	vmovdqa64
		xmmword ptr [rsp + 0x30], xmm21
	vpxorq
		xmm20, xmm0, xmm20
	vmovdqa64
		xmmword ptr [rsp + 0x20], xmm20
	vmovdqa64
		xmmword ptr [rsp + 0x690], xmm20
	vmovaps
		xmm20, xmmword ptr [rsp + 0x3f0]
	vmovaps
		xmmword ptr [rsp + 0x6b0], xmm20
	vprolq
		xmm20, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x140]
	vmovdqa64
		xmmword ptr [rsp + 0x6c0], xmm20
	vmovdqa64
		xmmword ptr [rsp + 0x6e0], xmm19
	vmovdqa64
		xmm19, xmmword ptr [rsp + 0x420]
	vmovdqa64
		xmmword ptr [rsp + 0x130], xmm20
	vmovapd
		xmm20, xmmword ptr [rsp + 0x3b0]
	vpxorq
		xmm19, xmm0, xmm19
	vmovdqa64
		xmmword ptr [rsp + 0x420], xmm19
	vmovdqa64
		xmmword ptr [rsp + 0x6d0], xmm19
	vmovaps
		xmm19, xmmword ptr [rsp + 0x3d0]
	vmovaps
		xmmword ptr [rsp + 0x6f0], xmm19
	vprolq
		xmm19, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x150]
	vmovdqa64
		xmmword ptr [rsp + 0x700], xmm19
	vmovdqa64
		xmmword ptr [rsp + 0x720], xmm18
	vmovdqa64
		xmm18, xmmword ptr [rsp + 0x400]
	vmovdqa64
		xmmword ptr [rsp + 0x140], xmm19
	vprolq
		xmm19, xmm0, 0x2d
	vpxorq
		xmm18, xmm0, xmm18
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x160]
	vmovdqa64
		xmmword ptr [rsp + 0x150], xmm19
	vmovdqa64
		xmmword ptr [rsp + 0x710], xmm18
	vmovapd
		xmmword ptr [rsp + 0x730], xmm20
	vmovdqa64
		xmmword ptr [rsp + 0x740], xmm19
	vmovdqa64
		xmmword ptr [rsp + 0x760], xmm17
	vmovdqa64
		xmm17, xmmword ptr [rsp + 0x3e0]
	vmovdqa64
		xmmword ptr [rsp + 0x400], xmm18
	vpxorq
		xmm17, xmm0, xmm17
	vmovdqa64
		xmmword ptr [rsp + 0x3e0], xmm17
	vmovdqa64
		xmmword ptr [rsp + 0x750], xmm17
	vmovaps
		xmm17, xmmword ptr [rsp + 0x3a0]
	vmovaps
		xmmword ptr [rsp + 0x770], xmm17
	vprolq
		xmm17, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x50]
	vmovdqa64
		xmmword ptr [rsp + 0x780], xmm17
	vmovdqa64
		xmmword ptr [rsp + 0x160], xmm17
	vmovdqa64
		xmm17, xmmword ptr [rsp + 0x3c0]
	vmovdqa64
		xmmword ptr [rsp + 0x7a0], xmm26
	vpxorq
		xmm17, xmm0, xmm17
	vmovdqa64
		xmmword ptr [rsp + 0x3c0], xmm17
	vmovdqa64
		xmmword ptr [rsp + 0x790], xmm17
	vmovaps
		xmm17, xmmword ptr [rsp + 0x390]
	vmovaps
		xmmword ptr [rsp + 0x7b0], xmm17
	vprolq
		xmm17, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x60]
	vmovdqa64
		xmmword ptr [rsp + 0x7c0], xmm17
	vmovdqa64
		xmmword ptr [rsp + 0x7e0], xmm16
	vmovdqa64
		xmm16, xmmword ptr [rsp + 0x380]
	vmovdqa64
		xmmword ptr [rsp + 0x50], xmm17
	vmovapd
		xmm17, xmmword ptr [rsp + 0x330]
	vpxorq
		xmm16, xmm0, xmm16
	vmovdqa64
		xmmword ptr [rsp + 0x380], xmm16
	vmovdqa64
		xmmword ptr [rsp + 0x7d0], xmm16
	vmovaps
		xmm16, xmmword ptr [rsp + 0x350]
	vmovaps
		xmmword ptr [rsp + 0x7f0], xmm16
	vprolq
		xmm16, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x70]
	vmovdqa64
		xmmword ptr [rsp + 0x800], xmm16
	vmovdqa
		xmmword ptr [rsp + 0x820], xmm15
	vmovdqa
		xmm15, xmmword ptr [rsp + 0x370]
	vmovdqa64
		xmmword ptr [rsp + 0x60], xmm16
	vprolq
		xmm16, xmm0, 0x2d
	vpxor
		xmm15, xmm15, xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x80]
	vmovdqa64
		xmmword ptr [rsp + 0x70], xmm16
	vmovdqa
		xmmword ptr [rsp + 0x810], xmm15
	vmovapd
		xmmword ptr [rsp + 0x830], xmm17
	vmovdqa64
		xmmword ptr [rsp + 0x840], xmm16
	vmovdqa
		xmmword ptr [rsp + 0x860], xmm14
	vmovdqa
		xmm14, xmmword ptr [rsp + 0x360]
	vmovdqa
		xmmword ptr [rsp + 0x370], xmm15
	vpxor
		xmm14, xmm14, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x360], xmm14
	vmovdqa
		xmmword ptr [rsp + 0x850], xmm14
	vmovaps
		xmm14, xmmword ptr [rsp + 0x310]
	vmovaps
		xmmword ptr [rsp + 0x870], xmm14
	vprolq
		xmm14, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x90]
	vmovdqa
		xmmword ptr [rsp + 0x880], xmm14
	vmovdqa
		xmmword ptr [rsp + 0x8a0], xmm13
	vmovdqa
		xmm13, xmmword ptr [rsp + 0x340]
	vmovdqa
		xmmword ptr [rsp + 0x80], xmm14
	vmovaps
		xmm14, xmmword ptr [rsp + 0x260]
	vpxor
		xmm13, xmm13, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x340], xmm13
	vmovdqa
		xmmword ptr [rsp + 0x890], xmm13
	vmovaps
		xmm13, xmmword ptr [rsp + 0x2f0]
	vmovaps
		xmmword ptr [rsp + 0x8b0], xmm13
	vprolq
		xmm13, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xa0]
	vmovdqa
		xmmword ptr [rsp + 0x8c0], xmm13
	vmovdqa
		xmmword ptr [rsp + 0x90], xmm13
	vmovdqa
		xmm13, xmmword ptr [rsp + 0x320]
	vmovdqa
		xmmword ptr [rsp + 0x8e0], xmm11
	vmovdqa64
		xmm11, xmm24
	vpxor
		xmm13, xmm13, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x320], xmm13
	vmovdqa
		xmmword ptr [rsp + 0x8d0], xmm13
	vmovaps
		xmm13, xmmword ptr [rsp + 0x2d0]
	vmovaps
		xmmword ptr [rsp + 0x8f0], xmm13
	vprolq
		xmm13, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xb0]
	vmovdqa
		xmmword ptr [rsp + 0x900], xmm13
	vmovdqa
		xmmword ptr [rsp + 0xa0], xmm13
	vmovdqa
		xmm13, xmmword ptr [rsp + 0x300]
	vmovdqa
		xmmword ptr [rsp + 0x920], xmm10
	vmovdqa64
		xmm10, xmm25
	vpxor
		xmm13, xmm13, xmm0
	vmovdqa
		xmmword ptr [rsp + 0x300], xmm13
	vmovdqa
		xmmword ptr [rsp + 0x910], xmm13
	vmovaps
		xmm13, xmmword ptr [rsp + 0x2c0]
	vmovaps
		xmmword ptr [rsp + 0x930], xmm13
	vprolq
		xmm13, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xc0]
	vmovdqa
		xmmword ptr [rsp + 0x940], xmm13
	vmovdqa
		xmmword ptr [rsp + 0xb0], xmm13
	vmovdqa
		xmm13, xmmword ptr [rsp + 0x2e0]
	vmovdqa
		xmmword ptr [rsp + 0x960], xmm9
	vmovdqa
		xmm9, xmm2
	vmovapd
		xmm2, xmmword ptr [rsp + 0xc90]
	vpxor
		xmm13, xmm13, xmm0
	vprolq
		xmm0, xmm0, 0x2d
	vmovdqa
		xmmword ptr [rsp + 0x2e0], xmm13
	vmovdqa
		xmmword ptr [rsp + 0x950], xmm13
	vmovaps
		xmm13, xmmword ptr [rsp + 0x2b0]
	vmovdqa
		xmmword ptr [rsp + 0xc0], xmm0
	vmovaps
		xmmword ptr [rsp + 0x970], xmm13
	vmovdqa
		xmmword ptr [rsp + 0x980], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xd0]
	vmovaps
		xmm13, xmmword ptr [rsp + 0x2a0]
	vmovdqa
		xmmword ptr [rsp + 0x9a0], xmm8
	vmovapd
		xmm8, xmmword ptr [rsp + 0x240]
	vpxorq
		xmm31, xmm0, xmm31
	vprolq
		xmm0, xmm0, 0x2d
	vmovdqa64
		xmmword ptr [rsp + 0x990], xmm31
	vmovaps
		xmmword ptr [rsp + 0x9b0], xmm13
	vmovaps
		xmm13, xmmword ptr [rsp + 0x290]
	vmovdqa64
		xmmword ptr [rsp + 0x4c0], xmm31
	vmovdqa
		xmmword ptr [rsp + 0x9c0], xmm0
	vmovdqa
		xmmword ptr [rsp + 0xd0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xe0]
	vmovdqa
		xmmword ptr [rsp + 0x9e0], xmm7
	vmovq
		xmm7, qword ptr <.LCPI0_8>
	vpxorq
		xmm30, xmm0, xmm30
	vprolq
		xmm0, xmm0, 0x2d
	vmovdqa64
		xmmword ptr [rsp + 0x9d0], xmm30
	vmovaps
		xmmword ptr [rsp + 0x9f0], xmm13
	vmovaps
		xmm13, xmmword ptr [rsp + 0x1e0]
	vmovdqa64
		xmmword ptr [rsp + 0x4a0], xmm30
	vmovdqa
		xmmword ptr [rsp + 0xa00], xmm0
	vmovdqa
		xmmword ptr [rsp + 0xe0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0xf0]
	vmovdqa
		xmmword ptr [rsp + 0xa20], xmm6
	vmovaps
		xmm6, xmmword ptr [rsp + 0x280]
	vpxorq
		xmm29, xmm0, xmm29
	vprolq
		xmm0, xmm0, 0x2d
	vmovdqa64
		xmmword ptr [rsp + 0xa10], xmm29
	vmovaps
		xmmword ptr [rsp + 0xa30], xmm6
	vmovdqa
		xmm6, xmmword ptr [rsp + 0x270]
	vmovdqa64
		xmmword ptr [rsp + 0x480], xmm29
	vmovdqa
		xmmword ptr [rsp + 0xa40], xmm0
	vmovdqa
		xmmword ptr [rsp + 0xf0], xmm0
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x210]
	vmovdqa
		xmmword ptr [rsp + 0xa60], xmm5
	vmovdqa
		xmm5, xmmword ptr [rsp + 0x220]
	vpxorq
		xmm28, xmm0, xmm28
	vprolq
		xmm25, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x200]
	vmovdqa64
		xmmword ptr [rsp + 0xa50], xmm28
	vmovdqa
		xmmword ptr [rsp + 0xa70], xmm6
	vmovdqa64
		xmmword ptr [rsp + 0x460], xmm28
	vmovdqa64
		xmmword ptr [rsp + 0xa80], xmm25
	vmovdqa
		xmmword ptr [rsp + 0xaa0], xmm4
	vmovdqa
		xmm4, xmmword ptr [rsp + 0x230]
	vpxorq
		xmm27, xmm0, xmm27
	vprolq
		xmm24, xmm0, 0x2d
	vmovdqa
		xmm0, xmmword ptr [rsp + 0x1f0]
	vmovdqa64
		xmmword ptr [rsp + 0xa90], xmm27
	vmovaps
		xmmword ptr [rsp + 0xab0], xmm14
	vmovaps
		xmm14, xmmword ptr [rsp + 0x1d0]
	vmovdqa64
		xmmword ptr [rsp + 0x440], xmm27
	vmovdqa64
		xmmword ptr [rsp + 0xac0], xmm24
	vmovdqa
		xmmword ptr [rsp + 0xae0], xmm0
	vmovaps
		xmmword ptr [rsp + 0xaf0], xmm13
	vmovaps
		xmm13, xmmword ptr [rsp + 0x1c0]
	vmovd
		eax, xmm0
	vmovdqa
		xmm0, xmm4
	insertq
		xmm0, xmm5, 0x8, 0x8 # xmm0 = xmm0[0],xmm5[0],xmm0[2,3,4,5,6,7,u,u,u,u,u,u,u,u]
	vmovaps
		xmmword ptr [rsp + 0xb00], xmm14
	vmovaps
		xmm14, xmmword ptr [rsp + 0xd50]
	vmovaps
		xmmword ptr [rsp + 0xb10], xmm13
	vmovaps
		xmm13, xmmword ptr [rsp + 0xd10]
	vmovaps
		xmmword ptr [rsp + 0xb20], xmm14
	vmovaps
		xmm14, xmmword ptr [rsp + 0x1b0]
	vmovaps
		xmmword ptr [rsp + 0xb30], xmm13
	vmovaps
		xmm13, xmmword ptr [rsp + 0x1a0]
	vmovaps
		xmmword ptr [rsp + 0xb40], xmm14
	vmovaps
		xmm14, xmmword ptr [rsp + 0x190]
	vmovaps
		xmmword ptr [rsp + 0xb50], xmm13
	vmovaps
		xmm13, xmmword ptr [rsp + 0x180]
	vmovapd
		xmmword ptr [rsp + 0xb60], xmm8
	vmovdqa
		xmmword ptr [rsp + 0xb70], xmm4
	vmovdqa
		xmmword ptr [rsp + 0xb80], xmm5
	vmovaps
		xmmword ptr [rsp + 0xb90], xmm14
	vmovapd
		xmm14, xmmword ptr [rsp + 0x170]
	vmovaps
		xmmword ptr [rsp + 0xba0], xmm13
	vmovapd
		xmm13, xmmword ptr [rsp + 0xcd0]
	vmovapd
		xmmword ptr [rsp + 0xbb0], xmm14
	vmovapd
		xmmword ptr [rsp + 0xbc0], xmm13
	jmp
		<L6>
<L10>:
	mov
		rax, qword ptr [rsp + 0x10]
<L11>:
	add
		rax, rbp
	mov
		qword ptr [rsp + 0x40], r15
	mov
		qword ptr [rsp + 0x10], rax
	test
		r15d, r15d
	je
		<L34>
	mov
		edx, 0x80
	lea
		rdi, [rsp + 0x5d0]
	lea
		rbx, <memset+0x7f8>
	mov
		qword ptr [rsp + 0x30], r12
	mov
		qword ptr [rsp + 0x20], rsi
	mov
		r12, rbp
	mov
		r14, rax
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
		rax, r12
	mov
		rcx, r14
	vpxor
		xmm5, xmm5, xmm5
	nop
		word ptr cs:[rax + rax]
<L13>:
	blsi
		edx, r15d
	lea
		rsi, [rdx + 4*rdx]
	lea
		r14, [rcx + rdx]
	lea
		r12, [rax + 8*rsi]
	test
		edx, edx
	je
		<L28>
	mov
		edi, 0x1
	mov
		r9d, 0x1
	xor
		r11d, r11d
	mov
		qword ptr [rsp], r14
	jmp
		<L15>
	nop
		dword ptr [rax]
<L14>:
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
		dword ptr [rsp + 4*r10 + 0x5d0], xmm0
	lzcnt
		ebp, edi
	popcnt
		r11d, r9d
	mov
		r9, r8
	sub
		r11d, ebp
	cmp
		rax, r12
	je
		<L27>
<L15>:
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
		<L19>
	vmulss
		xmm0, xmm8, dword ptr [rax + 0x1c]
	jmp
		<L16>
	vmulss
		xmm0, xmm6, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	jmp
		<L19>
	vmovss
		xmm0, dword ptr [rax + 0x24]
	jmp
		<L17>
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm0, xmm4
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	jmp
		<L19>
	vmovss
		xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x1c]
	jmp
		<L19>
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	jmp
		<L19>
	vmulss
		xmm0, xmm7, dword ptr [rax + 0x1c]
<L16>:
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x24]
	jmp
		<L19>
	vmulss
		xmm0, xmm4, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	jmp
		<L19>
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm1, xmm0, xmm0
	jmp
		<L18>
	vmovss
		xmm0, dword ptr [rax + 0x20]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x24]
	jmp
		<L19>
	vmovss
		xmm0, dword ptr [rax + 0x1c]
	vmulss
		xmm0, xmm0, xmm0
	vmulss
		xmm0, xmm9, xmm0
	vmulss
		xmm0, xmm0, dword ptr [rax + 0x20]
	jmp
		<L19>
	vmovss
		xmm0, dword ptr [rax + 0x1c]
<L17>:
	vmulss
		xmm1, xmm0, xmm0
	vmulss
		xmm1, xmm8, xmm1
<L18>:
	vmulss
		xmm0, xmm1, xmm0
<L19>:
	mov
		r8d, esi
	cmp
		esi, r9d
	jl
		<L14>
	movsxd
		r9, r9d
	mov
		r10d, r8d
	sub
		r10d, r9d
	cmp
		r10d, 0x7
	jb
		<L25>
	lea
		r14, [r10 + 0x1]
	cmp
		r10d, 0x3f
	jae
		<L20>
	xor
		r11d, r11d
	jmp
		<L22>
<L20>:
	lea
		r13, [rsp + 0x690]
	movabs
		r10, 0x1ffffffc0
	mov
		r11, r14
	vpblendd
		xmm0, xmm5, xmm0, 0x1 # xmm0 = xmm0[0],xmm5[1,2,3]
	vxorpd
		xmm1, xmm1, xmm1
	vxorpd
		xmm2, xmm2, xmm2
	vxorpd
		xmm3, xmm3, xmm3
	and
		r11, r10
	mov
		r10, r14
	shr
		r10, 0x6
	lea
		rbp, [r13 + 4*r9]
	xor
		r13d, r13d
	shl
		r10, 0x8
	nop
<L21>:
	vaddps
		zmm0, zmm0, zmmword ptr [rbp + r13 - 0xc0]
	vaddps
		zmm1, zmm1, zmmword ptr [rbp + r13 - 0x80]
	vaddps
		zmm2, zmm2, zmmword ptr [rbp + r13 - 0x40]
	vaddps
		zmm3, zmm3, zmmword ptr [rbp + r13]
	add
		r13, 0x100
	cmp
		r10, r13
	jne
		<L21>
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
		r14, r11
	je
		<L14>
	test
		r14b, 0x38
	je
		<L24>
<L22>:
	movabs
		r10, 0x1ffffffc0
	lea
		r13, [rsp + 4*r9 + 0x5d0]
	vpblendd
		xmm0, xmm5, xmm0, 0x1 # xmm0 = xmm0[0],xmm5[1,2,3]
	add
		r10, 0x38
	and
		r10, r14
	nop
		word ptr cs:[rax + rax]
<L23>:
	vaddps
		ymm0, ymm0, ymmword ptr [r13 + 4*r11]
	add
		r11, 0x8
	cmp
		r10, r11
	jne
		<L23>
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
		r14, r10
	je
		<L14>
	add
		r9, r10
	jmp
		<L25>
<L24>:
	add
		r9, r11
	nop
		dword ptr [rax]
<L25>:
	mov
		r10d, esi
	sub
		r10d, r9d
	lea
		r9, [rsp + 4*r9 + 0x5d0]
	xor
		r11d, r11d
	inc
		r10d
	nop
		word ptr cs:[rax + rax]
<L26>:
	vaddss
		xmm0, xmm0, dword ptr [r9 + 4*r11]
	inc
		r11
	cmp
		r10d, r11d
	jne
		<L26>
	jmp
		<L14>
	nop
		word ptr cs:[rax + rax]
<L27>:
	vmovd
		xmm0, dword ptr [rsp + 4*r10 + 0x5d0]
	sub
		r15d, edx
	je
		<L30>
	mov
		r14, qword ptr [rsp]
	vmovd
		dword ptr [rsp + 4*r10 + 0x5d4], xmm0
	mov
		rax, r12
	mov
		rcx, r14
	test
		esi, esi
	js
		<L13>
	jmp
		<L29>
	nop
		dword ptr [rax]
<L28>:
	vmovd
		xmm0, dword ptr [rsp + 0x5d4]
	sub
		r15d, edx
	je
		<L30>
	mov
		esi, 0x1
	vmovd
		dword ptr [rsp + 0x5d8], xmm0
<L29>:
	mov
		eax, esi
	lea
		rdx, [4*rax + 0x4]
	lea
		rdi, [rsp + 0x5d0]
	jmp
		<L12>
<L30>:
	mov
		r12, qword ptr [rsp + 0x30]
	mov
		rbp, qword ptr [rsp + 0x18]
	mov
		rax, qword ptr [rsp + 0x10]
	mov
		rsi, qword ptr [rsp + 0x20]
	vmovd
		dword ptr [rsp], xmm0
	test
		esi, esi
	je
		<L35>
<L31>:
	mov
		ebx, esi
	xor
		r14d, r14d
	jmp
		<L33>
	nop
		word ptr [rax + rax]
<L32>:
	inc
		r14
	add
		rbp, 0x28
	cmp
		rbx, r14
	je
		<L36>
<L33>:
	cmp
		byte ptr [rax + r14], 0xc
	jne
		<L32>
	mov
		rdi, qword ptr [rbp]
	test
		rdi, rdi
	je
		<L32>
	vzeroupper
	call
		<_ZdaPv$plt>
	mov
		rax, qword ptr [rsp + 0x10]
	jmp
		<L32>
<L34>:
	vpxor
		xmm0, xmm0, xmm0
	vmovd
		dword ptr [rsp], xmm0
	test
		esi, esi
	jne
		<L31>
<L35>:
	test
		rbp, rbp
	je
		<L37>
<L36>:
	mov
		rdi, qword ptr [rsp + 0x18]
	vzeroupper
	call
		<_ZdaPv$plt>
	vmovd
		xmm0, dword ptr [rsp]
<L37>:
	cmp
		r12, 0x2a
	jne
		<L38>
	mov
		rax, qword ptr [rsp + 0x40]
	cmp
		rax, 0x30d40
	je
		<L39>
	cmp
		rax, 0x186a0
	jne
		<L38>
	vucomiss
		xmm0, dword ptr <.LCPI0_7>
	jne
		<L40>
<L38>:
	xor
		eax, eax
	add
		rsp, 0xd98
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
<L39>:
	vucomiss
		xmm0, dword ptr <.LCPI0_6>
	je
		<L38>
<L40>:
	mov
		edi, 0x4
	vzeroupper
	call
		<__cxa_allocate_exception$plt>
	vmovss
		xmm0, dword ptr [rsp]
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
		xmm4, qword ptr <.LCPI1_1>
	vpbroadcastq
		xmm7, qword ptr <.LCPI1_2>
	vpsrlq
		xmm2, xmm0, 0x1e
	vpaddq
		xmm1, xmm0, qword ptr {1to2} <.LCPI1_0>
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
		xmm2, xmm0, qword ptr {1to2} <.LCPI1_3>
	vpaddq
		xmm0, xmm0, qword ptr {1to2} <.LCPI1_4>
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
