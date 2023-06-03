export module Meta.Logic.Erased.Equivalence;

import Meta.Logic.Erased.Term;
import Meta.Logic.Bit.Equivalence;

export namespace
	Meta::Logic::Erased
{
	[[nodiscard]]
	auto constexpr inline
	(	operator==
	)	(	Term const
			&	i_rLeft
		,	Term const
			&	i_rRight
		)
		noexcept
	->	bool
	{	return
		Term::Compute
		(	i_rLeft
		,	i_rRight
		,	Logic::Bit::ComputeEquivalence
		);
	}
}
