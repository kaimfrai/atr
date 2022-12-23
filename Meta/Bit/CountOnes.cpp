export module Meta.Bit.CountOnes;

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
	->	USize
	{	return
		static_cast<USize>
		(	::std::popcount
			(	i_nField.Value
			)
		);
	}
}
