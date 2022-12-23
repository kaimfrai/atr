export module ATR:Layout.Bit.Types;

import Meta.Size;
import Meta.Arithmetic;
import Meta.Bit.ByteSize;
import Meta.Bit.Width;

import Std;

using ::Meta::Bit::Width;
using ::Meta::UInt;
using ::Meta::UIntMax;
using ::Meta::USize;

export namespace
	ATR::Bit
{
	enum class
		EOffset
	:	UInt
		<	Width
			(	::Meta::Bit::ByteSize
			-	1uz
			)
		>
	{};

	enum class
		ESize
	:	UInt
		<	Width
			(	::Meta::Bit::ByteSize
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
			+	(::Meta::Bit::ByteSize - 1uz)
			)
		/	 ::Meta::Bit::ByteSize
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
