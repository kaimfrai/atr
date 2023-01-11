export module Meta.Bit.Field.CountOnes;

import Meta.Bit.CountOnes;
import Meta.Bit.Count;
import Meta.Bit.Field;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	CountOnes
	)	(	Field<t_nWidth>
				i_nField
		)
		noexcept
	->	Count<t_nWidth>
	{	return
		ChangeWidth<t_nWidth>
		(	CountOnes
			(	i_nField
			.	get()
			)
		);
	}
}
