export module ATR:Layout.Bit.Types;

import Meta.Arithmetic.Size;
import Meta.Arithmetic;

import Std;

using ::Meta::Arithmetic::BitWidth;
using ::Meta::BitsPerByte;
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
			(	BitsPerByte
			-	1uz
			)
		>
	{};

	enum class
		ESize
	:	UInt
		<	BitWidth
			(	BitsPerByte
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
			+	(BitsPerByte - 1uz)
			)
		/	 BitsPerByte
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
