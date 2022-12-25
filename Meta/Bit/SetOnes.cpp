export module Meta.Bit.SetOnes;

import Meta.Bit.Count;
import Meta.Bit.Field;

export namespace
	Meta::Bit
{
	template
		<	typename
				t_tField
			=	Field
		>
	[[nodiscard]]
	auto constexpr
	(	SetOnes
	)	(	Bits
				i_nBitCount
		)
		noexcept
	->	t_tField
	{	return
		t_tField
		(	compl
			(	compl t_tField{}
			<<	i_nBitCount
			)
		);
	}
}
