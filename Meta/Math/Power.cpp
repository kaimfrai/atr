export module Meta.Math.Power;

import Meta.Size;

export namespace
	Meta::Math
{
	[[nodiscard]]
	auto constexpr
	(	Power
	)	(	USize
				i_nBase
		,	USize
				i_nExponent
		)
		noexcept
	->	USize
	{
		if	(	i_nExponent
			==	0uz
			)
		{	return
				1uz
			;
		}
		else
		if	(	i_nExponent
			==	1uz
			)
		{	return
				i_nBase
			;
		}
		else
		{	auto const
				nUnevenPower
			=	Power
				(	i_nBase
				,	i_nExponent % 2uz
				)
			;
			auto const
				nHalfPower
			=	Power
				(	i_nBase
				,	i_nExponent / 2uz
				)
			;
			return
				nUnevenPower
			*	nHalfPower
			*	nHalfPower
			;
		}
	}
}
