export module ATR:Layout.Bit.Types;

import Meta.Size;
import Meta.Bit.ByteSize;
import Meta.Bit.Log;
import Meta.Bit.Count;
import Meta.Byte.Count;
import Meta.Arithmetic.Integer;

import Std;

using ::Meta::UInt;
using ::Meta::UIntMax;
using ::Meta::USize;

using ::Meta::Literals::operator""_bits;

export namespace
	ATR::Bit
{
	enum class
		EOffset
	:	UInt
		<	Meta::Bit::Log
			(	::Meta::Bit::ByteSize
			)
		>
	{};

	enum class
		ESize
	:	UInt
		<	1_bits
		+	Meta::Bit::Log
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
			Meta::Bytes
			(	Meta::Bits
				{	static_cast<USize>(i_nSize)
				*	i_nExtent
				+	static_cast<USize>(i_nOffset)
				}
			)
		.	get()
		;
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
