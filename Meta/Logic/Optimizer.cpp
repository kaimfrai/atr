export module Meta.Logic.Optimizer;

import Std.Algorithm;
import Std.Numeric;
import Std.Iterator;
import Std.Span;

import Meta.Logic.BitClauseIterator;

export import Meta.Logic.BitClause;

namespace
	Meta::Logic
{
	export class
		Optimizer
	{
		BitClause
		*	m_aTermBegin
		;
		BitClause
		*	m_aTermEnd
		;

		auto constexpr
		(	ReverseView
		)	()	const
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
		(	OptimizeClauses
		)	(	Optimizer
				&
			)
		->	void
		;

		auto constexpr
		(	OptimizeAlternatives
		)	(	Optimizer&
			,	bool
			)
		->	void
		;

		auto constexpr
		(	Optimize
		)	(	bool
			)
		->	void
		;

	public:
		friend auto constexpr
		(	swap
		)	(	Optimizer&
			,	Optimizer&
			)
		->	void
		;

		friend auto constexpr
		(	begin
		)	(	Optimizer const
				&	i_rOptimizer
			)
		->	BitClause*
		;

		class
			Sentinel final
		{
			BitClause
			*	const
			&	m_rTermEnd
			;

			constexpr
			(	Sentinel
			)	(	BitClause
					*	const
					&	i_rTermEnd
				)
			:	m_rTermEnd
				{	i_rTermEnd
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
			auto constexpr
			(	operator ==
			)	(	BitClause
					*	i_aClause
				)	const
			->	bool
			{
				return i_aClause == m_rTermEnd;
			}
		};

		friend auto constexpr
		(	end
		)	(	Optimizer const
				&	i_rOptimizer
			)
		->	Sentinel
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

		constexpr
		(	operator
			BitClauseArray
		)	()	&&
		{
			Optimize(true);
			if	(SubtermLimit < size())
				throw "Optimized term contains to many clauses to copy!";

			BitClauseArray
				vArray
			{};

			::std::copy
			(	m_aTermBegin
			,	m_aTermEnd
			,	begin(vArray)
			);
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

			BitClause const
				vSynthesizedClause
			=	Difference
				(	rRedundancyClause
				,	Inverse(i_vLiteral)
				)
			;

			if	(vSynthesizedClause.Intersects(Inverse(i_rCurrentClause)))
				continue;

			insert
			(	Difference
				(	vSynthesizedClause
				,	i_rCurrentClause
				)
			);

			if	(IsAbsorbing())
				return true;
		}

		Optimize(false);
		return IsAbsorbing();
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
	{	return
		ComputeLiteralRedundancy
		(	BitClause::Identity()
		,	i_rCurrentClause
		,	i_rTerm
		);
	}

	auto constexpr
	(	Optimizer
		::OptimizeClauses
	)	(	Optimizer
			&	i_rRedundancyBuffer
		)
	->	void
	{
		::std::sort(m_aTermBegin, m_aTermEnd);
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
		::OptimizeAlternatives
	)	(	Optimizer
			&	i_rRedundancyBuffer
		,	bool
				i_bConsiderAlternatives
		)
	->	void
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
				if	(	(	i_rRedundancyBuffer
						.	ComputeLiteralRedundancy
						)(	vLiteral
						,	rClause
						,	*this
						)
					or	i_bConsiderAlternatives
					)
				{
					BitClause const
						vSynthesizedClause
					=	Difference
						(	rClause
						,	vLiteral
						)
					;

					for	(	BitClause
								vRedundancyClause
						:	i_rRedundancyBuffer
						)
					{
						insert
						(	Union
							(	vRedundancyClause
							,	vSynthesizedClause
							)
						);
					}
				}
			}
		}

		if	(i_bConsiderAlternatives)
			OptimizeClauses(i_rRedundancyBuffer);
	}

	auto constexpr
	(	Optimizer
		::Optimize
	)	(	bool
				i_bConsiderAlternatives
		)
	->	void
	{
		auto const
			nClauseCount
		=	size()
		;
		if	(nClauseCount <= 1uz)
			return;

		Optimizer
			vRedundancyBuffer
		{	//	#ClauseCount - 1 are needed to evaluate redundancy of a clause or literal
			nClauseCount -	1uz
		+	//	an additional #ClauseCount are needed to evaluate terms with alternative clauses
			i_bConsiderAlternatives
		*	nClauseCount
		};

		OptimizeAlternatives
		(	vRedundancyBuffer
		,	i_bConsiderAlternatives
		);
	}

	auto constexpr
	(	swap
	)	(	Optimizer
			&	i_rLeft
		,	Optimizer
			&	i_rRight
		)
	->	void
	{
		::std::swap
		(	i_rLeft.m_aTermBegin
		,	i_rRight.m_aTermBegin
		);
		::std::swap
		(	i_rLeft.m_aTermEnd
		,	i_rRight.m_aTermEnd
		);
	}

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
	->	Optimizer::Sentinel
	{	//	does not get invalidated when the size changes
		return {i_rOptimizer.m_aTermEnd};
	}

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
		::IsAbsorbing
	)	()	const
	->	bool
	{	return
			size() >= 1uz
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
		::erase
	)	(	BitClause
			*	i_aEraseClause
		)
	->	BitClause*
	{
		if	(	not
				(	i_aEraseClause >= m_aTermBegin
				and	i_aEraseClause < m_aTermEnd
				)
			)
			return m_aTermEnd;

		BitClause
		*	aNext
		=	::std::next
			(	i_aEraseClause
			)
		;
		(	m_aTermEnd
		=	::std::move
			(	aNext
			,	m_aTermEnd
			,	i_aEraseClause
			)
		);
		return aNext;
	}

	auto constexpr
	(	Optimizer
		::insert
	)	(	BitClause
				i_vInsertClause
		)
	->	BitClause*
	{
		if	(	IsAbsorbing()
			or	i_vInsertClause.IsIdentity()
			)
			return m_aTermEnd;

		if	(	IsIdentity()
			or	i_vInsertClause.IsAbsorbing()
			)
		{
			*m_aTermBegin = i_vInsertClause;
			m_aTermEnd = ::std::next(m_aTermBegin);
			return m_aTermBegin;
		}

		BitClause
		*	aInsertPosition
		=	m_aTermEnd
		;
		for	(	BitClause
				&	rClause
			:	ReverseView()
			)
		{
			//	insert clause is redundant
			if	(i_vInsertClause.Includes(rClause))
				return m_aTermEnd;

			//	overwrite redundant clause
			if	(rClause.Includes(i_vInsertClause))
			{
				rClause = i_vInsertClause;
				erase(aInsertPosition);
				aInsertPosition = &rClause;
			}
		}

		if	(aInsertPosition == m_aTermEnd)
			*(m_aTermEnd++) = i_vInsertClause;
		return aInsertPosition;
	}

	auto constexpr
	(	Optimizer
		::insert
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
