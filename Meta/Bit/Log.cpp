export module Meta.Bit.Log;

import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Log
	)	(	USize
				i_nArgument
		)
		noexcept
	->	USize
	{
		if (i_nArgument == 0uz)
			::std::unreachable();
		return
			static_cast<USize>
			(	::std::bit_width(i_nArgument)
			)
		-	1uz
		;
	}
}
