export module Meta.Logic.Optimizer;

import Std.Algorithm;
import Std.Numeric;
import Std.Iterator;
import Std.Span;

export import Meta.Logic.BitClause;

export namespace
	Meta::Logic
{
	struct
		Optimizer
	{
		BitClause
		*	const
			m_aTermBegin
		;
		BitClause
		*	m_aTermEnd
		;

		friend auto constexpr
		(	begin
		)	(	Optimizer const
				&	i_rOptimizer
			)
		->	BitClause*
		{	return i_rOptimizer.m_aTermBegin;	}

		friend auto constexpr
		(	end
		)	(	Optimizer const
				&	i_rOptimizer
			)
		->	BitClause*
		{	return i_rOptimizer.m_aTermEnd;	}

		explicit constexpr
		(	Optimizer
		)	(	USize
					i_nClauseCount
			)
		:	m_aTermBegin
			{	new	BitClause
				[	i_nClauseCount
				]
			}
		,	m_aTermEnd
			{	m_aTermBegin
			}
		{}

		auto constexpr
		(	CopyInto
		)	(	::std::span<BitClause>
					i_vOutTerm
			)	const
		{
			if	(i_vOutTerm.size() < size())
				throw "Optimized term contains to many clauses to copy!";

			::std::copy
			(	m_aTermBegin
			,	m_aTermEnd
			,	begin(i_vOutTerm)
			);
		}

		constexpr
		(	compl Optimizer
		)	()
		{
			delete[]
				m_aTermBegin
			;
		}

		auto constexpr
		(	clear
		)	()
		->	void
		{	m_aTermEnd = m_aTermBegin;	}

		auto constexpr
		(	size
		)	()	const
		->	::std::size_t
		{	return
			static_cast<::std::size_t>
			(	m_aTermEnd
			-	m_aTermBegin
			);
		}

		auto constexpr
		(	operator[]
		)	(	::std::size_t
					i_nIndex
			)	&
		->	BitClause&
		{	return m_aTermBegin[i_nIndex];	}

		auto constexpr
		(	operator[]
		)	(	::std::size_t
					i_nIndex
			)	const&
		->	BitClause const&
		{	return m_aTermBegin[i_nIndex];	}

		auto constexpr
		(	IsAbsorbing
		)	()	const
		{	return
				size() == 1uz
			and	(	m_aTermBegin[0uz]
				==	AbsorbingClause
				)
			;
		}

		auto constexpr
		(	IsIdentity
		)	()	const
		{	return
				size()
			==	0uz
			;
		}

		auto constexpr
		(	ReverseView
		)	()	const
		{
			struct
			{
				BitClause
				*	m_aTermBegin
				;
				BitClause
				*	m_aTermEnd
				;

				auto constexpr
				(	begin
				)	()	const
				{	return
					::std::make_reverse_iterator
					(	m_aTermEnd
					);
				}

				auto constexpr
				(	end
				)	()	const
				{	return
					::std::make_reverse_iterator
					(	m_aTermBegin
					);
				}
			}	vReverseView
			{	m_aTermBegin
			,	m_aTermEnd
			};
			return vReverseView;
		}

		auto constexpr
		(	insert
		)	(	BitClause
					i_vInsertClause
			)
		->	bool
		{
			if	(	IsAbsorbing()
				or	i_vInsertClause.IsIdentity()
				)
				return false;

			if	(	IsIdentity()
				or	i_vInsertClause.IsAbsorbing()
				)
			{
				*m_aTermBegin = i_vInsertClause;
				m_aTermEnd = m_aTermBegin + 1z;
				return true;
			}

			bool bInserted = false;
			for	(	BitClause
					&	rClause
				:	ReverseView()
				)
			{
				//	insert clause is redundant
				if	(i_vInsertClause.Includes(rClause))
					return false;

				//	overwrite redundant clause
				if	(rClause.Includes(i_vInsertClause))
				{
					if	(not bInserted)
					{
						rClause = i_vInsertClause;
						bInserted = true;
					}
					else
					{
						m_aTermEnd = ::std::remove(&rClause, m_aTermEnd, rClause);
					}
				}
			}

			if	(not bInserted)
				*(m_aTermEnd++) = i_vInsertClause;
			return true;
		}

		auto constexpr
		(	insert
		)	(	::std::span<BitClause const>
					i_vInsertTerm
			)
		->	bool
		{	return
			::std::transform_reduce
			(	begin(i_vInsertTerm)
			,	end(i_vInsertTerm)
			,	false
			,	::std::logical_or<>{}
			,	[	this
				]	(	BitClause
							i_vInsertClause
					)
				{	return insert(i_vInsertClause);	}
			);
		}

		auto constexpr
		(	OptimizeLiterals
		)	(	Optimizer
				&	i_rRedundancyBuffer
			)
		->	bool
		{
			for	(	BitClause
					&	rClause
				:	*this
				)
			{
				for	(	IndexType
							nIndex
						{}
					;		nIndex
						<	SubtermLimit
					;	++	nIndex
					)
				{
					BitClause const
						vLiteral
					=	rClause
						[	nIndex
						]
					;
					if	(vLiteral == AbsorbingClause)
						continue;

					if	(		i_rRedundancyBuffer
							.	ComputeLiteralRedundancy
							(	vLiteral
							,	rClause
							,	*this
							)
						)
					{
						if	(vLiteral == rClause)
						{
							//	only literal gets erased
							//	resulting term is always absorbing
							insert(AbsorbingClause);
						}
						else
						{
							//	erase the literal
							rClause.Erase(vLiteral);
							OptimizeLength(i_rRedundancyBuffer);
						}

						return true;
					}
				}
			}
			return false;
		}

		auto constexpr
		(	ComputeClauseRedundancy
		)	(	BitClause const
				&	i_rCurrentClause
			,	Optimizer const
				&	i_rTerm
			)
		->	bool
		{
			return ComputeLiteralRedundancy(IdentityClause, i_rCurrentClause, i_rTerm);
		}

		auto constexpr
		(	OptimizeClauses
		)	(	Optimizer
				&	i_rRedundancyBuffer
			)
		->	bool
		{
			::std::sort(m_aTermBegin, m_aTermEnd);
			bool bWasOptimized = false;
			for	(	BitClause
					&	rClause
				:	ReverseView()
				)
			{
				if	(	i_rRedundancyBuffer
						.ComputeClauseRedundancy
						(	rClause
						,	*this
						)
					)
				{
					m_aTermEnd = ::std::remove(&rClause, m_aTermEnd, rClause);
					bWasOptimized = true;
				}
			}
			return bWasOptimized;
		}


		auto constexpr
		(	OptimizeLength
		)	(	Optimizer
				&	i_rRedundancyBuffer
			)
		->	bool
		{
			bool bWasOptimized = OptimizeClauses(i_rRedundancyBuffer);
			bWasOptimized |= OptimizeLiterals(i_rRedundancyBuffer);
			return bWasOptimized;
		}

		auto constexpr
		(	ComputeLiteralRedundancy
		)	(	BitClause
					i_vLiteral
			,	BitClause const
				&	i_rCurrentClause
			,	Optimizer const
				&	i_rTerm
			)
		->	bool
		{
			clear();

			for	(	BitClause const
					&	rRedundancyClause
				:	i_rTerm
				)
			{
				//	skip containing clause
				if	(&rRedundancyClause == &i_rCurrentClause)
					continue;

				if	(i_rCurrentClause.Includes(rRedundancyClause))
				{
					insert(AbsorbingClause);
					return true;
				}

				if	(rRedundancyClause.Includes(i_vLiteral))
					continue;

				BitClause
					vRedundancyClause
				=	rRedundancyClause
				;
				vRedundancyClause.Erase(compl i_vLiteral);


				if	(vRedundancyClause.Intersects(compl i_rCurrentClause))
					continue;

				vRedundancyClause.Erase(i_rCurrentClause);

				insert(vRedundancyClause);
				if	(IsAbsorbing())
					return true;
			}

			Optimize(false);
			return IsAbsorbing();
		}

		auto constexpr
		(	OptimizeAlternatives
		)	(	Optimizer
				&	i_rRedundancyBuffer
			)
		->	bool
		{
			for	(	BitClause
					&	rClause
				:	*this
				)
			{
				for	(	IndexType
							nIndex
						{}
					;		nIndex
						<	SubtermLimit
					;	++	nIndex
					)
				{
					BitClause const
						vLiteral
					=	rClause
						[	nIndex
						]
					;
					if	(vLiteral == AbsorbingClause)
						continue;

					i_rRedundancyBuffer.ComputeLiteralRedundancy
					(	vLiteral
					,	rClause
					,	*this
					);

					if	(i_rRedundancyBuffer.IsIdentity())
						continue;

					BitClause
						vWithoutLiteral
					=	rClause
					;
					vWithoutLiteral.Erase(vLiteral);

					for	(	BitClause
								vRedundancyClause
						:	i_rRedundancyBuffer
						)
					{
						insert(vRedundancyClause.Insert(vWithoutLiteral));
					}
				}
			}

			return OptimizeClauses(i_rRedundancyBuffer);
		}

		auto constexpr
		(	Optimize
		)	(	bool
					i_bOptimizeAlternatives
			)
		->	bool
		{
			auto const
				nClauseCount
			=	(	m_aTermEnd
				-	m_aTermBegin
				)
			;
			if	(nClauseCount <= 1z)
				return false;

			auto const
				nRedundancyClauseCount
			=	(	//	#ClauseCount - 1 are needed to evaluate Redundancy of a Clause or Literal
					nClauseCount
				-	1z
				+	//	an additional #ClauseCount are needed to evaluate Terms with alternative Clauses
					i_bOptimizeAlternatives
				*	nClauseCount
				)
			;

			Optimizer
				vRedundancyBuffer
			{	static_cast<::std::size_t>
				(	nRedundancyClauseCount
				)
			};

			bool bWasOptimized = OptimizeLength(vRedundancyBuffer);
			if	(i_bOptimizeAlternatives)
			{
				bWasOptimized |= OptimizeAlternatives(vRedundancyBuffer);
			}
			return bWasOptimized;
		}
	};
}
