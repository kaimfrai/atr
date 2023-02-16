export module Meta.Math.Approximate;

import Std;

export namespace
	Meta::Math
{
	template
		<	::std::floating_point
				t_tFloat
		>
	[[nodiscard]]
	auto constexpr
	(	Approximate
	)	(	t_tFloat
				i_nLeft
		,	t_tFloat
				i_nRight
		,	t_tFloat
				i_nEpsilon
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
		=	[	i_nEpsilon
			]	(	t_tFloat
						i_nMax
				,	t_tFloat
						i_nMin
				)
			{	auto const
					nDifference
				=	i_nMax
				-	i_nMin
				;

				// if min is negative, -min will always be greater than max
				// otherwise min is positive so max is also positive
				auto const
					nMaxAbs
				=	(	-i_nMin
					>	i_nMax
					)
				?	-i_nMin
				:	i_nMax
				;

				return
					nDifference
				<=	(	nMaxAbs
					*	i_nEpsilon
					)
				;
			}
		;

		auto const
			vCompare
		=	i_nLeft
		<=>	i_nRight
		;

		if	(::std::is_lt(vCompare))
			return
			fCompare
			(	i_nRight
			,	i_nLeft
			);
		if	(::std::is_gt(vCompare))
			return
			fCompare
			(	i_nLeft
			,	i_nRight
			);

		return
		::std::is_eq
		(	vCompare
		);
	}
}
