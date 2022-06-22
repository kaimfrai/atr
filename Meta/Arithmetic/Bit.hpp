export module Meta.Arithmetic:Bit;

export import :Integer;

export import Std;

export namespace
	Meta::Arithmetic
{
	template
		<	typename
				t_tEntity
		>
	using
		ByteArray
	=	::std::array
		<	::std::byte
		,	sizeof(t_tEntity)
		>
	;

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	ReadFromBytes
	)	(	::std::byte const
			*	i_aBytes
		)
	->	t_tEntity
	{
		ByteArray<t_tEntity>
			vBytes
		;
		::std::copy
		(	i_aBytes
		,	i_aBytes + sizeof(t_tEntity)
		,	begin(vBytes)
		);
		return
		::std::bit_cast
		<	t_tEntity
		>(	vBytes
		);
	}

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	WriteToBytes
	)	(	t_tEntity const
			&	i_rEntity
		,	::std::byte
			*	o_aBytes
		)
	->	::std::byte*
	{
		auto const
			vBytes
		=	::std::bit_cast
			<	ByteArray<t_tEntity>
			>(	i_rEntity
			)
		;
		return
		::std::copy
		(	begin(vBytes)
		,	end(vBytes)
		,	o_aBytes
		);
	}

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
