export module Meta.Bit.CountOnes;

import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	CountOnes
	)	(	USize
				i_nBitField
		)
		noexcept
	->	USize
	{	return
		static_cast<USize>
		(	::std::popcount
			(	i_nBitField
			)
		);
	}
}
