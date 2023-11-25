
build/Evaluation/bin/Replication:	file format elf64-x86-64

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
               	call	qword ptr  <__libc_start_main+0x3708>
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

<deregister_tm_clones>:
               	lea	rdi,  <__dso_handle>
               	lea	rax,  <__dso_handle>
               	cmp	rax, rdi
               	je	 <L0>
               	mov	rax, qword ptr  <__libc_start_main+0x3718>
               	test	rax, rax
               	je	 <L0>
               	jmp	rax
               	nop	dword ptr [rax]
<L0>:
               	ret
               	nop	dword ptr [rax]

<register_tm_clones>:
               	lea	rdi,  <__dso_handle>
               	lea	rsi,  <__dso_handle>
               	sub	rsi, rdi
               	mov	rax, rsi
               	shr	rsi, 0x3f
               	sar	rax, 0x3
               	add	rsi, rax
               	sar	rsi
               	je	 <L0>
               	mov	rax, qword ptr  <__libc_start_main+0x3720>
               	test	rax, rax
               	je	 <L0>
               	jmp	rax
               	nop	word ptr [rax + rax]
<L0>:
               	ret
               	nop	dword ptr [rax]

<__do_global_dtors_aux>:
               	endbr64
               	cmp	byte ptr , 0x0 <completed.0>
               	jne	 <L0>
               	push	rbp
               	cmp	qword ptr , 0x0 <__libc_start_main+0x3728>
               	mov	rbp, rsp
               	je	 <L1>
               	mov	rdi, qword ptr  <__dso_handle>
               	call	 <__cxa_finalize@plt>
<L1>:
               	call	 <deregister_tm_clones>
               	mov	byte ptr , 0x1 <completed.0>
               	pop	rbp
               	ret
               	nop	dword ptr [rax]
<L0>:
               	ret
               	nop	dword ptr [rax]

<frame_dummy>:
               	endbr64
               	jmp	 <register_tm_clones>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.DynamicArray>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW12DynamicArray__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW12DynamicArray__in_chrg>
               	jmp	 <initializer for module Std>
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

<initializer for module Evaluation.Replication.Cube>:
<initializer for module Evaluation.Replication.Cuboid>:
<initializer for module Evaluation.Replication.Square>:
<initializer for module Evaluation.Replication.Rectangle>:
<initializer for module Std>:
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

<initializer for module Evaluation.Dependency.PseudoRandomSequence>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW20PseudoRandomSequence__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW20PseudoRandomSequence__in_chrg>
               	call	 <initializer for module Meta.Math.Random>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Math.Random>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	jmp	 <initializer for module Std>
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

<initializer for module Evaluation.Replication.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW6Circle__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
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

<initializer for module Evaluation.Dependency.PiFraction>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW10PiFraction__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW10PiFraction__in_chrg>
               	jmp	 <initializer for module Std>
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

<initializer for module Evaluation.Replication.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW7Ellipse__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
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

<initializer for module Evaluation.Replication.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW8Triangle__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.Fraction>
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

<initializer for module Evaluation.Dependency.Fraction>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW8Fraction__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW8Fraction__in_chrg>
               	jmp	 <initializer for module Std>
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

<initializer for module Evaluation.Replication.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW7Pyramid__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.Fraction>
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

<initializer for module Evaluation.Replication.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW6Sphere__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
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

<initializer for module Evaluation.Replication.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW8Cylinder__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
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

<initializer for module Evaluation.Replication.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW4Cone__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
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

<initializer for module Evaluation.Replication.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW9Ellipsoid__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
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

<initializer for module Evaluation.Replication.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW4Head__in_chrg>
               	jmp	 <initializer for module Evaluation.Replication.Sphere>
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

<_GLOBAL__sub_I_Replication.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Evaluation.Replication.Circle>
               	call	 <initializer for module Evaluation.Replication.Ellipse>
               	call	 <initializer for module Std>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.Replication.Triangle>
               	call	 <initializer for module Std>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.Replication.Pyramid>
               	call	 <initializer for module Evaluation.Replication.Sphere>
               	call	 <initializer for module Evaluation.Replication.Cylinder>
               	call	 <initializer for module Evaluation.Replication.Cone>
               	call	 <initializer for module Evaluation.Replication.Ellipsoid>
               	call	 <initializer for module Evaluation.Replication.Head>
               	pop	rax
               	jmp	 <initializer for module Std>
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	push	rax
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r15d, byte ptr [rcx]
               	movzx	edx, byte ptr [rcx + 0x1]
               	add	r15d, -0x30
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr [rax + rax]
<L1>:
               	lea	esi, [r15 + 4*r15]
               	movsx	edx, dl
               	lea	r15d, [rdx + 2*rsi - 0x30]
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	r14d, byte ptr [rax]
               	movzx	ecx, byte ptr [rax + 0x1]
               	add	r14d, -0x30
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	word ptr [rax + rax]
<L3>:
               	lea	edx, [r14 + 4*r14]
               	movsx	ecx, cl
               	lea	r14d, [rcx + 2*rdx - 0x30]
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	mov	rsi, qword ptr  <__libc_start_main+0x3730>
               	movsxd	r12, r14d
               	lea	rax, [8*r12]
               	lea	rdi, [rax + 8*rax]
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	rbx, rax
               	test	r12d, r12d
               	je	 <L4>
               	movsxd	rdx, r15d
               	movabs	rax, -0x255992d382208bc1
               	movabs	rdi, -0x40a7b892e31b1a47
               	movabs	r8, -0x6b2fb644ecceee15
               	vxorps	xmm0, xmm0, xmm0
               	lea	r13,  <Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>
               	add	rax, rdx
               	mov	r11, rdx
               	mov	rcx, rax
               	shr	r11, 0x1e
               	shr	rcx, 0x1e
               	xor	r11, rdx
               	xor	rcx, rax
               	imul	r11, rdi
               	imul	rcx, rdi
               	mov	rsi, rcx
               	shr	rsi, 0x1b
               	xor	rsi, rcx
               	movabs	rcx, 0x3c6ef372fe94f82a
               	add	rcx, rdx
               	imul	rsi, r8
               	mov	r9, rcx
               	shr	r9, 0x1e
               	xor	r9, rcx
               	imul	r9, rdi
               	mov	rax, rsi
               	shr	rax, 0x1f
               	xor	rax, rsi
               	movabs	rsi, -0x61c8864680b583eb
               	add	rsi, rdx
               	mov	rdx, r11
               	mov	r10, r9
               	shr	rdx, 0x1b
               	shr	r10, 0x1b
               	xor	rdx, r11
               	lea	r11,  <Bodies3D::ComputeVolumeCone@Evaluation.Replication.Cone(void const*)>
               	xor	r10, r9
               	mov	r9, rsi
               	imul	rdx, r8
               	shr	r9, 0x1e
               	imul	r10, r8
               	xor	r9, rsi
               	imul	r9, rdi
               	mov	rdi, rdx
               	mov	rcx, r10
               	shr	rdi, 0x1f
               	shr	rcx, 0x1f
               	xor	rdi, rdx
               	mov	r15, r9
               	xor	rcx, r10
               	lea	r10,  <__libc_start_main+0x838>
               	shr	r15, 0x1b
               	xor	r15, r9
               	movabs	r9, 0x4ec4ec4ec4ec4ec5
               	imul	r15, r8
               	xor	r8d, r8d
               	mov	rsi, r15
               	shr	rsi, 0x1f
               	xor	rsi, r15
               	lea	r15,  <Bodies3D::ComputeVolumeEllipsoid@Evaluation.Replication.Ellipsoid(void const*)>
<L13>:
               	lea	rdx, [rsi + 4*rsi]
               	rorx	rdx, rdx, 0x39
               	lea	rdx, [rdx + 8*rdx]
               	mulx	r12, r12, r9
               	shr	r12, 0x2
               	lea	rbp, [r12 + 2*r12]
               	lea	r12, [r12 + 4*rbp]
               	sub	rdx, r12
               	cmp	rdx, 0xc
               	ja	 <L5>
               	movsxd	rdx, dword ptr [r10 + 4*rdx]
               	add	rdx, r10
               	jmp	rdx
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>
               	jmp	 <L6>
               	lea	rdx, [r8 + 8*r8]
               	mov	qword ptr [rbx + 8*rdx], r15
               	jmp	 <L7>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <Bodies3D::ComputeVolumeTriangle@Evaluation.Replication.Triangle(void const*)>
               	jmp	 <L8>
               	lea	rdx, [r8 + 8*r8]
               	mov	qword ptr [rbx + 8*rdx], r13
               	vmovups	ymmword ptr [rbx + 8*rdx + 0x8], ymm0
               	vmovups	ymmword ptr [rbx + 8*rdx + 0x28], ymm0
               	jmp	 <L9>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <Bodies3D::ComputeVolumeCylinder@Evaluation.Replication.Cylinder(void const*)>
               	jmp	 <L8>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <Bodies3D::ComputeVolumeRectangle@Evaluation.Replication.Rectangle(void const*)>
               	jmp	 <L8>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <Bodies3D::ComputeVolumeSquare@Evaluation.Replication.Square(void const*)>
               	jmp	 <L6>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <Bodies3D::ComputeVolumePyramid@Evaluation.Replication.Pyramid(void const*)>
               	jmp	 <L10>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <Bodies3D::ComputeVolumeEllipse@Evaluation.Replication.Ellipse(void const*)>
<L8>:
               	mov	qword ptr [rbx + 8*rdx], r12
<L12>:
               	vmovups	ymmword ptr [rbx + 8*rdx + 0x8], ymm0
               	mov	dword ptr [rbx + 8*rdx + 0x28], 0x0
               	jmp	 <L9>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <Bodies3D::ComputeVolumeCube@Evaluation.Replication.Cube(void const*)>
<L6>:
               	mov	qword ptr [rbx + 8*rdx], r12
               	jmp	 <L11>
               	lea	rdx, [r8 + 8*r8]
               	lea	r12,  <Bodies3D::ComputeVolumeCuboid@Evaluation.Replication.Cuboid(void const*)>
<L10>:
               	mov	qword ptr [rbx + 8*rdx], r12
<L7>:
               	vmovups	ymmword ptr [rbx + 8*rdx + 0x8], ymm0
               	mov	qword ptr [rbx + 8*rdx + 0x28], 0x0
               	jmp	 <L9>
               	lea	rdx, [r8 + 8*r8]
               	mov	qword ptr [rbx + 8*rdx], r11
               	jmp	 <L12>
               	lea	rdx, [r8 + 8*r8]
               	mov	qword ptr [rbx + 8*rdx], r13
<L11>:
               	vmovups	ymmword ptr [rbx + 8*rdx + 0x8], ymm0
<L9>:
               	inc	r8
<L5>:
               	mov	rdx, rsi
               	xor	rcx, rdi
               	xor	rax, rsi
               	shl	rdx, 0x11
               	xor	rsi, rcx
               	xor	rdi, rax
               	rorx	rax, rax, 0x13
               	xor	rcx, rdx
               	dec	r14d
               	jne	 <L13>
               	shl	r8, 0x3
               	lea	r14, [r8 + 8*r8]
               	test	r14, r14
               	je	 <L4>
               	add	r14, rbx
               	vxorps	xmm0, xmm0, xmm0
               	mov	r15, rbx
               	nop	word ptr cs:[rax + rax]
<L14>:
               	lea	rdi, [r15 + 0x8]
               	vmovss	dword ptr [rsp + 0x4], xmm0
               	vzeroupper
               	call	qword ptr [r15]
               	vmovss	xmm1, dword ptr [rsp + 0x4] # xmm1 = mem[0],zero,zero,zero
               	add	r15, 0x48
               	vaddss	xmm1, xmm1, xmm0
               	vmovss	dword ptr [rsp + 0x4], xmm1
               	vmovss	xmm0, dword ptr [rsp + 0x4] # xmm0 = mem[0],zero,zero,zero
               	cmp	r15, r14
               	jne	 <L14>
               	vcvttss2si	ebp, xmm0
               	test	rbx, rbx
               	jne	 <L15>
               	jmp	 <L16>
<L4>:
               	xor	ebp, ebp
               	test	rbx, rbx
               	je	 <L16>
<L15>:
               	mov	rdi, rbx
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L16>:
               	mov	eax, ebp
               	add	rsp, 0x8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret

<Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, dword ptr  <__libc_start_main+0x870>
               	vmulss	xmm0, xmm0, xmm1
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

<Bodies3D::ComputeVolumeEllipse@Evaluation.Replication.Ellipse(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x870>
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

<Bodies3D::ComputeVolumeRectangle@Evaluation.Replication.Rectangle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::ComputeVolumeSquare@Evaluation.Replication.Square(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::ComputeVolumeTriangle@Evaluation.Replication.Triangle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x878>
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

<Bodies3D::ComputeVolumeCube@Evaluation.Replication.Cube(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm0, xmm1
               	ret
               	int3
               	int3

<Bodies3D::ComputeVolumeCuboid@Evaluation.Replication.Cuboid(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

<Bodies3D::ComputeVolumePyramid@Evaluation.Replication.Pyramid(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x874>
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

<Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, dword ptr  <__libc_start_main+0x87c>
               	vmulss	xmm1, xmm0, xmm1
               	vmulss	xmm0, xmm0, xmm1
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

<Bodies3D::ComputeVolumeCylinder@Evaluation.Replication.Cylinder(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, dword ptr  <__libc_start_main+0x870>
               	vmulss	xmm0, xmm0, xmm1
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

<Bodies3D::ComputeVolumeCone@Evaluation.Replication.Cone(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, dword ptr  <__libc_start_main+0x86c>
               	vmulss	xmm0, xmm0, xmm1
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

<Bodies3D::ComputeVolumeEllipsoid@Evaluation.Replication.Ellipsoid(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x87c>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x3710>
               	test	rax, rax
               	je	 <L0>
               	call	rax
<L0>:
               	add	rsp, 0x8
               	ret

Disassembly of section .fini:

<_fini>:
               	endbr64
               	sub	rsp, 0x8
               	add	rsp, 0x8
               	ret

Disassembly of section .plt:

<.plt>:
               	push	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x8>
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x10>
               	nop	dword ptr [rax]

<__cxa_finalize@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x18>
               	push	0x0
               	jmp	 <.plt>

<_ZdaPv@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x20>
               	push	0x1
               	jmp	 <.plt>

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>
