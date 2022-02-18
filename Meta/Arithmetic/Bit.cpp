export module Meta.Arithmetic.Bit;

export import Std;
export import Meta.Integer;

export namespace
	Meta::Arithmetic
{
	auto constexpr
	(	TestBit
	)	(	USize
				i_nBitField
		,	USize
				i_nIndex
		)
	->	bool
	{
		if	(i_nIndex >= sizeof(USize) * BitsPerByte)
			return false;

		return i_nBitField bitand (1uz << i_nIndex);
	}

	auto constexpr
	(	SetOneBits
	)	(	USize
				i_nBitCount
		)
	->	USize
	{
		auto constexpr
			nMaxBits
		=	sizeof(USize) * BitsPerByte
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

	auto constexpr
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

	auto constexpr
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

	auto constexpr
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

	auto constexpr
	(	GetIndexOfNthOneBit
	)	(	USize
				i_nBitField
		,	USize
				i_nOneBitIndex
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
				nLowerOneBitCount
			=	CountOneBits
				(	nLowerBits
				)
			;

			if	(i_nOneBitIndex >= nLowerOneBitCount)
			{
				i_nBitField >>= nMiddle;
				i_nOneBitIndex -= nLowerOneBitCount;
				nIndexedOneBit += nMiddle;
			}
			else
				i_nBitField = nLowerBits;
		}
		return nIndexedOneBit;
	}
}