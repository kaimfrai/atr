export module Meta.Auto.Simd.UInt64;

export import Meta.Auto.Simd.Tag;
import Meta.Auto.Array.Bounded;

import std;

export namespace
	Meta::Auto
{
	template
		<>
	struct
		Var
		<	::std::uint64_t
				[	2uz
				]
		,	SimdTag
		>
	{
		using
			RawType
		=	vec<::std::uint64_t, 2>
		;

		RawType
			m_vRaw
		;

		explicit(false) constexpr inline
		(	Var
		)	()
			noexcept
		=	default
		;

		explicit(false) inline
		(	Var
		)	(	RawType
					i_vInit
			)
			noexcept
		:	m_vRaw
			{	i_vInit
			}
		{}

		explicit(true) inline
		(	Var
		)	(	Var<::std::uint64_t[2uz]>
					i_vInit
			)
			noexcept
		:	m_vRaw
			{	::std::bit_cast<RawType>
				(	i_vInit
				)
			}
		{}

		explicit(true) inline
		(	Var
		)	(	::std::uint64_t
					i_vInit
			)
			noexcept
		:	Var
			{	Var<::std::uint64_t[2uz]>
				{	i_vInit
				,	i_vInit
				}
			}
		{}

		auto inline
		(	operator+=
		)	(	Var
					i_vIncrement
			)	&
			noexcept
		->	Var&
		{
				m_vRaw
			=	m_vRaw
			+	i_vIncrement
				.	m_vRaw
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
		->	Var&
		{	return
			*	this
			+=	Var
				{	i_vIncrement
				}
			;
		}

		[[nodiscard]]
		auto friend inline
		(	operator>>
		)	(	Var
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Var
		{	return
			Var
			{	i_vLeft
				.	m_vRaw
			>> i_vRight
			};
		}

		[[nodiscard]]
		auto friend inline
		(	operator<<
		)	(	Var
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Var
		{	return
			Var
			{	i_vLeft
				.	m_vRaw
			<<	i_vRight
			};
		}

		[[nodiscard]]
		auto friend inline
		(	operator xor
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
		{	return
			Var
			{	i_vLeft
				.	m_vRaw
			xor	i_vRight
				.	m_vRaw
			};
		}

		auto inline
		(	operator^=
		)	(	Var
					i_vRight
			)	&
			noexcept
		->	Var&
		{	return
			*	this
			=	*	this
			xor	i_vRight
			;
		}

		[[nodiscard]]
		auto friend inline
		(	operator*
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
		{	return
			Var
			{	i_vLeft
				.	m_vRaw
			*	i_vRight
				.	m_vRaw
			};
		}

		[[nodiscard]]
		auto friend inline
		(	operator*
		)	(	Var
					i_vLeft
			,	::std::uint64_t
					i_vRight
			)
			noexcept
		->	Var
		{	return
				i_vLeft
			*	Var
				{	i_vRight
				}
			;
		}

		[[nodiscard]]
		auto friend inline
		(	rotl
		)	(	Var
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Var
		{
			auto
				vArray
			=	::std::bit_cast<Var<::std::uint64_t[2uz]>>
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
			Var
			{	vArray
			};
		}
	};
}
