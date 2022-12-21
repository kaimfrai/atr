export module Meta.Arithmetic:Bit;

export import :Integer;
import Meta.Size;

import Std;

using ::Meta::USize;

static_assert
(	::std::endian::native
==	::std::endian::little
,	"Big Endian not yet supported for use byte casting!"
);

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
		,	USize
				t_nValueBytes
			=	sizeof(t_tEntity)
		>
	[[nodiscard]]
	auto constexpr
	(	ReadFromBytes
	)	(	::std::byte const
			*	i_aBytes
		,	USize
				i_nActiveValueBytes
			=	t_nValueBytes
		)
	->	t_tEntity
	{
		static_assert(t_nValueBytes <= sizeof(t_tEntity));

		using tObject = ByteArray<t_tEntity>;
		tObject
			vObject
		{};
		if (i_nActiveValueBytes > t_nValueBytes)
			::std::unreachable();

		::std::copy
		(	i_aBytes
		,	::std::next(i_aBytes, static_cast<SSize>(i_nActiveValueBytes))
		,	begin(vObject)
		);
		return
		::std::bit_cast
		<	t_tEntity
		>(	vObject
		);
	}

	template
		<	typename
				t_tEntity
		,	USize
				t_nValueBytes
			=	sizeof(t_tEntity)
		>
	auto constexpr
	(	WriteToBytes
	)	(	t_tEntity const
			&	i_rEntity
		,	::std::byte
			*	o_aBytes
		,	USize
				i_nActiveValueBytes
			=	t_nValueBytes
		)
	->	::std::byte*
	{
		static_assert(t_nValueBytes <= sizeof(t_tEntity));

		using tObject = ByteArray<t_tEntity>;

		if (i_nActiveValueBytes > t_nValueBytes)
			::std::unreachable();

		auto const
			vObject
		=	::std::bit_cast
			<	tObject
			>(	i_rEntity
			)
		;
		return
		::std::copy
		(	begin(vObject)
		,	::std::next(begin(vObject), static_cast<SSize>(i_nActiveValueBytes))
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
