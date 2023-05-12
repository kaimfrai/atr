export module Meta.Logic.Bit.Optimizer;

import Meta.Logic.Bit.Clause;
import Meta.Logic.Bit.LiteralIterator;

import Meta.Buffer.Static;
import Meta.Buffer.Dynamic;
import Meta.Size;
import Meta.Bit.Count;
import Meta.Bit.Count.Access;
import Meta.Bit.Index.Shift;

import Std;

export namespace
	Meta::Logic::Bit
{
	using
		ClauseBuffer
	=	Buffer::Static
		<	Clause
		,	ClauseLimit
		>
	;

	class
		Optimizer final
	{
		using
			BufferType
		=	Buffer::Dynamic<Clause>
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
		(	AppendLiteralRedundancy
		)	(	Clause
					i_vLiteral
			,	Clause
					i_vLiteralClause
			,	Clause
					i_vRedundancyClause
		)
		->	bool
		{
			if	(i_vLiteralClause.Includes(i_vRedundancyClause))
			{
				insert(Clause::Absorbing());
				return true;
			}

			if	(i_vRedundancyClause.Includes(i_vLiteral))
				return false;

			Clause const
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
		)	(	Clause
					i_vLiteral
			,	Clause const
				&	i_rLiteralClause
			,	Optimizer const
				&	i_rTerm
			)
		->	bool
		{
			clear
			();

			//	literals are only redundant if there exists its negation within the term
			if	(	i_rLiteralClause
					.	LiteralCount
						()
				<=	1uz
				)
			{
				bool const
					bNegationContained
				=	i_rTerm
					.	m_vTerm
					.	contains
						(	Inverse
							(	i_rLiteralClause
							)
						)
				;

				if	(	bNegationContained
					)
				{	insert
					(	Clause::Absorbing
						()
					);
				}

				return
					bNegationContained
				;
			}

			for	(	auto
						aRedundancyClause
					=	begin
						(	i_rTerm
						)
				;	(	aRedundancyClause
					!=	// May change every iteration
						end
						(	i_rTerm
						)
					)
				;	++	aRedundancyClause
				)
			{
				//	skip containing clause
				if	(	aRedundancyClause
					==	&i_rLiteralClause
					)
				{	continue
					;
				}

				if	(	AppendLiteralRedundancy
						(	i_vLiteral
						,	i_rLiteralClause
						,	*
							aRedundancyClause
						)
					)
				{	return
						true
					;
				}
			}

			return
			Optimize
			(	false
			);
		}

		auto constexpr
		(	ComputeClauseRedundancy
		)	(	Clause const
				&	i_rCurrentClause
			,	Optimizer const
				&	i_rTerm
			)
		->	bool
		{	return
			ComputeLiteralRedundancy
			(	Clause::Identity()
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
			m_vTerm
			.	sort
				()
			;

			for	(	auto
						aClause
					=	end
						(	m_vTerm
						)
					,	aClauseBegin
					=	begin
						(	m_vTerm
						)
				;	(	aClause
					!=	aClauseBegin
					)
				;
				)
			{
				--	aClause
				;

				if	(	i_rRedundancyBuffer
						.	ComputeClauseRedundancy
							(	*aClause
							,	*this
							)
					)
				{
					erase
					(	aClause
					);
				}
			}
		}

		auto constexpr
		(	SynthesizeClauses
		)	(	Clause
					i_vSynthesizedClause
			,	Optimizer const
				&	i_rRedundancyCondition
			)
		->	bool
		{
			for	(	Clause
						vRedundancyClause
				:	i_rRedundancyCondition
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
			for	(	auto
						aClause
					=	begin
						(	*this
						)
				;	(	aClause
					!=	// May change every iteration
						end
						(	*this
						)
					)
				;	++	aClause
				)
			{
				Clause const
				&	rClause
				=	*
					aClause
				;

				for	(	Clause const
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
						{	return
								true
							;
						}
					}
				}
			}

			if	(	i_bConsiderAlternatives
				)
			{	TrimRedundantClauses
				(	i_rRedundancyBuffer
				);
			}

			return
				IsAbsorbing
				()
			;
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
		)	(	::Meta::Bit::Count<LiteralLimit>
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
			ClauseBuffer
		)	()	&&
		{
			Optimize(true);

			if	(ClauseLimit < size())
				((void)"Optimized term contains to many clauses to copy!", std::unreachable());

			ClauseBuffer
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
		)	(	Clause
					i_vInsertClause
			)
		->	iterator
		{
			auto const
				aTermEnd
			=	end
				(	m_vTerm
				)
			;

			if	(	IsAbsorbing
					()
				or	i_vInsertClause
					.	IsIdentity
						()
				)
			{	return
					aTermEnd
				;
			}

			if	(	IsIdentity
					()
				or	i_vInsertClause
					.	IsAbsorbing
						()
				)
			{
				m_vTerm
				.	reset
					(	i_vInsertClause
					)
				;

				return
				begin
				(	m_vTerm
				);
			}

			auto
				aInsertPosition
			=	aTermEnd
			;
			for	(	auto
						aClause
					=	aTermEnd
					,	aClauseBegin
					=	begin
						(	m_vTerm
						)
				;	(	aClause
					!=	aClauseBegin
					)
				;
				)
			{
				--	aClause
				;
				//	insert clause is redundant
				if	(	i_vInsertClause
						.	Includes
							(	*
								aClause
							)
					)
				{	return
					end
					(	m_vTerm
					);
				}

				//	overwrite redundant clause
				if	(	aClause
						->	Includes
							(	i_vInsertClause
							)
					)
				{
					*	aClause
					=	i_vInsertClause
					;

					erase
					(	aInsertPosition
					);

					aInsertPosition
					=	aClause
					;
				}
			}

			if	(	aInsertPosition
				==	end
					(	m_vTerm
					)
				)
			{	m_vTerm
				.	push_back
					(	i_vInsertClause
					)
				;
			}

			return
				aInsertPosition
			;
		}

		auto constexpr
		(	insert
		)	(	::std::span<Clause const>
					i_vInsertTerm
			)
		->	void
		{
			for	(	Clause
						vInsertClause
				:	i_vInsertTerm
				)
				insert(vInsertClause);
		}
	};
}
