export module Meta.Math.Congruent;

import Meta.Math.Abs;
import Meta.Size;

export namespace
	Meta::Math
{
	[[nodiscard]]
	auto constexpr inline
	(	Congruent
	)	(	SSize
				i_nNumerator
		,	USize
				i_nRingSize
		)
		noexcept
	->	USize
	{
		bool const
			bNegative
		=	(	i_nNumerator
			<	0z
			)
		;

		USize const
			nPositiveIndex
		=	Abs
			(	i_nNumerator
			)
		;
		USize const
			nRemainder
		=	(	nPositiveIndex
			%	i_nRingSize
			)
		;

		return
		(	(	bNegative
			and (	nRemainder
				!=	0uz
				)
			)
		?	(	i_nRingSize
			-	nRemainder
			)
		:	nRemainder
		);
	}
}
