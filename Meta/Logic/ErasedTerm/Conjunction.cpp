export module Meta.Logic.ErasedTerm.Conjunction;

import Meta.Logic.ErasedTerm;
import Meta.Logic.Bit.Conjunction;

export namespace
	Meta
{
	[[nodiscard]]
	auto constexpr
	(	operator and
	)	(	ErasedTerm const
			&	i_rLeft
		,	ErasedTerm const
			&	i_rRight
		)
		noexcept
	->	ErasedTerm
	{	return
		ErasedTerm::ComputeErasedTerm
		(	i_rLeft
		,	i_rRight
		,	Logic::Bit::ComputeConjunction
		);
	}
}
