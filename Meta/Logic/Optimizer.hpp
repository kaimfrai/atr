export module Meta.Logic:Optimizer;

export import :BitClause;
import :BitClauseIterator;

import Meta.Buffer.Static;
import Meta.Buffer.Dynamic;
import Meta.Size;
import Meta.Buffer.Iterator;
import Meta.Bit.Count;
import Meta.Bit.Count.Access;
import Meta.Bit.Index.Shift;

import Std;

export namespace
	Meta::Logic
{
	using
		BitClauseBuffer
	=	Buffer::Static
		<	BitClause
		,	ClauseLimit
		>
	;

	class
		Optimizer final
	{
		using
			BufferType
		=	Buffer::Dynamic<BitClause>
		;

		using iterator = typename BufferType::iterator;
		using const_iterator = typename BufferType::const_iterator;

		BufferType
			m_vTerm
		;

		friend auto constexpr
		(	begin
		)	(	Optimizer
				&	i_rOptimizer
			)
		->	decltype(auto)
		{	return begin(i_rOptimizer.m_vTerm);	}

		friend auto constexpr
		(	begin
		)	(	Optimizer const
				&	i_rOptimizer
			)
		->	decltype(auto)
		{	return begin(i_rOptimizer.m_vTerm);	}

		friend auto constexpr
		(	end
		)	(	Optimizer
				&	i_rOptimizer
			)
		->	decltype(auto)
		{	return end(i_rOptimizer.m_vTerm);	}

		friend auto constexpr
		(	end
		)	(	Optimizer const
				&	i_rOptimizer
			)
		->	decltype(auto)
		{	return end(i_rOptimizer.m_vTerm);	}

		auto constexpr
		(	ViewDynamicBuffer
		)	()	&
		{	return
				m_vTerm.ViewBuffer()
			|	std::views::take_while
				(	[	this
					]	(	BitClause
							&	i_rClause
						)
					{	return
							Buffer::Iterator{&i_rClause}
						!=	end(*this)
						;
					}
				)
			;
		}

		auto constexpr
		(	ViewDynamicBuffer
		)	()	const&
		{	return
				m_vTerm.ViewBuffer()
			|	std::views::take_while
				(	[	this
					]	(	BitClause const
							&	i_rClause
						)
					{	return
							Buffer::Iterator{&i_rClause}
						!=	end(*this)
						;
					}
				)
			;
		}

		auto constexpr
		(	AppendLiteralRedundancy
		)	(	BitClause
					i_vLiteral
			,	BitClause
					i_vLiteralClause
			,	BitClause
					i_vRedundancyClause
		)
		->	bool
		{
			if	(i_vLiteralClause.Includes(i_vRedundancyClause))
			{
				insert(BitClause::Absorbing());
				return true;
			}

			if	(i_vRedundancyClause.Includes(i_vLiteral))
				return false;

			BitClause const
				vSynthesizedClause
			=	Difference
				(	i_vRedundancyClause
				,	Inverse(i_vLiteral)
				)
			;

			if	(vSynthesizedClause.Intersects(Inverse(i_vLiteralClause)))
				return false;

			insert
			(	Difference
				(	vSynthesizedClause
				,	i_vLiteralClause
				)
			);

			return IsAbsorbing();
		}

		auto constexpr
		(	ComputeLiteralRedundancy
		)	(	BitClause
					i_vLiteral
			,	BitClause const
				&	i_rLiteralClause
			,	Optimizer const
				&	i_rTerm
			)
		->	bool
		{
			clear();

			//	literals are only redundant if there exists its negation within the term
			if	(i_rLiteralClause.LiteralCount() <= 1uz)
			{
				bool const
					bNegationContained
				=	i_rTerm.m_vTerm.contains
					(	Inverse
						(	i_rLiteralClause
						)
					)
				;

				if	(bNegationContained)
					insert(BitClause::Absorbing());

				return bNegationContained;
			}

			for	(	BitClause const
					&	rRedundancyClause
				:	i_rTerm.ViewDynamicBuffer()
				)
			{
				//	skip containing clause
				if	(&rRedundancyClause == &i_rLiteralClause)
					continue;

				if	(	AppendLiteralRedundancy
						(	i_vLiteral
						,	i_rLiteralClause
						,	rRedundancyClause
						)
					)
					return true;
			}

			return Optimize(false);
		}

		auto constexpr
		(	ComputeClauseRedundancy
		)	(	BitClause const
				&	i_rCurrentClause
			,	Optimizer const
				&	i_rTerm
			)
		->	bool
		{	return
			ComputeLiteralRedundancy
			(	BitClause::Identity()
			,	i_rCurrentClause
			,	i_rTerm
			);
		}

		auto constexpr
		(	TrimRedundantClauses
		)	(	Optimizer
				&	i_rRedundancyBuffer
			)
		->	void
		{
			m_vTerm.sort();
			for	(	BitClause
					&	rClause
				:	m_vTerm | std::views::reverse
				)
			{
				if	(	i_rRedundancyBuffer.ComputeClauseRedundancy
						(	rClause
						,	*this
						)
					)
				{
					erase(iterator{&rClause});
				}
			}
		}

		auto constexpr
		(	SynthesizeClauses
		)	(	BitClause
					i_vSynthesizedClause
			,	Optimizer const
				&	i_rRedundancyCondition
			)
		->	bool
		{
			for	(	BitClause
						vRedundancyClause
				:	i_rRedundancyCondition.ViewDynamicBuffer()
				)
			{
				insert
				(	Union
					(	vRedundancyClause
					,	i_vSynthesizedClause
					)
				);

				if	(IsAbsorbing())
					return true;
			}
			return false;
		}

		auto constexpr
		(	TrimRedundantLiterals
		)	(	Optimizer
				&	i_rRedundancyBuffer
			,	bool
					i_bConsiderAlternatives
			)
		->	bool
		{
			for	(	BitClause const
					&	rClause
				:	ViewDynamicBuffer()
				)
			{
				for	(	BitClause const
							vLiteral
					:	rClause
					)
				{
					bool const
						bIsLiteralAlwaysRedundant
					=	i_rRedundancyBuffer
					.	ComputeLiteralRedundancy
						(	vLiteral
						,	rClause
						,	*this
						)
					;

					if	(	bIsLiteralAlwaysRedundant
						or	i_bConsiderAlternatives
						)
					{
						if	(	SynthesizeClauses
								(	Difference
									(	rClause
									,	vLiteral
									)
								,	i_rRedundancyBuffer
								)
							)
							return true;
					}
				}
			}

			if	(i_bConsiderAlternatives)
				TrimRedundantClauses(i_rRedundancyBuffer);

			return IsAbsorbing();
		}

		auto constexpr
		(	Optimize
		)	(	bool
					i_bConsiderAlternatives
			)
		->	bool
		{
			auto const
				nClauseCount
			=	size()
			;
			if	(nClauseCount <= 1uz)
				return IsAbsorbing();

			Optimizer
				vRedundancyBuffer
			{	//	#ClauseCount - 1 are needed to evaluate redundancy of a clause or literal
				nClauseCount -	1uz
			+	//	an additional #ClauseCount are needed to evaluate terms with alternative clauses
				i_bConsiderAlternatives
			*	nClauseCount
			};

			return
			TrimRedundantLiterals
			(	vRedundancyBuffer
			,	i_bConsiderAlternatives
			);
		}

	public:
		explicit(true) constexpr
		(	Optimizer
		)	(	USize
					i_nClauseCount
			)
		:	m_vTerm
			{	typename BufferType::BufferType
				{	i_nClauseCount
				}
			}
		{}

		explicit(true) constexpr
		(	Optimizer
		)	(	Bit::Count<LiteralLimit>
					i_nLiteralCount
			)
		:	Optimizer
			{	//	at most 2^(LiteralCount - 1) clauses are possible
				Power
				(	back(i_nLiteralCount)
				)
			//	TODO use buffer more efficiently, should be possible to use half
			*	2uz
			}
		{}

		explicit(false) constexpr
		(	operator
			BitClauseBuffer
		)	()	&&
		{
			Optimize(true);

			if	(ClauseLimit < size())
				((void)"Optimized term contains to many clauses to copy!", std::unreachable());

			BitClauseBuffer
				vArray
			{};
			vArray.AppendUnique(*this);

			return vArray;
		}

		auto constexpr
		(	clear
		)	()
		->	void
		{	m_vTerm.clear();	}

		[[nodiscard]]
		auto constexpr
		(	size
		)	()	const
		->	USize
		{	return m_vTerm.size();	}

		[[nodiscard]]
		auto constexpr
		(	IsAbsorbing
		)	()	const
		->	bool
		{	return
				not IsIdentity()
			and	m_vTerm[0uz].IsAbsorbing()
			;
		}

		[[nodiscard]]
		auto constexpr
		(	IsIdentity
		)	()	const
		->	bool
		{	return m_vTerm.empty();	}

		auto constexpr
		(	erase
		)	(	iterator
				i_aEraseClause
			)
		->	iterator
		{
			return m_vTerm.erase(i_aEraseClause);
		}

		auto constexpr
		(	insert
		)	(	BitClause
					i_vInsertClause
			)
		->	iterator
		{
			if	(	IsAbsorbing()
				or	i_vInsertClause.IsIdentity()
				)
				return end(m_vTerm).base();

			if	(	IsIdentity()
				or	i_vInsertClause.IsAbsorbing()
				)
			{
				m_vTerm.reset(i_vInsertClause);
				return begin(m_vTerm);
			}

			auto
				aInsertPosition
			=	end(m_vTerm).base()
			;
			for	(	BitClause
					&	rClause
				:	m_vTerm | std::views::reverse
				)
			{
				//	insert clause is redundant
				if	(i_vInsertClause.Includes(rClause))
					return end(m_vTerm).base();

				//	overwrite redundant clause
				if	(rClause.Includes(i_vInsertClause))
				{
					rClause = i_vInsertClause;
					erase(aInsertPosition);
					aInsertPosition = iterator{&rClause};
				}
			}

			if	(aInsertPosition == end(m_vTerm))
			{
				m_vTerm.push_back(i_vInsertClause);
			}
			return aInsertPosition;
		}

		auto constexpr
		(	insert
		)	(	::std::span<BitClause const>
					i_vInsertTerm
			)
		->	void
		{
			for	(	BitClause
						vInsertClause
				:	i_vInsertTerm
				)
				insert(vInsertClause);
		}
	};
}
