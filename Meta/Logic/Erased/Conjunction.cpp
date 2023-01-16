export module Meta.Logic.Erased.Conjunction;

import Meta.Logic.Erased.Term;
import Meta.Logic.Bit.Conjunction;

export namespace
	Meta::Logic::Erased
{
	[[nodiscard]]
	auto constexpr
	(	operator and
	)	(	Term const
			&	i_rLeft
		,	Term const
			&	i_rRight
		)
		noexcept
	->	Term
	{	return
		Term::Compute
		(	i_rLeft
		,	i_rRight
		,	Logic::Bit::ComputeConjunction
		);
	}
}
