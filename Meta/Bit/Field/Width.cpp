export module Meta.Bit.Field.Width;

import Meta.Bit.Field;
import Meta.Bit.Width;
import Meta.Bit.Count;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
	(	Width
	)	(	Field<t_nSize>
				i_vField
		)
		noexcept
	->	Count<t_nSize>
	{	return
		static_cast<Count<t_nSize>>
		(	Width
			(	i_vField
			.	get()
			)
		);
	}
}
