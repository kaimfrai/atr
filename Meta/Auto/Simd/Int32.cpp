export module Meta.Auto.Simd.Int32;

import Meta.Auto.Simd.Tag;

import std;
import Std;

using
	SimdOp
=	::Std::SimdOp
	<	::std::int32_t
	>
;

export namespace
	Meta::Auto
{
	template
		<>
	struct
		Var
		<	::std::int32_t
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

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Var
					i_vLeft
			,	int
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
					)
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	SimdMask<8uz>
		{	return
			{	.	m_vRaw
				=	::SimdOp::Equal
					(	i_vLeft
						.	m_vRaw
					,	i_vRight
						.	m_vRaw
					)
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	HighestBit
		)	(	Var
					i_vSource
			)
			noexcept
		->	SimdMask<8>
		{	return
			{	::SimdOp::HighestBit
				(	i_vSource
					.	m_vRaw
				)
			};
		}
	};

	template
		<>
	struct
		Var
		<	::std::int32_t
				[	16uz
				]
		,	SimdTag
		>
	{
		__m512i
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

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Var
					i_vLeft
			,	unsigned
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
					)
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	HighestBit
		)	(	Var
					i_vSource
			)
			noexcept
		->	SimdMask<16>
		{	return
			{	::SimdOp::HighestBit
				(	i_vSource
					.	m_vRaw
				)
			};
		}
	};
}
