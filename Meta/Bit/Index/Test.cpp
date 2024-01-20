export module Meta.Bit.Index.Test;

import Meta.Bit.Index;
import Meta.Bit.Index.Shift;
import Meta.Arithmetic.Integer;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	Test
	)	(	UInt<t_vWidth>
				i_vField
		,	Index<t_vWidth>
				i_vIndex
		)
		noexcept
	->	bool
	{	return
		(	(	i_vField
			>>	i_vIndex
			)
		bitand
			UInt<t_vWidth>
			{	1u
			}
		);
	}
}
