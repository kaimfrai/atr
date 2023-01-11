export module Meta.Bit.Width;

import Meta.Bit.Count;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Width
	)	(	::std::integral auto
				i_nField
		)
		noexcept
	->	Count_For<decltype(i_nField)>
	{	return
		Count_For<decltype(i_nField)>
		{	static_cast<unsigned>
			(	::std::bit_width
				(	i_nField
				)
			)
		};
	}
}
