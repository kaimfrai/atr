export module Meta.Auto.Simd.UInt32;

export import Meta.Auto.Simd.Tag;

import Std;

using
	SimdOp
=	::Std::SimdOp
	<	::std::uint32_t
	>
;

export namespace
	Meta::Auto
{
	template
		<>
	struct
		SimdMask
		<	::std::uint32_t
				[	8uz
				]
		>
	{
		__m256i
			m_vRaw
		;
	};

	template
		<>
	struct
		Var
		<	::std::uint32_t
				[	8uz
				]
		,	SimdTag
		>
	{
		__m256i
			m_vRaw
		;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
		{	return
			{	.	m_vRaw
				=	::SimdOp::BitShiftLeft
					(	i_vLeft
						.	m_vRaw
					,	i_vRight
						.	m_vRaw
					)
			};
		}
	};

	template
		<>
	struct
		SimdMask
		<	::std::uint32_t
				[	16uz
				]
		>
	{
		__m256i
			m_vRaw
			[	2uz
			]
		;
	};

	template
		<>
	struct
		Var
		<	::std::uint32_t
				[	16uz
				]
		,	SimdTag
		>
	{
		__m256i
			m_vRaw
			[	2uz
			]
		;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
		{	return
			{	.	m_vRaw
				=	{	::SimdOp::BitShiftLeft
						(	i_vLeft
							.	m_vRaw
								[	0uz
								]
						,	i_vRight
							.	m_vRaw
								[	0uz
								]
						)
					,	::SimdOp::BitShiftLeft
						(	i_vLeft
							.	m_vRaw
								[	1uz
								]
						,	i_vRight
							.	m_vRaw
								[	1uz
								]
						)
					}
			};
		}
	};
}
