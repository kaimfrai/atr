export module Meta.Byte.Floor;

import Meta.Byte.BitCount;
import Meta.Size;
import Std;

export namespace
	Meta::Byte
{
	auto constexpr
	(	Floor
	)	(	USize
				i_nBits
		)
		noexcept
	->	USize
	{	return
		::std::max
		(	::std::bit_floor
			(	i_nBits
			)
		,	BitCount
		);
	}
}
