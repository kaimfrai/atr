export module Meta.Bit.Power;

import Meta.Size;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Power
	)	(	USize
				i_nIndex
		)
		noexcept
	->	USize
	{	return
		(	1uz
		<<	i_nIndex
		);
	}
}

