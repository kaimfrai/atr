export module Meta.Bit.Field.Width;

import Meta.Bit.Field;
import Meta.Bit.Width;
import Meta.Bit.Count;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	Width
	)	(	Field<t_nWidth>
				i_vField
		)
		noexcept
	->	Count<t_nWidth>
	{	return
		ChangeWidth<t_nWidth>
		(	Width
			(	i_vField
			.	get()
			)
		);
	}
}
