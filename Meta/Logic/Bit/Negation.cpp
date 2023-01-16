export module Meta.Logic.Bit.Negation;

import Meta.Logic.Bit.LiteralIterator;
import Meta.Logic.Bit.Term;
import Meta.Logic.Bit.Clause;
import Meta.Logic.Bit.Optimizer;
import Meta.Size;

import Std;

export namespace
	Meta::Logic::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Negation
	)	(	Term const
			&	i_rTerm
		)
		noexcept
	->	Term
	{
		if	(i_rTerm.IsAbsorbing())
			return Clause::Identity();

		if	(i_rTerm.IsIdentity())
			return Clause::Absorbing();

		USize const
			nMaxClauseCount
		=	i_rTerm.transform_reduce
			(	1uz
			,	::std::multiplies<USize>{}
			,	&Clause::LiteralCount
			)
		;

		Optimizer
			vOptimizer
		{	nMaxClauseCount
		};
		vOptimizer.insert(Clause::Absorbing());

		Optimizer
			vResultBuffer
		{	nMaxClauseCount
		};

		for	(	Clause const
					vClause
			:	i_rTerm
			)
		{
			for	(	Clause const
						vLiteral
				:	vClause
				)
			{
				Clause const
					vNegatedLiteral
				=	Inverse(vLiteral)
				;
				for	(	Clause const
							vCurrentClause
					:	vOptimizer
					)
				{
					vResultBuffer.insert
					(	Union
						(	vNegatedLiteral
						,	vCurrentClause
						)
					);
				}
			}
			vOptimizer.clear();
			::std::swap(vResultBuffer, vOptimizer);
		}

		return
		{	::std::move
			(	vOptimizer
			)
		};
	}
}
