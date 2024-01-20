export module Meta.Bit.Field.Width;

import Meta.Bit.Field;
import Meta.Bit.Width;
import Meta.Bit.Count;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	Width
	)	(	Field<t_vWidth>
				i_vField
		)
		noexcept
	->	Count<t_vWidth>
	{	return
		ChangeWidth<t_vWidth>
		(	Width
			(	i_vField
			.	get()
			)
		);
	}
}
