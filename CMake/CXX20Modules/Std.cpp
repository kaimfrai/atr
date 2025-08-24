export module Std;

import std;

export
{
	template
		<	typename
				t_tElement
		,	::std::size_t
				t_vVectorSize
		>
	using
		vec
		[[clang::ext_vector_type(t_vVectorSize)]]
	=	t_tElement
	;
	using __mmask8 = unsigned char;
	using __mmask16 = unsigned short;
	using __mmask32 = unsigned int;
	using __mmask64 = unsigned long long;
}

export namespace
	Std
{
	template
		<	typename
				t_tTarget
		>
	struct
		SimdTargetTag
	{};

	template
		<	typename
				t_tTarget
		>
	SimdTargetTag<t_tTarget> constexpr inline
		SimdTarget
	{};

	template
		<	typename
				t_tTarget
		>
	using
		SimdTargetTag256
	=	SimdTargetTag
		<	t_tTarget
				[	sizeof(vec<float, 8>)
				/	sizeof(t_tTarget)
				]
		>
	;

	template
		<	typename
				t_tTarget
		>
	using
		SimdTargetTag512
	=	SimdTargetTag
		<	t_tTarget
				[	sizeof(vec<float, 16>)
				/	sizeof(t_tTarget)
				]
		>
	;

	template
		<	typename
				t_tSource
		>
	struct
		SimdOp
	{};

	template
		<	typename
				t_tObject
		,	::std::size_t
				t_vAlign
			=	1uz
		>
	requires
		(	t_vAlign
		>	0uz
		)
	struct
		AlignedPointer
	{
		t_tObject
		*	m_aObject
		;

		template
			<	typename
					t_tTarget
			>
		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator t_tTarget*
		)	()
			noexcept
		{
			if	constexpr
				(	::std::is_void_v
					<	t_tObject
					>
				)
			{	return
				::std::assume_aligned
				<	t_vAlign
				>(	static_cast<t_tTarget*>
					(	m_aObject
					)
				);
			}
			else
			{	return
				::std::assume_aligned
				<	t_vAlign
				*	alignof(t_tObject)
				>(	static_cast<t_tTarget*>
					(	m_aObject
					)
				);
			}
		}
	};

	template
		<>
	struct
		SimdOp
		<	float
		>
	{
		template
			<	::std::size_t
					t_vAlign
			>
		[[nodiscard]]
		auto static constexpr inline
		(	MaskedLoad
		)	(	__mmask8
					i_vMask
			,	AlignedPointer<void const, t_vAlign>
					i_aData
			)
			noexcept
		->	vec<float, 8>
		{
			if	constexpr
				(	t_vAlign
				>=	alignof(vec<float, 8>)
				)
			{	return
				__builtin_ia32_loadaps256_mask
				(	::std::bit_cast<vec<float, 8> const*>(i_aData)
				,	vec<float, 8>{}
				,	::std::bit_cast<unsigned char>(i_vMask)
				);
			}
			else
			{	return
				__builtin_ia32_loadups256_mask
				(	::std::bit_cast<vec<float, 8> const*>(i_aData)
				,   vec<float, 8>{}
				,	i_vMask
				);
			}
		}

		template
			<	::std::size_t
					t_vAlign
			>
		[[nodiscard]]
		auto static constexpr inline
		(	MaskedLoad
		)	(	__mmask16
					i_vMask
			,	AlignedPointer<void const, t_vAlign>
					i_aData
			)
			noexcept
		->	vec<float, 16>
		{
			if	constexpr
				(	t_vAlign
				>=	alignof(vec<float, 16>)
				)
			{	return
				__builtin_ia32_loadaps512_mask
				(	::std::bit_cast<vec<float, 16> const*>(i_aData)
				,	vec<float, 16>{}
				,	i_vMask
				);
			}
			else
			{	return
				__builtin_ia32_loadups512_mask
				(	static_cast<float const*>(i_aData)
				,	vec<float, 16>{}
				,	i_vMask
				);
			}
		}
	};
}
