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
				i_vNumerator
		,	USize
				i_vRingSize
		)
		noexcept
	->	USize
	{
		bool const
			bNegative
		=	(	i_vNumerator
			<	0z
			)
		;

		USize const
			vPositiveIndex
		=	Abs
			(	i_vNumerator
			)
		;
		USize const
			vRemainder
		=	(	vPositiveIndex
			%	i_vRingSize
			)
		;

		return
		(	(	bNegative
			and (	vRemainder
				!=	0uz
				)
			)
		?	(	i_vRingSize
			-	vRemainder
			)
		:	vRemainder
		);
	}
}
