export module Meta.Bit.CountOnes;

import Meta.Bit.Count;
import Meta.Bit.Field;
import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	CountOnes
	)	(	Field
				i_nField
		)
		noexcept
	->	Bits
	{	return
		Bits
		{	static_cast<USize>
			(	::std::popcount
				(	i_nField.Value
				)
			)
		};
	}
}
