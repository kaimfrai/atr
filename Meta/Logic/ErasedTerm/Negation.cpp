export module Meta.Logic.ErasedTerm.Negation;

import Meta.Logic.ErasedTerm;
import Meta.Logic.Bit.Negation;

export namespace
	Meta
{
	[[nodiscard]]
	auto constexpr
	(	operator not
	)	(	ErasedTerm const
			&	i_rTerm
		)
		noexcept
	->	ErasedTerm
	{	return
		ErasedTerm
		{	Negation
			(	i_rTerm
			.	BitTerm
			)
		,	i_rTerm.Literals
		};
	}
}
