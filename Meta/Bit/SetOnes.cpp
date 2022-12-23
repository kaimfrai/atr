export module Meta.Bit.SetOnes;

import Meta.Bit.Field;
import Meta.Size;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	SetOnes
	)	(	USize
				i_nBitCount
		)
		noexcept
	->	Field
	{	return
		{	compl
			(	compl 0uz
			<<	i_nBitCount
			)
		};
	}
}
