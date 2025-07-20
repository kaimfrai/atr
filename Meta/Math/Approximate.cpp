export module Meta.Math.Approximate;

import std;

export namespace
	Meta::Math
{
	template
		<	::std::floating_point
				t_tFloat
		>
	[[nodiscard]]
	auto constexpr inline
	(	Approximate
	)	(	t_tFloat
				i_vLeft
		,	t_tFloat
				i_vRight
		,	t_tFloat
				i_vEpsilon
			=	::std::numeric_limits
				<	t_tFloat
				>
			::	epsilon()
		)
		noexcept
	->	bool
	{
		auto const
			fCompare
		=	[	i_vEpsilon
			]	(	t_tFloat
						i_vMax
				,	t_tFloat
						i_vMin
				)
			{	auto const
					vDifference
				=	i_vMax
				-	i_vMin
				;

				// if min is negative, -min will always be greater than max
				// otherwise min is positive so max is also positive
				auto const
					vMaxAbs
				=	(	-i_vMin
					>	i_vMax
					)
				?	-i_vMin
				:	i_vMax
				;

				return
					vDifference
				<=	(	vMaxAbs
					*	i_vEpsilon
					)
				;
			}
		;

		auto const
			vCompare
		=	i_vLeft
		<=>	i_vRight
		;

		if	(::std::is_lt(vCompare))
			return
			fCompare
			(	i_vRight
			,	i_vLeft
			);
		if	(::std::is_gt(vCompare))
			return
			fCompare
			(	i_vLeft
			,	i_vRight
			);

		return
		::std::is_eq
		(	vCompare
		);
	}
}
