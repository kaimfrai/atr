export module Meta.Auto.Simd.ArrayCeil;

import Meta.Auto.Simd.Tag;

import Std;

export namespace
	Meta
{
	template
		<	typename
			...	t_tpElement
		>
	[[nodiscard]]
	auto constexpr inline
	(	SimdArrayCeil
	)	(	t_tpElement const
			&
			...	i_rpElement
		)
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
			vTargetSize
		=	::std::bit_ceil
			(	sizeof...(i_rpElement)
			)
		;
		using
			tElement
		=	t_tpElement
			...	[	0
				]
		;
		tElement const
			vArray
			[	vTargetSize
			]
		{	i_rpElement
			...
		};

		return
		::std::bit_cast<Simd<tElement[vTargetSize]>>
		(	vArray
		);
	}
}
