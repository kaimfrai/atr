export module Meta.Auto.Simd.UInt64;

export import Meta.Auto.Simd.Tag;
import Meta.Auto.Array.Bounded;
import Meta.Auto.Simd.Fill;
import Meta.IndexPack;
import Meta.Size;

import std;

using ::Meta::IndexPack;

export namespace
	Meta::Auto
{
	template
		<	USize
				t_vSize
		>
	struct
		Var
		<	::std::uint64_t
				[	t_vSize
				]
		,	SimdTag
		>
	{
		using
			RawType
		=	vec<::std::uint64_t, t_vSize>
		;

		RawType
			m_vRaw
		;

		auto constexpr inline
		(	operator+=
		)	(	Var
					i_vIncrement
			)	&
			noexcept
		->	Var&
		{
				m_vRaw
			+=	i_vIncrement
				.	m_vRaw
			;
			return
			*	this
			;
		}

		auto constexpr inline
		(	operator+=
		)	(	::std::uint64_t
					i_vIncrement
			)	&
			noexcept
		->	Var&
		{	return
			*	this
			+=	SimdFill<::std::uint64_t[t_vSize]>
				(	i_vIncrement
				)
			;
		}

		[[nodiscard]]
		auto constexpr friend inline
		(	operator>>
		)	(	Var
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Var
		{	return
			{	i_vLeft
				.	m_vRaw
			>> i_vRight
			};
		}

		[[nodiscard]]
		auto constexpr friend inline
		(	operator<<
		)	(	Var
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Var
		{	return
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
			{	i_vLeft
				.	m_vRaw
			xor	i_vRight
				.	m_vRaw
			};
		}

		auto constexpr inline
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
		auto constexpr friend inline
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
		auto constexpr friend inline
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
			*	SimdFill<::std::uint64_t[t_vSize]>
				(	i_vRight
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	rotl
		)	(	Var
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Var
		{
			auto const
			&	[	...
					rpElement
				]
			=	i_vLeft
				.	m_vRaw
			;
			return
			{	.	m_vRaw
				{	::std::rotl
					(	rpElement
					,	i_vRight
					)
					...
				}
			};
		}
	};
}
