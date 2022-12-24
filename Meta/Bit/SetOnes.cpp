export module Meta.Bit.SetOnes;

import Meta.Bit.Count;
import Meta.Bit.Field;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	SetOnes
	)	(	Bits
				i_nBitCount
		)
		noexcept
	->	Field
	{	return
		{	compl
			(	compl 0uz
			<<	i_nBitCount.get()
			)
		};
	}
}
