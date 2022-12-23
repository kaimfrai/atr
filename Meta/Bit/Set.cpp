export module Meta.Bit.Set;

import Meta.Bit.Power;

import Meta.Size;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Set
	)	(	USize
				i_nField
		,	USize
				i_nIndex
		)
		noexcept
	->	USize
	{	return
		(	i_nField
		bitor
			Power(i_nIndex)
		);
	}
}
