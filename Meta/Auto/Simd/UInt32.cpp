export module Meta.Auto.Simd.UInt32;

export import Meta.Auto.Simd.Tag;

import Meta.Auto.Simd.Int32;

import std;
import Std;

export namespace
	Meta::Auto
{
	template
		<	::std::size_t
				t_vSize
		>
	struct
		Var
		<	::std::uint32_t
				[	t_vSize
				]
		,	SimdTag
		>
	{
		vec<::std::uint32_t, t_vSize>
			m_vRaw
		;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Var
					i_vLeft
			,	Simd<int[t_vSize]>
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
	};
}
