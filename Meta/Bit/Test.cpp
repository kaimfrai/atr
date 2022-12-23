export module Meta.Bit.Test;

import Meta.Bit.Power;
import Meta.Size;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Test
	)	(	USize
				i_nBitField
		,	USize
				i_nIndex
		)
		noexcept
	->	bool
	{	return
		(	i_nBitField
		bitand
			Power(i_nIndex)
		);
	}
}
