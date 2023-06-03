export module Meta.Logic.Erased.Disjunction;

import Meta.Logic.Erased.Term;
import Meta.Logic.Bit.Disjunction;

export namespace
	Meta::Logic::Erased
{
	[[nodiscard]]
	auto constexpr inline
	(	operator or
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
		,	Logic::Bit::ComputeDisjunction
		);
	}
}
