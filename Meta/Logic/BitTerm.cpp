export module Meta.Logic.BitTerm;

import Std.Algorithm;
import Std.Numeric;
import Meta.Logic.Optimizer;

export import Meta.Logic.BitClause;
export import Std.Span;

namespace
	Meta::Logic
{
	export struct
		BitTerm
	{
		BitClause
			Clauses
		[	SubtermLimit
		]{};

		constexpr
		(	BitTerm
		)	(	BitClause
				=	BitClause::Identity()
			)
		;

		auto constexpr
		(	Permutate
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
		)	(	BitTerm&
			)
		->	BitClause*
		;

		friend auto constexpr
		(	begin
		)	(	BitTerm const&
			)
		->	BitClause const*
		;

		friend auto constexpr
		(	end
		)	(	BitTerm&
			)
		->	BitClause*
		;

		friend auto constexpr
		(	end
		)	(	BitTerm const&
			)
		->	BitClause const*
		;

		friend auto constexpr
		(	ClauseCount
		)	(	BitTerm const&
			)
		->	::std::size_t
		;

		friend auto constexpr
		(	operator or
		)	(	BitTerm const&
			,	BitTerm const&
			)
		->	BitTerm
		;

		friend auto constexpr
		(	operator and
		)	(	BitTerm const&
			,	BitTerm const&
			)
		->	BitTerm;

		friend auto constexpr
		(	operator not
		)	(	BitTerm const&
			)
		->	BitTerm
		;
	};

	constexpr
	(	BitTerm
		::BitTerm
	)	(	BitClause
				i_vClause
		)
	:	Clauses
		{	i_vClause
		}
	{}

	auto constexpr
	(	BitTerm
		::Permutate
	)	(	::std::span<USize const>
				i_vPermutation
		)	const
	->	BitTerm
	{
		BitTerm
			vCopy
		=	*this
		;

		for	(	BitClause
				&	rClause
			:	vCopy
			)
			(	rClause
			=	rClause.Permutate(i_vPermutation)
			);

		return vCopy;
	}

	auto constexpr
	(	BitTerm
		::IsAbsorbing
	)	()	const
	->	bool
	{	return Clauses[0uz].IsAbsorbing();	}

	auto constexpr
	(	BitTerm
		::IsIdentity
	)	()	const
	->	bool
	{	return Clauses[0uz].IsIdentity();	}

	auto constexpr
	(	BitTerm
		::operator []
	)	(	USize
				i_nIndex
		)	const&
	->	BitClause
	{
		if	(IsAbsorbing())
			return Clauses[0uz];

		if	(i_nIndex >= ClauseCount(*this))
			return BitClause::Identity();

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
	)	(	BitTerm
			&	i_rTerm
		)
	->	BitClause*
	{	return i_rTerm.Clauses;	}

	auto constexpr
	(	begin
	)	(	BitTerm const
			&	i_rTerm
		)
	->	BitClause const*
	{	return i_rTerm.Clauses;	}

	auto constexpr
	(	end
	)	(	BitTerm
			&	i_rTerm
		)
	->	BitClause*
	{	return
		::std::lower_bound
		(	i_rTerm.Clauses
		,	i_rTerm.Clauses + SubtermLimit
		,	BitClause::Identity()
		);
	}

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
	(	ClauseCount
	)	(	BitTerm const
			&	i_rTerm
		)
	->	::std::size_t
	{
		if	(i_rTerm.IsAbsorbing())
			return 0uz;

		return
		static_cast<::std::size_t>
		(	end(i_rTerm)
		-	begin(i_rTerm)
		);
	}

	auto constexpr
	(	operator or [[nodiscard]]
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
		=	ClauseCount(i_rLeftTerm)
		;

		auto const
			nRightClauseCount
		=	ClauseCount(i_rRightTerm)
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

		vOptimizer.insert({i_rLeftTerm.Clauses, nLeftClauseCount});
		vOptimizer.insert({i_rRightTerm.Clauses, nRightClauseCount});

		vOptimizer.Optimize
		(	true
		);
		BitTerm
			vResult
		{};

		vOptimizer.CopyInto(vResult.Clauses);

		return vResult;
	}

	auto constexpr
	(	operator and [[nodiscard]]
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
		*	ClauseCount(i_rLeftTerm)
		*	ClauseCount(i_rRightTerm)
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
				vOptimizer.insert(i_vLeftClause bitor i_vRightClause);
			}
		}
		vOptimizer.Optimize(true);

		BitTerm
			vResult
		{};
		vOptimizer.CopyInto(vResult.Clauses);
		return vResult;
	}

	auto constexpr
	(	operator not [[nodiscard]]
	)	(	BitTerm const
			&	i_rTerm
		)
	->	BitTerm
	{
		if	(i_rTerm.IsAbsorbing())
			return BitClause::Identity();

		if	(i_rTerm.IsIdentity())
			return BitClause::Absorbing();

		if	(ClauseCount(i_rTerm) == 1uz)
		{
			BitTerm vResult{};
			for	(	USize
						nLiteralIndex
					=	0uz
					,	nLiteralCount
					=	0uz
				;	(	(	nLiteralIndex
						<	SubtermLimit
						)
					and	(	nLiteralCount
						<	LiteralCount(i_rTerm[0uz])
						)
					)
				;	++	nLiteralIndex
				)
			{
				BitClause const
					vLiteral
				=	i_rTerm[0uz]
					[	nLiteralIndex
					]
				;
				if	(vLiteral.IsAbsorbing())
					continue;

				(	vResult.Clauses[nLiteralCount]
				=	compl
					vLiteral
				);
				++nLiteralCount;
			}

			return
				vResult
			;
		}

		if	(	::std::all_of
				(	begin(i_rTerm)
				,	end(i_rTerm)
				,	[]	(	BitClause
								i_vClause
						)
					->	bool
					{	return
							LiteralCount
							(	i_vClause
							)
						==	1uz
						;
					}
				)
			)
		{
			return
			::std::transform_reduce
			(	begin(i_rTerm)
			,	end(i_rTerm)
			,	BitClause::Absorbing()
			,	::std::bit_or<>{}
			,	::std::bit_not<>{}
			);
		}

		return
		::std::transform_reduce
		(	begin(i_rTerm)
		,	end(i_rTerm)
		,	BitTerm{BitClause::Absorbing()}
		,	::std::logical_and<>{}
		,	::std::logical_not<>{}
		);
	}
}