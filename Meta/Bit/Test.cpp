export module Meta.Bit.Test;

import Meta.Bit.Field;
import Meta.Bit.Power;
import Meta.Size;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Test
	)	(	Field
				i_nField
		,	USize
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
