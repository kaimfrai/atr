export module Meta.Byte.Ceil;

import Meta.Bit.ByteSize;
import Meta.Size;
import Std;

export namespace
	Meta::Byte
{
	auto constexpr
	(	Ceil
	)	(	USize
				i_nBits
		)
		noexcept
	->	USize
	{	return
		::std::max
		(	::std::bit_ceil
			(	i_nBits
			)
		,	Bit::ByteSize
		);
	}
}
