export module Meta.Auto.Simd.ArrayCeil;

import Meta.Auto.Simd.Tag;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tFirst
		,	typename
			...	t_tpElement
		>
	[[nodiscard]]
	auto constexpr inline
	(	SimdArrayCeil
	)	(	t_tFirst const
			&	i_rFirst
		,	t_tpElement const
			&
			...	i_rpElement
		)
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
			vTargetSize
		=	::std::bit_ceil
			(	1uz
			+	sizeof...(i_rpElement)
			)
		;
		t_tFirst const
			vArray
			[	vTargetSize
			]
		{	i_rFirst
		,	i_rpElement
			...
		};

		return
		::std::bit_cast<Simd<t_tFirst[vTargetSize]>>
		(	vArray
		);
	}
}
