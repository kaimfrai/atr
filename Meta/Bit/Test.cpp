export module Meta.Bit.Test;

import Meta.Bit.Count;
import Meta.Bit.Field;
import Meta.Bit.Power;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Test
	)	(	Field
				i_nField
		,	Bits
				i_nIndex
		)
		noexcept
	->	bool
	{	return
		(	i_nField.Value
		bitand
			Power(i_nIndex)
		);
	}
}
