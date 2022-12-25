export module ATR:Layout.Bit.Types;

import Meta.Size;
import Meta.Bit.ByteSize;
import Meta.Bit.Log;
import Meta.Bit.Count;
import Meta.Byte.Count;
import Meta.Arithmetic.Integer;
import Meta.Byte.Buffer;

import Std;

using ::Meta::UInt;
using ::Meta::UIntMax;
using ::Meta::USize;

using namespace ::Meta::Literals;

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
	->	Meta::Bytes
	{	return
		Meta::Bytes
		(	Meta::Bits
			{	static_cast<USize>(i_nSize)
			*	i_nExtent
			+	static_cast<USize>(i_nOffset)
			}
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
	=	::Meta::Byte::Buffer
		<	BitFieldBufferSize
			(	t_nSize
			,	t_nOffset
			,	t_nExtent
			)
		>
	;
}
