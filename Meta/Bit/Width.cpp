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
				i_vField
		)
		noexcept
	->	Count_For<decltype(i_vField)>
	{	return
		Count_For<decltype(i_vField)>
		{	Math::Unsigned
			(	::std::bit_width
				(	i_vField
				)
			)
		};
	}
}
