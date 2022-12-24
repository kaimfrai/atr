export module Meta.Math.Congruent;

import Meta.Size;

export namespace
	Meta::Math
{
	[[nodiscard]]
	auto constexpr
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
		=	(	bNegative
			?	static_cast<USize>
				(	-
					i_nNumerator
				)
			:	static_cast<USize>
				(	i_nNumerator
				)
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