export module Meta.Bit.Log;

import Meta.Bit.Count;
import Meta.Size;

import Std;

using ::Meta::Literals::operator""_bits;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Log
	)	(	Bits
				i_nArgument
		)
		noexcept
	->	Bits
	{
		if (i_nArgument == 0_bits)
			::std::unreachable();
		return
		{	static_cast<USize>
			(	::std::bit_width
				(	i_nArgument.get()
				)
			)
		-	1uz
		};
	}
}
