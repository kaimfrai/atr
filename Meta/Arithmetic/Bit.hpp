export module Meta.Arithmetic:Bit;

export import :Integer;
import Meta.Bit.ByteSize;
import Meta.Size;

import Std;

using ::Meta::USize;

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
		if	(i_nIndex >= sizeof(USize) * Bit::ByteSize)
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
		=	sizeof(USize) * Bit::ByteSize
		;
		if	(i_nBitCount > nMaxBits)
			((void)"Attempted to set more bits than exist in USize!", std::unreachable());

		return
			compl 0uz
		>>	(	nMaxBits
			-	i_nBitCount
			)
		;
	}

	auto constexpr
	(	BitWidth
	)	(	USize
				i_nBitField
		)
	->	USize
	{	return
		static_cast<USize>
		(	::std::bit_width
			(	i_nBitField
			)
		);
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
			(	BitWidth
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
