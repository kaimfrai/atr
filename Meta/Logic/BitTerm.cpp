export module Meta.Logic.BitTerm;

import Std.Algorithm;
import Std.Numeric;
import Meta.Logic.Optimizer;

export import Meta.Logic.BitClause;
export import Meta.Logic.BitClauseIterator;
export import Std.Span;
export import Std.Array;

namespace
	Meta::Logic
{
	export struct
		BitTerm final
	{
		BitClause const
			Clauses
		[	SubtermLimit
		]
		{};

		constexpr
		(	BitTerm
		)	()
		=	default;

		constexpr
		(	BitTerm
		)	(	BitClause
			)
		;

	private:
		template
			<	::std::size_t
				...	t_npIndex
			>
		explicit constexpr
		(	BitTerm
		)	(	BitClause const*
			,	::std::index_sequence
				<	t_npIndex
					...
				>
			)
		;

		constexpr
		(	BitTerm
		)	(	BitClause const
				(&
				)[	SubtermLimit
				]
			)
		;

		constexpr
		(	BitTerm
		)	(	BitClauseArray const&
			)
		;

	public:
		constexpr
		(	operator
			::std::span<BitClause const>
		)	()	const
		;

		auto constexpr
		(	Permutation
		)	(	::std::span<USize const>
			)	const
		->	BitTerm
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
		(	ClauseCount
		)	()	const
		->	USize
		;

		auto constexpr
		(	operator []
		)	(	USize
			)	const&
		->	BitClause
		;

		friend auto constexpr
		(	operator ==
		)	(	BitTerm const&
			,	BitTerm const&
			)
		->	bool
		;

		friend auto constexpr
		(	begin
		)	(	BitTerm const&
			)
		->	BitClause const*
		;

		friend auto constexpr
		(	end
		)	(	BitTerm const&
			)
		->	BitClause const*
		;

		friend auto constexpr
		(	Intersection
		)	(	BitTerm const&
			,	BitTerm const&
			)
		->	BitTerm
		;

		friend auto constexpr
		(	Union
		)	(	BitTerm const&
			,	BitTerm const&
			)
		->	BitTerm
		;

		friend auto constexpr
		(	Negation
		)	(	BitTerm const&
			)
		->	BitTerm
		;
	};

	constexpr
	(	BitTerm
	::	BitTerm
	)	(	BitClause
				i_vClause
		)
	:	Clauses
		{	i_vClause
		}
	{}

	template
		<	::std::size_t
			...	t_npIndex
		>
	constexpr
	(	BitTerm
	::	BitTerm
	)	(	BitClause const
			*	i_aClauses
		,	::std::index_sequence
			<	t_npIndex
				...
			>
		)
	:	Clauses
		{	i_aClauses
			[	t_npIndex
			]
			...
		}
	{}

	constexpr
	(	BitTerm
	::	BitTerm
	)	(	BitClause const
			(&	i_rClauses
			)[	SubtermLimit
			]
		)
	:	BitTerm
		{	+i_rClauses
		,	::std::make_index_sequence<SubtermLimit>{}
		}
	{}

	constexpr
	(	BitTerm
	::	BitTerm
	)	(	BitClauseArray const
			&	i_rClauses
		)
	:	BitTerm
		{	i_rClauses.data()
		,	::std::make_index_sequence<SubtermLimit>{}
		}
	{}

	constexpr
	(	BitTerm
	::	operator
		::std::span<BitClause const>
	)	()	const
	{	return {begin(*this), end(*this)};	}

	auto constexpr
	(	BitTerm
	::	Permutation
	)	(	::std::span<USize const>
				i_vPermutation
		)	const
	->	BitTerm
	{
		Optimizer
			vPermutationResult
		{	2uz
		*	ClauseCount()
		};

		for	(	BitClause
				vClause
			:	*this
			)
			vPermutationResult.insert(vClause.Permutation(i_vPermutation));

		return { ::std::move(vPermutationResult) };
	}

	auto constexpr
	(	BitTerm
	::	IsAbsorbing
	)	()	const
	->	bool
	{	return Clauses[0uz].IsAbsorbing();	}

	auto constexpr
	(	BitTerm
	::	IsIdentity
	)	()	const
	->	bool
	{	return Clauses[0uz].IsIdentity();	}

	auto constexpr
	(	BitTerm
	::	ClauseCount
	)	()	const
	->	USize
	{	return
		static_cast<USize>
		(	end(*this)
		-	begin(*this)
		);
	}

	auto constexpr
	(	BitTerm
	::	operator []
	)	(	USize
				i_nIndex
		)	const&
	->	BitClause
	{
		if	(i_nIndex >= SubtermLimit)
			throw "Index beyond Subtermlimit!";

		return Clauses[i_nIndex];
	}

	auto constexpr
	(	operator ==
	)	(	BitTerm const
			&	i_rLeftTerm
		,	BitTerm const
			&	i_rRightTerm
		)
	->	bool
	{	return
		::std::equal
		(	begin(i_rLeftTerm)
		,	end(i_rLeftTerm)
		,	begin(i_rRightTerm)
		,	end(i_rRightTerm)
		);
	}

	auto constexpr
	(	begin
	)	(	BitTerm const
			&	i_rTerm
		)
	->	BitClause const*
	{	return i_rTerm.Clauses;	}

	auto constexpr
	(	end
	)	(	BitTerm const
			&	i_rTerm
		)
	->	BitClause const*
	{	return
		::std::lower_bound
		(	i_rTerm.Clauses
		,	i_rTerm.Clauses + SubtermLimit
		,	BitClause::Identity()
		);
	}

	auto constexpr
	(	Intersection
		[[nodiscard]]
	)	(	BitTerm const
			&	i_rLeftTerm
		,	BitTerm const
			&	i_rRightTerm
		)
	->	BitTerm
	{
		if	(i_rLeftTerm.IsAbsorbing() or i_rRightTerm.IsAbsorbing())
			return BitClause::Absorbing();

		if	(i_rLeftTerm.IsIdentity())
			return i_rRightTerm;
		if	(i_rRightTerm.IsIdentity())
			return i_rLeftTerm;

		if	(i_rLeftTerm == i_rRightTerm)
			return i_rLeftTerm;

		auto const
			nLeftClauseCount
		=	i_rLeftTerm.ClauseCount()
		;

		auto const
			nRightClauseCount
		=	i_rRightTerm.ClauseCount()
		;

		auto const
			nMaxClauseCount
		=	//	while creating alternative clauses up to twice the amount of clauses are needed
			2uz
		*	(	nLeftClauseCount
			+	nRightClauseCount
			)
		;

		Optimizer
			vOptimizer
		{	nMaxClauseCount
		};

		vOptimizer.insert(i_rLeftTerm);
		vOptimizer.insert(i_rRightTerm);

		return {::std::move(vOptimizer)};
	}

	auto constexpr
	(	Union
		[[nodiscard]]
	)	(	BitTerm const
			&	i_rLeftTerm
		,	BitTerm const
			&	i_rRightTerm
		)
	->	BitTerm
	{
		if	(i_rLeftTerm.IsIdentity() or i_rRightTerm.IsIdentity())
			return BitClause::Identity();

		if	(i_rLeftTerm.IsAbsorbing())
			return i_rRightTerm;
		if	(i_rRightTerm.IsAbsorbing())
			return i_rLeftTerm;

		if	(i_rLeftTerm == i_rRightTerm)
			return i_rLeftTerm;

		auto const
			nMaxClauseCount
		=	//	while creating alternative clauses up to twice the amount of clauses are needed
			2uz
		*	i_rLeftTerm.ClauseCount()
		*	i_rRightTerm.ClauseCount()
		;

		Optimizer
			vOptimizer
		{	nMaxClauseCount
		};

		for	(	BitClause
					i_vLeftClause
			:	i_rLeftTerm
			)
		{
			for	(	BitClause
						i_vRightClause
				:	i_rRightTerm
				)
			{
				vOptimizer.insert(Union(i_vLeftClause, i_vRightClause));
			}
		}

		return {::std::move(vOptimizer)};
	}

	auto constexpr
	(	Negation
		[[nodiscard]]
	)	(	BitTerm const
			&	i_rTerm
		)
	->	BitTerm
	{
		if	(i_rTerm.IsAbsorbing())
			return BitClause::Identity();

		if	(i_rTerm.IsIdentity())
			return BitClause::Absorbing();

		USize const
			nMaxClauseCount
		=	::std::transform_reduce
			(	begin(i_rTerm)
			,	end(i_rTerm)
			,	1uz
			,	::std::multiplies<USize>{}
			,	::std::mem_fn(&BitClause::LiteralCount)
			)
		;

		Optimizer
			vOptimizer
		{	nMaxClauseCount
		};
		vOptimizer.insert(BitClause::Absorbing());

		Optimizer
			vResultBuffer
		{	nMaxClauseCount
		};

		for	(	BitClause const
					vClause
			:	i_rTerm
			)
		{
			for	(	BitClause const
						vLiteral
				:	vClause
				)
			{
				BitClause const
					vNegatedLiteral
				=	Inverse(vLiteral)
				;
				for	(	BitClause const
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
			swap(vResultBuffer, vOptimizer);
		}

		return {::std::move(vOptimizer)};
	}
}
