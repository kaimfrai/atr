export module Meta.Logic.Erased.Negation;

import Meta.Logic.Erased.Term;
import Meta.Logic.Bit.Negation;

import Std;

export namespace
	Meta::Logic::Erased
{
	[[nodiscard]]
	auto constexpr inline
	(	operator not
	)	(	Term
				i_vTerm
		)
		noexcept
	->	Term
	{
		i_vTerm
		.	BitTerm
		=	Negation
			(	i_vTerm
				.	BitTerm
			)
		;

		return
			i_vTerm
		;
	}
}
