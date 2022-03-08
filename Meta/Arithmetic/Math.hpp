export module Meta.Arithmetic:Math;

export import :Integer;

export namespace
	Meta::Arithmetic
{
	auto constexpr
	(	Power
	)	(	USize
				i_nBase
		,	USize
				i_nExponent
		)
	->	USize
	{
		if	(	i_nExponent
			==	0ull
			)
			return 1ull;
		else
		if	(	i_nExponent
			==	1ul
			)
			return
				i_nBase
			;
		else
		{
			auto const
				nUnevenPower
			=	Power
				(	i_nBase
				,	i_nExponent % 2ull
				)
			;
			auto const
				nHalfPower
			=	Power
				(	i_nBase
				,	i_nExponent / 2ull
				)
			;
			return
				nUnevenPower
			*	nHalfPower
			*	nHalfPower
			;
		}
	}

	auto constexpr
	(	CongruentInteger
	)	(	SSize
				i_nNumerator
		,	USize
				i_nRingSize
		)
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
			?	(	static_cast<USize>
					(	-
						i_nNumerator
					)
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
