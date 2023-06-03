export module Meta.Bit.Index.Test;

import Meta.Bit.Index;
import Meta.Bit.Index.Shift;
import Meta.Arithmetic.Integer;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	Test
	)	(	UInt<t_nWidth>
				i_nField
		,	Index<t_nWidth>
				i_nIndex
		)
		noexcept
	->	bool
	{	return
		(	(	i_nField
			>>	i_nIndex
			)
		bitand
			UInt<t_nWidth>
			{	1u
			}
		);
	}
}
