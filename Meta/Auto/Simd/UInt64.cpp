export module Meta.Auto.Simd.UInt64;

export import Meta.Auto.Simd.Tag;
import Meta.Auto.Array.Bounded;

import Std;

export namespace
	Meta
{
	template
		<>
	struct
		SimdMask
		<	::std::uint64_t
				[	2uz
				]
		>
	{
		__m128i
			m_vRaw
		;
	};

	template
		<>
	struct
		Auto
		<	::std::uint64_t
				[	2uz
				]
		,	(SimdTag)
		>
	{
		__m128i
			m_vRaw
		;

		explicit(false) constexpr inline
		(	Auto
		)	()
			noexcept
		=	default
		;

		explicit(false) inline
		(	Auto
		)	(	__m128i
					i_vInit
			)
			noexcept
		:	m_vRaw
			{	i_vInit
			}
		{}

		explicit(true) inline
		(	Auto
		)	(	Auto<::std::uint64_t[2uz]>
					i_vInit
			)
			noexcept
		:	m_vRaw
			{	::std::bit_cast<__m128i>
				(	i_vInit
				)
			}
		{}

		explicit(true) inline
		(	Auto
		)	(	::std::uint64_t
					i_vInit
			)
			noexcept
		:	Auto
			{	Auto<::std::uint64_t[2uz]>
				{	i_vInit
				,	i_vInit
				}
			}
		{}

		auto inline
		(	operator+=
		)	(	Auto
					i_vIncrement
			)	&
			noexcept
		->	Auto&
		{
				m_vRaw
			=	_mm_add_epi64
				(	m_vRaw
				,	i_vIncrement
					.	m_vRaw
				)
			;
			return
			*	this
			;
		}

		auto inline
		(	operator+=
		)	(	::std::uint64_t
					i_vIncrement
			)	&
			noexcept
		->	Auto&
		{	return
			*	this
			+=	Auto
				{	i_vIncrement
				}
			;
		}

		[[nodiscard]]
		auto friend inline
		(	operator>>
		)	(	Auto
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Auto
		{	return
			Auto
			{	_mm_srli_epi64
				(	i_vLeft
					.	m_vRaw
				,	i_vRight
				)
			};
		}

		[[nodiscard]]
		auto friend inline
		(	operator<<
		)	(	Auto
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Auto
		{	return
			Auto
			{	_mm_slli_epi64
				(	i_vLeft
					.	m_vRaw
				,	i_vRight
				)
			};
		}

		[[nodiscard]]
		auto friend inline
		(	operator xor
		)	(	Auto
					i_vLeft
			,	Auto
					i_vRight
			)
			noexcept
		->	Auto
		{	return
			Auto
			{	_mm_xor_si128
				(	i_vLeft
					.	m_vRaw
				,	i_vRight
					.	m_vRaw
				)
			};
		}

		auto inline
		(	operator^=
		)	(	Auto
					i_vRight
			)	&
			noexcept
		->	Auto&
		{	return
			*	this
			=	*	this
			xor	i_vRight
			;
		}

		[[nodiscard]]
		auto friend inline
		(	operator*
		)	(	Auto
					i_vLeft
			,	Auto
					i_vRight
			)
			noexcept
		->	Auto
		{	return
			Auto
			{	i_vLeft
				.	m_vRaw
			*	i_vRight
				.	m_vRaw
			};
		}

		[[nodiscard]]
		auto friend inline
		(	operator*
		)	(	Auto
					i_vLeft
			,	::std::uint64_t
					i_vRight
			)
			noexcept
		->	Auto
		{	return
				i_vLeft
			*	Auto
				{	i_vRight
				}
			;
		}

		[[nodiscard]]
		auto friend inline
		(	rotl
		)	(	Auto
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Auto
		{
			auto
				vArray
			=	::std::bit_cast<Auto<::std::uint64_t[2uz]>>
				(	i_vLeft
				)
			;
				vArray
				[	0uz
				]
			=	::std::rotl
				(	vArray
					[	0uz
					]
				,	i_vRight
				)
			;	vArray
				[	1uz
				]
			=	::std::rotl
				(	vArray
					[	1uz
					]
				,	i_vRight
				)
			;

			return
			Auto
			{	vArray
			};
		}
	};
}
