export module Meta.Logic:BitTerm;

export import :BitClause;
export import :BitClauseIterator;
import :Optimizer;

export import Meta.Arithmetic;

export import Std;


using ::Meta::Arithmetic::CountOneBits;
using ::Meta::Arithmetic::TestBit;

namespace
	Meta::Logic
{
	export struct
		BitTerm final
	{
		BitClause const
			Clauses
		[	ClauseLimit
		]{};

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
				)[	ClauseLimit
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
		(	LiteralField
		)	()	const
		->	USize
		;

		auto constexpr
		(	Permutation
		)	(	::std::span<USize const>
			)	const
		->	BitTerm
		;

		auto constexpr
		(	TrimLiterals
		)	()	const
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

	export auto constexpr
	(	Union
	)	(	BitTerm const&
		,	BitTerm const&
		)
	->	BitTerm
	;

	export auto constexpr
	(	Intersection
	)	(	BitTerm const&
		,	BitTerm const&
		)
	->	BitTerm
	;

	export auto constexpr
	(	operator ==
	)	(	BitTerm const&
		,	BitTerm const&
		)
	->	bool
	;

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
			)[	ClauseLimit
			]
		)
	:	BitTerm
		{	+i_rClauses
		,	::std::make_index_sequence<ClauseLimit>{}
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
		,	::std::make_index_sequence<ClauseLimit>{}
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
	::	LiteralField
	)	()	const
	->	USize
	{	return
		::std::transform_reduce
		(	begin(*this)
		,	end(*this)
		,	0uz
		,	::std::bit_or<USize>{}
		,	::std::mem_fn(&BitClause::LiteralField)
		);
	}

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
	::	TrimLiterals
	)	()	const
	{
		auto const
			vLiteralField
		=	LiteralField
			()
		;
		auto const
			nRequiredLiteralCount
		=	CountOneBits(vLiteralField)
		;

		auto const
			nMaxLiteralCount
		=	::std::bit_width
			(	vLiteralField
			)
		;

		if	(	nRequiredLiteralCount
			==	nMaxLiteralCount
			)
			return *this;
		else
		{
			USize
				vTrimLiteralPermutation
			[	LiteralLimit
			]{};

			for	(	USize
						nIndex
					=	0uz
				,		nPermutation
					=	0uz
				;		nIndex
					<	nMaxLiteralCount
				;	++	nIndex
				)
			{
				vTrimLiteralPermutation
				[	nIndex
				]=	nPermutation
				;
				nPermutation += TestBit(vLiteralField, nIndex);
			}

			return
			Permutation
			(	::std::span<USize const>
				{	+vTrimLiteralPermutation
				,	nMaxLiteralCount
				}
			);
		}
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
		if	(i_nIndex >= ClauseLimit)
			throw "Index beyond ClauseLimit!";

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
		,	i_rTerm.Clauses + ClauseLimit
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
			nCombinedLiteralCount
		=	CountOneBits
			(	i_rLeftTerm.LiteralField()
			bitor
				i_rRightTerm.LiteralField()
			)
		;

		//	at most 2^LiteralCount clauses are possible
		auto const
			nMaxClauseCount
		=	1uz
		<<	nCombinedLiteralCount
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
			nCombinedLiteralCount
		=	CountOneBits
			(	i_rLeftTerm.LiteralField()
			bitor
				i_rRightTerm.LiteralField()
			)
		;

		//	at most 2^LiteralCount clauses are possible
		auto const
			nMaxClauseCount
		=	1uz
		<<	nCombinedLiteralCount
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
