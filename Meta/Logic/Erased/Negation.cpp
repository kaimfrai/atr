export module Meta.Logic.Erased.Negation;

import Meta.Logic.Erased.Term;
import Meta.Logic.Bit.Negation;

export namespace
	Meta::Logic::Erased
{
	[[nodiscard]]
	auto constexpr
	(	operator not
	)	(	Term const
			&	i_rTerm
		)
		noexcept
	->	Term
	{	return
		Term
		{	Negation
			(	i_rTerm
			.	BitTerm
			)
		,	i_rTerm
		.	Literals
		};
	}
}
