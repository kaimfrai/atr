export module Meta.Auto.Simd.UInt32;

export import Meta.Auto.Simd.Tag;

import Meta.Auto.Simd.Int32;
import Meta.Size;

export namespace
	Meta::Auto
{
	template
		<	USize
				t_vSize
		>
	struct
		Var
		<	unsigned
				[	t_vSize
				]
		,	SimdTag
		>
	{
		vec<unsigned, t_vSize>
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
