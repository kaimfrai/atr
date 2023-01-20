export module Meta.Math.Approximate;

import Meta.Math.Abs;

import Std;

export namespace
	Meta::Math
{
	[[nodiscard]]
	auto constexpr
	(	Approximate
	)	(	::std::floating_point auto
				i_nLeft
		,	decltype(i_nLeft)
				i_nRight
		)
		noexcept
	->	bool
	{
		auto const
			nAbsLeft
		=	Abs
			(	i_nLeft
			)
		;
		auto const
			nAbsRight
		=	Abs
			(	i_nRight
			)
		;

		auto const
		[	nAbsMin
		,	nAbsMax
		]=	::std::minmax
			(	nAbsLeft
			,	nAbsRight
			)
		;

		auto const
			nDifference
		=	nAbsMax
		-	nAbsMin
		;

		return
			nDifference
		<=	(	nAbsMin
			*	::std::numeric_limits
				<	decltype(i_nLeft)
				>
			::	epsilon()
			)
		;
	}
}
