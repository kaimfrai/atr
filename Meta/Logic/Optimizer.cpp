export module Meta.Logic.Optimizer;

import Std.Algorithm;
import Std.Numeric;
import Std.Iterator;
import Std.Span;

export import Meta.Logic.BitClause;

namespace
	Meta::Logic
{
	export class
		Optimizer
	{
		BitClause
		*	const
			m_aTermBegin
		;
		BitClause
		*	m_aTermEnd
		;

	public:
		friend auto constexpr
		(	begin
		)	(	Optimizer const
				&	i_rOptimizer
			)
		->	BitClause*
		;

		friend auto constexpr
		(	end
		)	(	Optimizer const
				&	i_rOptimizer
			)
		->	BitClause*
		;

		explicit constexpr
		(	Optimizer
		)	(	USize
			)
		;

		constexpr
		(	compl Optimizer
		)	()
		;

		auto constexpr
		(	CopyInto
		)	(	::std::span<BitClause>
			)	const
		->	void
		;

		auto constexpr
		(	clear
		)	()
		->	void
		;

		auto constexpr
		(	size
		)	()	const
		->	USize
		;

		auto constexpr
		(	operator[]
		)	(	USize
			)	&
		->	BitClause&
		;

		auto constexpr
		(	operator[]
		)	(	USize
			)	const&
		->	BitClause const&
		;

		auto constexpr
		(	IsAbsorbing
		)	()	const
		->	bool
		;

		auto constexpr
		(	IsIdentity
		)	()	const
		->	bool
		;

		auto constexpr
		(	ReverseView
		)	()	const
		;

		auto constexpr
		(	insert
		)	(	BitClause
			)
		->	bool
		;

		auto constexpr
		(	insert
		)	(	::std::span<BitClause const>
			)
		->	bool
		;

		auto constexpr
		(	OptimizeLiterals
		)	(	Optimizer&
			)
		->	bool
		;

		auto constexpr
		(	ComputeClauseRedundancy
		)	(	BitClause const&
			,	Optimizer const&
			)
		->	bool
		;

		auto constexpr
		(	OptimizeClauses
		)	(	Optimizer
				&
			)
		->	bool
		;

		auto constexpr
		(	OptimizeLength
		)	(	Optimizer&
			)
		->	bool
		;

		auto constexpr
		(	ComputeLiteralRedundancy
		)	(	BitClause
			,	BitClause const&
			,	Optimizer const&
			)
		->	bool
		;

		auto constexpr
		(	OptimizeAlternatives
		)	(	Optimizer&
			)
		->	bool
		;

		auto constexpr
		(	Optimize
		)	(	bool
			)
		->	bool
		;
	};

	auto constexpr
	(	begin
	)	(	Optimizer const
			&	i_rOptimizer
		)
	->	BitClause*
	{	return i_rOptimizer.m_aTermBegin;	}

	auto constexpr
	(	end
	)	(	Optimizer const
			&	i_rOptimizer
		)
	->	BitClause*
	{	return i_rOptimizer.m_aTermEnd;	}

	constexpr
	(	Optimizer
		::Optimizer
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

	constexpr
	(	Optimizer
		::compl Optimizer
	)	()
	{
		delete[]
			m_aTermBegin
		;
	}

	auto constexpr
	(	Optimizer
		::CopyInto
	)	(	::std::span<BitClause>
				i_vOutTerm
		)	const
	->	void
	{
		if	(i_vOutTerm.size() < size())
			throw "Optimized term contains to many clauses to copy!";

		::std::copy
		(	m_aTermBegin
		,	m_aTermEnd
		,	begin(i_vOutTerm)
		);
	}

	auto constexpr
	(	Optimizer
		::clear
	)	()
	->	void
	{	m_aTermEnd = m_aTermBegin;	}

	auto constexpr
	(	Optimizer
		::size
	)	()	const
	->	USize
	{	return
		static_cast<USize>
		(	m_aTermEnd
		-	m_aTermBegin
		);
	}

	auto constexpr
	(	Optimizer
		::operator[]
	)	(	USize
				i_nIndex
		)	&
	->	BitClause&
	{	return m_aTermBegin[i_nIndex];	}

	auto constexpr
	(	Optimizer
		::operator[]
	)	(	USize
				i_nIndex
		)	const&
	->	BitClause const&
	{	return m_aTermBegin[i_nIndex];	}

	auto constexpr
	(	Optimizer
		::IsAbsorbing
	)	()	const
	->	bool
	{	return
			size() == 1uz
		and	m_aTermBegin[0uz].IsAbsorbing()
		;
	}

	auto constexpr
	(	Optimizer
		::IsIdentity
	)	()	const
	->	bool
	{	return
			size()
		==	0uz
		;
	}

	auto constexpr
	(	Optimizer
		::ReverseView
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
	(	Optimizer
		::insert
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
	(	Optimizer
		::insert
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
	(	Optimizer
		::OptimizeLiterals
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
			for	(	USize
						nIndex
					=	0uz
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
				if	(vLiteral.IsAbsorbing())
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
						insert(BitClause::Absorbing());
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
	(	Optimizer
		::ComputeClauseRedundancy
	)	(	BitClause const
			&	i_rCurrentClause
		,	Optimizer const
			&	i_rTerm
		)
	->	bool
	{
		return ComputeLiteralRedundancy(BitClause::Identity(), i_rCurrentClause, i_rTerm);
	}

	auto constexpr
	(	Optimizer
		::OptimizeClauses
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
	(	Optimizer
		::OptimizeLength
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
	(	Optimizer
		::ComputeLiteralRedundancy
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
				insert(BitClause::Absorbing());
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
	(	Optimizer
		::OptimizeAlternatives
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
			for	(	USize
						nIndex
					=	0uz
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
				if	(vLiteral.IsAbsorbing())
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
	(	Optimizer
		::Optimize
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
		{	static_cast<USize>
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
}
