export module Meta.Bit.Field.CountOnes;

import Meta.Bit.CountOnes;
import Meta.Bit.Count;
import Meta.Bit.Field;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	CountOnes
	)	(	Field<t_vWidth>
				i_vField
		)
		noexcept
	->	Count<t_vWidth>
	{	return
		ChangeWidth<t_vWidth>
		(	CountOnes
			(	i_vField
			.	get()
			)
		);
	}
}
