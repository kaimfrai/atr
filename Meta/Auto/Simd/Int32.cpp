export module Meta.Auto.Simd.Int32;

import Meta.Auto.Simd.Tag;
import Meta.IndexPack;

import std;

using ::Meta::IndexPack;

export namespace
	Meta::Auto
{
	template
		<	::std::size_t
				t_vSize
		>
	struct
		Var
		<	::std::int32_t
				[	t_vSize
				]
		,	SimdTag
		>
	{
		vec<::std::int32_t, t_vSize>
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
				=	i_vLeft
					.	m_vRaw
				<<	i_vRight
					.	m_vRaw
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
				=	i_vLeft
					.	m_vRaw
				<<	i_vRight
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	HighestBit
		)	(	Var
					i_vSource
			)
			noexcept
		->	SimdMask<t_vSize>
		{
			auto const
			&	[	...
					rpElement
				]
			=	i_vSource
				.	m_vRaw
			;
			return
			::std::bit_cast<SimdMask<t_vSize>>
			(	vec<bool, t_vSize>
				{
					static_cast<bool>
					(	(	rpElement
						>>	31
						)
					)
					...
				}
			);
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
		->	SimdMask<t_vSize>
		{	return
			HighestBit
			(	Var
				{	i_vLeft
					.	m_vRaw
				==	i_vRight
					.	m_vRaw
				}
			);
		}
	};
}
