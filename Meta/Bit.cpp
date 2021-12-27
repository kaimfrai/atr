export module Meta.Bit;

export import Std.Bit;
export import Std.Limits;

export import Meta.Integer;

namespace
	Meta
{
	export template
		<	typename
				t_tAny
		>
	USize constexpr inline
		BitSize_Of
	=	CHAR_BIT
	*	sizeof(t_tAny)
	;

	export auto constexpr
	(	TestBit
	)	(	USize
				i_nBitField
		,	USize
				i_nIndex
		)
	->	bool
	{
		if	(i_nIndex >= BitSize_Of<USize>)
			return false;

		return i_nBitField bitand (1uz << i_nIndex);
	}

	export auto constexpr
	(	SetOneBits
	)	(	USize
				i_nBitCount
		)
	->	USize
	{
		auto constexpr
			nMaxBits
		=	BitSize_Of<USize>
		;
		if	(i_nBitCount > nMaxBits)
			throw "Attempted to set more bits than exist in USize!";

		return
			compl 0uz
		>>	(	nMaxBits
			-	i_nBitCount
			)
		;
	}

	export auto constexpr
	(	CountOneBits
	)	(	USize
				i_nBitField
		)
	->	USize
	{	return
		static_cast<USize>
		(	::std::popcount
			(	i_nBitField
			)
		);
	}

	export auto constexpr
	(	CountLowerZeroBits
	)	(	USize
				i_nBitField
		)
	->	USize
	{	return
		static_cast<USize>
		(	::std::countr_zero
			(	i_nBitField
			)
		);
	}

	export auto constexpr
	(	CountUpperZeroBits
	)	(	USize
				i_nBitField
		)
	->	USize
	{	return
		static_cast<USize>
		(	::std::countl_zero
			(	i_nBitField
			)
		);
	}

	export auto constexpr
	(	GetIndexOfNthOneBit
	)	(	USize
				i_nBitField
		,	USize
				i_nIndex
		)
	->	USize
	{
		USize
			nIndexedOneBit
		=	0uz
		;
		USize const
			nLastOneBitIndex
		=	::std::bit_ceil
			(	::std::bit_width
				(	i_nBitField
				)
			)
		;
		for	(	USize
					nMiddle
				=	nLastOneBitIndex
				/	2uz
			;	nMiddle
			;		nMiddle
				/=	2uz
			)
		{
			USize const
				nLowerBits
			=	i_nBitField
			bitand
				SetOneBits(nMiddle)
			;
			USize const
				nLowerBitCount
			=	CountOneBits
				(	nLowerBits
				)
			;

			if	(i_nIndex >= nLowerBitCount)
			{
				i_nBitField >>= nMiddle;
				i_nIndex -= nLowerBitCount;
				nIndexedOneBit += nMiddle;
			}
			else
				i_nBitField = nLowerBits;
		}
		return nIndexedOneBit;
	}
}
