export module Meta.Bit.Field.CountOnes;

import Meta.Bit.CountOnes;
import Meta.Bit.Count;
import Meta.Bit.Field;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
	(	CountOnes
	)	(	Field<t_nSize>
				i_nField
		)
		noexcept
	->	Count<t_nSize>
	{	return
		static_cast<Count<t_nSize>>
		(	CountOnes
			(	i_nField
			.	get()
			)
		);
	}
}
