export module Meta.Bit.CountOnes;

import Meta.Bit.Count;
import Meta.Math.Sign;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr inline
	(	CountOnes
	)	(	::std::integral auto
				i_nField
		)
		noexcept
	->	Count_For<decltype(i_nField)>
	{	return
		Count_For<decltype(i_nField)>
		{	Math::Unsigned
			(	::std::popcount
				(	i_nField
				)
			)
		};
	}
}
