export module Meta.Bit.Width;

import Meta.Bit.Count;
import Meta.Math.Sign;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr inline
	(	Width
	)	(	::std::integral auto
				i_nField
		)
		noexcept
	->	Count_For<decltype(i_nField)>
	{	return
		Count_For<decltype(i_nField)>
		{	Math::Unsigned
			(	::std::bit_width
				(	i_nField
				)
			)
		};
	}
}
