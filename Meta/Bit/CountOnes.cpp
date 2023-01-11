export module Meta.Bit.CountOnes;

import Meta.Bit.Count;
import Meta.Arithmetic.Integer;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	CountOnes
	)	(	::std::integral auto
				i_nField
		)
		noexcept
	->	Count_For<decltype(i_nField)>
	{	return
		Count_For<decltype(i_nField)>
		{	static_cast<UIntMax>
			(	::std::popcount
				(	i_nField
				)
			)
		};
	}
}
