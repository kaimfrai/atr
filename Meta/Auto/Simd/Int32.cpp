export module Meta.Auto.Simd.Int32;

import Meta.Auto.Simd.Tag;
import Meta.IndexPack;
import Meta.Size;

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
		<	int
				[	t_vSize
				]
		,	SimdTag
		>
	{
		vec<int, t_vSize>
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
			{
				static_cast<bool>
				(	(	rpElement
					>>	31
					)
				)
				...
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
