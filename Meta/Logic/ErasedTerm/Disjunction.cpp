export module Meta.Logic.ErasedTerm.Disjunction;

import Meta.Logic.ErasedTerm;
import Meta.Logic.Bit.Disjunction;

export namespace
	Meta
{
	[[nodiscard]]
	auto constexpr
	(	operator or
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
		,	Logic::Bit::ComputeDisjunction
		);
	}
}
