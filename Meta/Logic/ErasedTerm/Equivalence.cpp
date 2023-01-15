export module Meta.Logic.ErasedTerm.Equivalence;

import Meta.Logic.ErasedTerm;
import Meta.Logic.Bit.Equivalence;

export namespace
	Meta
{
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	ErasedTerm const
			&	i_rLeft
		,	ErasedTerm const
			&	i_rRight
		)
		noexcept
	->	bool
	{	return
		ErasedTerm::ComputeErasedTerm
		(	i_rLeft
		,	i_rRight
		,	Logic::Bit::ComputeEquivalence
		);
	}
}
