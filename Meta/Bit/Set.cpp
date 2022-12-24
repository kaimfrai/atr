export module Meta.Bit.Set;

import Meta.Bit.Count;
import Meta.Bit.Field;
import Meta.Bit.Power;

import Meta.Size;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	PowerField
	)	(	Bits
				i_nIndex
		)
		noexcept
	->	Field
	{	return
		{	Power
			(	i_nIndex
			)
		};
	}

	[[nodiscard]]
	auto constexpr
	(	Set
	)	(	Field
				i_nField
		,	Bits
				i_nIndex
		)
		noexcept
	->	Field
	{	return
		(	i_nField
		bitor
			PowerField(i_nIndex)
		);
	}
}
