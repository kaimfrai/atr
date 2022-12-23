export module Meta.Bit.SetOnes;

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
	->	USize
	{	return
		compl
		(	compl 0uz
		<<	i_nBitCount
		);
	}
}
