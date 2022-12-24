export module Meta.Bit.Power;

import Meta.Bit.Count;
import Meta.Size;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Power
	)	(	Bits
				i_nIndex
		)
		noexcept
	->	USize
	{	return
		(	1uz
		<<	i_nIndex.get()
		);
	}
}

