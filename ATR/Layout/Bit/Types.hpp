export module ATR:Layout.Bit.Types;

import Meta.Size;
import Meta.Arithmetic;
import Meta.Byte.BitCount;

import Std;

using ::Meta::Arithmetic::BitWidth;
using ::Meta::Byte::BitCount;
using ::Meta::UInt;
using ::Meta::UIntMax;
using ::Meta::USize;

export namespace
	ATR::Bit
{
	enum class
		EOffset
	:	UInt
		<	BitWidth
			(	BitCount
			-	1uz
			)
		>
	{};

	enum class
		ESize
	:	UInt
		<	BitWidth
			(	BitCount
			*	sizeof(UIntMax)
			)
		>
	{};

	auto constexpr
	(	BitFieldBufferSize
	)	(	ESize
				i_nSize
		,	EOffset
				i_nOffset
			=	EOffset{0uz}
		,	USize
				i_nExtent
			=	1uz
		)
	->	USize
	{	return
		(	(	static_cast<USize>(i_nSize)
			*	i_nExtent
			+	static_cast<USize>(i_nOffset)
			+	(BitCount - 1uz)
			)
		/	 BitCount
		);
	}

	template
		<	ESize
				t_nSize
		,	EOffset
				t_nOffset
			=	EOffset{0uz}
		,	USize
				t_nExtent
			=	1uz
		>
	using
		BitFieldBuffer
	=	::std::byte
		[	BitFieldBufferSize
			(	t_nSize
			,	t_nOffset
			,	t_nExtent
			)
		]
	;
}
