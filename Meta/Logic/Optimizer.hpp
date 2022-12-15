export module Meta.Logic:Optimizer;

export import :BitClause;
export import :BufferedSpan;
import :BitClauseIterator;

import Std;

namespace
	Meta::Logic
{
	export using
		BitClauseBuffer
	=	StaticBufferedSpan
		<	BitClause
		,	ClauseLimit
		>
	;

	export class
		Optimizer final
	{
		DynamicBufferedSpan<BitClause>
			m_vTerm
		;

		auto constexpr
		(	ReverseView
		)	()	const
		;

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
		(	ComputeClauseRedundancy
		)	(	BitClause const&
			,	Optimizer const&
			)
		->	bool
		;

		auto constexpr
		(	TrimRedundantClauses
		)	(	Optimizer&
			)
		->	void
		;

		auto constexpr
		(	SynthesizeClauses
		)	(	BitClause
			,	Optimizer const&
			)
		->	bool
		;

		auto constexpr
		(	TrimRedundantLiterals
		)	(	Optimizer&
			,	bool
			)
		->	bool
		;

		auto constexpr
		(	Optimize
		)	(	bool
			)
		->	bool
		;

	public:
		friend auto constexpr
		(	begin
		)	(	Optimizer const
				&	i_rOptimizer
			)
		->	BitClause*
		{	return begin(i_rOptimizer.m_vTerm);	}

		class
			Sentinel final
		{
			BitClause
			*	m_aTermBegin
			;
			USize const
			*	m_aTermSize
			;

			constexpr
			(	Sentinel
			)	(	BitClause
					*	i_aTermBegin
				,	USize const
					&	i_rTermSize
				)
			:	m_aTermBegin
				{	i_aTermBegin
				}
			,	m_aTermSize
				{	std::addressof(i_rTermSize)
				}
			{}

			friend auto constexpr
			(	end
			)	(	Optimizer const
					&
				)
			->	Sentinel
			;

		public:
			explicit(false) constexpr
			(	Sentinel
			)	()
			=	default;

			auto constexpr
			(	operator ==
			)	(	BitClause
					*	i_aClause
				)	const
			->	bool
			{
				return i_aClause == m_aTermBegin + *m_aTermSize;
			}
		};

		friend auto constexpr
		(	end
		)	(	Optimizer const
				&	i_rOptimizer
			)
		->	Sentinel
		{	//	does not get invalidated when the size changes
			return
			{	begin(i_rOptimizer)
			,	i_rOptimizer.m_vTerm.m_nElementCount
			};
		}

		explicit(true) constexpr
		(	Optimizer
		)	(	USize
					i_nClauseCount
			)
		:	m_vTerm
			{	typename DynamicBufferedSpan<BitClause>::BufferType
				{	i_nClauseCount
				}
			}
		{}


		constexpr
		(	operator
			BitClauseBuffer
		)	()	&&
		{
			Optimize(true);

			if	(ClauseLimit < size())
				throw "Optimized term contains to many clauses to copy!";

			BitClauseBuffer
				vArray
			{};
			vArray.AppendUnique(std::as_const(*this));

			return vArray;
		}

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
		(	erase
		)	(	BitClause
				*	i_aErasePosition
			)
		->	BitClause*
		;

		auto constexpr
		(	insert
		)	(	BitClause
			)
		->	BitClause*
		;

		auto constexpr
		(	insert
		)	(	::std::span<BitClause const>
			)
		->	void
		;
	};

	auto constexpr
	(	Optimizer
	::	ReverseView
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
		{	begin(m_vTerm)
		,	end(m_vTerm)
		};
		return vReverseView;
	}

	auto constexpr
	(	Optimizer
	::	AppendLiteralRedundancy
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
	(	Optimizer
	::	ComputeLiteralRedundancy
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
			=(	end(i_rTerm.m_vTerm)
			!=	::std::find
				(	begin(i_rTerm)
				,	end(i_rTerm.m_vTerm)
				,	Inverse(i_rLiteralClause)
				)
			);

			if	(bNegationContained)
				insert(BitClause::Absorbing());

			return bNegationContained;
		}

		for	(	BitClause const
				&	rRedundancyClause
			:	i_rTerm
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
	(	Optimizer
	::	ComputeClauseRedundancy
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
	(	Optimizer
	::	TrimRedundantClauses
	)	(	Optimizer
			&	i_rRedundancyBuffer
		)
	->	void
	{
		::std::sort(begin(m_vTerm), end(m_vTerm));
		for	(	BitClause
				&	rClause
			:	ReverseView()
			)
		{
			if	(	(	i_rRedundancyBuffer
					.	ComputeClauseRedundancy
					)(	rClause
					,	*this
					)
				)
			{
				erase(&rClause);
			}
		}
	}

	auto constexpr
	(	Optimizer
	::	SynthesizeClauses
	)	(	BitClause
				i_vSynthesizedClause
		,	Optimizer const
			&	i_rRedundancyCondition
		)
	->	bool
	{
		for	(	BitClause
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
	(	Optimizer
	::	TrimRedundantLiterals
	)	(	Optimizer
			&	i_rRedundancyBuffer
		,	bool
				i_bConsiderAlternatives
		)
	->	bool
	{
		for	(	BitClause const
				&	rClause
			:	*this
			)
		{
			for	(	BitClause const
						vLiteral
				:	rClause
				)
			{
				bool const
					bIsLiteralAlwaysRedundant
				=	(	i_rRedundancyBuffer
					.	ComputeLiteralRedundancy
					)(	vLiteral
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
	(	Optimizer
	::	Optimize
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

	auto constexpr
	(	Optimizer
	::	clear
	)	()
	->	void
	{	m_vTerm.clear();
	}

	auto constexpr
	(	Optimizer
	::	size
	)	()	const
	->	USize
	{	return
		static_cast<USize>
		(	end(m_vTerm)
		-	begin(m_vTerm)
		);
	}

	auto constexpr
	(	Optimizer
	::	IsAbsorbing
	)	()	const
	->	bool
	{	return
			size() >= 1uz
		and	m_vTerm[0uz].IsAbsorbing()
		;
	}

	auto constexpr
	(	Optimizer
	::	IsIdentity
	)	()	const
	->	bool
	{	return
			size()
		==	0uz
		;
	}

	auto constexpr
	(	Optimizer
	::	erase
	)	(	BitClause
			*	i_aEraseClause
		)
	->	BitClause*
	{
		if	(	i_aEraseClause < begin(m_vTerm)
			or	i_aEraseClause >= end(m_vTerm)
			)
			return end(m_vTerm);

		BitClause
		*	aNext
		=	::std::next
			(	i_aEraseClause
			)
		;

		::std::move
		(	aNext
		,	end(m_vTerm)
		,	i_aEraseClause
		);
		m_vTerm.pop_back();
		return aNext;
	}

	auto constexpr
	(	Optimizer
	::	insert
	)	(	BitClause
				i_vInsertClause
		)
	->	BitClause*
	{
		if	(	IsAbsorbing()
			or	i_vInsertClause.IsIdentity()
			)
			return end(m_vTerm);

		if	(	IsIdentity()
			or	i_vInsertClause.IsAbsorbing()
			)
		{
			*begin(m_vTerm) = i_vInsertClause;
			m_vTerm.m_nElementCount = 1uz;
			return begin(m_vTerm);
		}

		BitClause
		*	aInsertPosition
		=	end(m_vTerm)
		;
		for	(	BitClause
				&	rClause
			:	ReverseView()
			)
		{
			//	insert clause is redundant
			if	(i_vInsertClause.Includes(rClause))
				return end(m_vTerm);

			//	overwrite redundant clause
			if	(rClause.Includes(i_vInsertClause))
			{
				rClause = i_vInsertClause;
				erase(aInsertPosition);
				aInsertPosition = &rClause;
			}
		}

		if	(aInsertPosition == end(m_vTerm))
		{
			*aInsertPosition = i_vInsertClause;
			++m_vTerm.m_nElementCount;
		}
		return aInsertPosition;
	}

	auto constexpr
	(	Optimizer
	::	insert
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
}
