export module Meta.Logic;

export import Meta.Logic.BitTerm;

export import Meta.Concepts;
export import Meta.TupleSet;

import Std.Array;
import Std.Bit;

namespace
	Meta
{
	template
		<	Logic::BitClause
				t_vLiteral
		,	typename
			...	t_tpPredicate
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	EvaluateLiteral
	)	(	TupleSet<t_tpPredicate...> const
			&	i_rPredicates
		,	t_tpArgument
			&&
			...	i_rpArgument
		)
	->	bool
	{
		if	constexpr(t_vLiteral.Positive)
		{
			auto constexpr nIndex = CountLowerZeroBits(t_vLiteral.Positive);
			return
			i_rPredicates[Index<nIndex>]
			(	::std::forward<t_tpArgument>(i_rpArgument)
				...
			);
		}
		else
		{
			auto constexpr nIndex = CountLowerZeroBits(t_vLiteral.Negative);
			return
			not
			i_rPredicates[Index<nIndex>]
			(	::std::forward<t_tpArgument>(i_rpArgument)
				...
			);
		}
	}

	template
		<	Logic::BitClause
				t_vClause
		,	USize
			...	t_npLiteralIndex
		,	typename
			...	t_tpPredicate
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	EvaluateClause
	)	(	IndexToken
			<	t_npLiteralIndex
				...
			>
		,	TupleSet<t_tpPredicate...> const
			&	i_rPredicates
		,	t_tpArgument
			&&
			...	i_rpArgument
		)
	->	bool
	{	return
		(	...
		and	EvaluateLiteral<t_vClause[t_npLiteralIndex]>
			(	i_rPredicates
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			)
		);
	}

	template
		<	Logic::BitTerm
				t_vTerm
		,	USize
			...	t_npClauseIndex
		,	typename
			...	t_tpPredicate
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	EvaluateTerm
	)	(	IndexToken
			<	t_npClauseIndex
				...
			>
		,	TupleSet<t_tpPredicate...> const
			&	i_rPredicates
		,	t_tpArgument
			&&
			...	i_rpArgument
		)
	->	bool
	{
		return
		(	...
		or	EvaluateClause<t_vTerm[t_npClauseIndex]>
			(	Sequence
				<	t_vTerm[t_npClauseIndex]
				.	LiteralCount()
				>()
			,	i_rPredicates
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			)
		);
	}

	template
		<	typename
				t_tResult
		>
	using
		BinaryTermFunction
	=	auto
		(*)	(	Logic::BitTerm const&
			,	Logic::BitTerm const&
			)
		->	t_tResult
	;

	BinaryTermFunction<Logic::BitTerm> constexpr inline
		ComputeDisjunction
	=	&Logic::Intersection
	;
	BinaryTermFunction<Logic::BitTerm>  constexpr inline
		ComputeConjunction
	=	&Logic::Union
	;
	BinaryTermFunction<bool>  constexpr inline
		ComputeEquivalence
	=	&Logic::operator==
	;

	template
		<	typename
			...	t_tpPredicate
		>
	auto constexpr inline
		DeduceTupleSet
	=	static_cast
		<	TupleSet
			<	t_tpPredicate
				...
			>	const
			*
		>(	nullptr
		)
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpLeftPredicate
		,	typename
			...	t_tpRightPredicate
		>
	static auto constexpr
	(	Compute
	)	(	BinaryTermFunction<t_tResult>
				i_fCompute
		,	Logic::BitTerm const
			&	i_rLeftTerm
		,	TupleSet<t_tpLeftPredicate...> const
			*	i_aDeduceLeftPredicates
		,	Logic::BitTerm const
			&	i_rRightTerm
		,	TupleSet<t_tpRightPredicate...> const
			*	i_aDeduceRightPredicates
		)
	->	t_tResult
	{
		using
			tPredicateUnion
		=	decltype
			(	i_aDeduceLeftPredicates
			->	Union
				(	*i_aDeduceRightPredicates
				)
			)
		;
		static_assert
		(	(	tPredicateUnion
			::	size()
			<=	Logic::SubtermLimit
			)
		,	"Exceeded maximum amount of predicates per term!"
		);

		::std::array<USize, sizeof...(t_tpRightPredicate)> constexpr
			vPermutationArray
		={	(	tPredicateUnion
			::	IndexOf(Type<t_tpRightPredicate>)
			)
			...
		};

		return
		i_fCompute
		(	i_rLeftTerm
		,		i_rRightTerm
			.	Permutation
				(	vPermutationArray
				)
		);
	}

	template
		<	USize
				t_vPredicateField
		,	typename
			...	t_tpPredicate
		>
	auto constexpr
	(	TrimPredicates
	)	(	TupleSet<t_tpPredicate...> const
			&	i_rPredicates
		)
	{
		auto constexpr
			nRequiredPredicateCount
		=	CountOneBits(t_vPredicateField)
		;
		if	constexpr
			(	nRequiredPredicateCount
			==	sizeof...(t_tpPredicate)
			)
			return i_rPredicates;
		else
			return
			[	&i_rPredicates
			]	<	USize
					...	t_npIndex
				>(	IndexToken<t_npIndex...>
				)
			{	return
				TupleSet
				{	i_rPredicates
					[	Index
						<	GetIndexOfNthOneBit
							(	t_vPredicateField
							,	t_npIndex
							)
						>
					]
					...
				};
			}(	Sequence<nRequiredPredicateCount>()
			);
	}
}

export namespace
	Meta
{
	template
		<	Logic::BitTerm
				t_vTerm
		,	typename
			...	t_tpPredicate
		>
	class
		Term
	{
		template<Logic::BitTerm, typename...>
		friend class Term;

		explicit constexpr
		(	Term
		)	(	TupleSet<t_tpPredicate...> const
				&	i_rPredicates
			)
		:	Predicates
			{	i_rPredicates
			}
		{}

		template
			<	typename
				...	t_tpNewPredicate
			>
		static auto constexpr
		(	SetPredicates
		)	(	TupleSet
				<	t_tpNewPredicate
					...
				>	const
				&	i_rPredicates
			)
		->	Term
			<	t_vTerm
			,	t_tpNewPredicate
				...
			>
		{	return
			Term
			<	t_vTerm
			,	t_tpNewPredicate
				...
			>{	i_rPredicates
			};
		}

		template
			<	BinaryTermFunction<Logic::BitTerm>
					i_fCompute
			,	Logic::BitTerm
					t_vRightTerm
			,	typename
				...	t_tpRightPredicate
			>
		auto constexpr
		(	ComputeTerm
		)	(	Term<t_vRightTerm, t_tpRightPredicate...> const
				&	i_rRight
			)	const
		{
			auto constexpr
				vResultTerm
			=	Compute
				(	i_fCompute
				,	t_vTerm
				,	DeduceTupleSet<t_tpPredicate...>
				,	t_vRightTerm
				,	DeduceTupleSet<t_tpRightPredicate...>
				)
			;

			auto constexpr
				vResultPredicateField
			=	vResultTerm.PredicateField()
			;

			if	constexpr
				(	vResultPredicateField
				==	0uz
				)
				return Term<vResultTerm>{};
			else
				return
					Term
					<	vResultTerm.TrimPredicates()
					>
				::	SetPredicates
					(	TrimPredicates
						<	vResultPredicateField
						>(	Predicates.Union
							(	i_rRight.Predicates
							)
						)
					)
				;
		}

	public:
		TupleSet<t_tpPredicate...> const
			Predicates
		;

		constexpr
		(	Term
		)	()
		requires
			(	sizeof...(t_tpPredicate)
			==	0uz
			)
		and	(	t_vTerm.IsAbsorbing()
			or	t_vTerm.IsIdentity()
			)
		{}

		explicit constexpr
		(	Term
		)	(	t_tpPredicate const
				&
				...	i_rpPredicate
			)
		requires
			(	sizeof...(t_tpPredicate)
			==	1uz
			)
		and	(	t_vTerm.ClauseCount()
			==	1uz
			)
		and	(	t_vTerm[0uz].LiteralCount()
			==	1uz
			)
		:	Predicates
			{	i_rpPredicate
				...
			}
		{}

		constexpr
		(	Term
		)	(	Term const&
			)
		=	default;

		auto constexpr
		(	operator not
		)	()	const
		{	return
			Term
			<	Negation(t_vTerm)
			,	t_tpPredicate
				...
			>{	Predicates
			};
		}

		auto constexpr
		(	operator and
		)	(	Term const
				&
			)	const
		->	Term
		{	return *this;	}

		auto constexpr
		(	operator or
		)	(	Term const
				&
			)	const
		->	Term
		{	return *this;	}

		auto constexpr
		(	operator ==
		)	(	Term const&
			)	const
		->	bool
		{	return true;	}

		template
			<	Logic::BitTerm
					t_vRightTerm
			,	typename
				...	t_tpRightPredicate
			>
		auto constexpr
		(	operator and
		)	(	Term<t_vRightTerm, t_tpRightPredicate...> const
				&	i_rRight
			)	const
		{	return ComputeTerm<ComputeConjunction>(i_rRight);	}

		template
			<	Logic::BitTerm
					t_vRightTerm
			,	typename
				...	t_tpRightPredicate
			>
		auto constexpr
		(	operator or
		)	(	Term<t_vRightTerm, t_tpRightPredicate...> const
				&	i_rRight
			)	const
		{	return ComputeTerm<ComputeDisjunction>(i_rRight);	}

		template
			<	Logic::BitTerm
					t_vRightTerm
			,	typename
				...	t_tpRightPredicate
			>
		auto constexpr
		(	operator ==
		)	(	Term<t_vRightTerm, t_tpRightPredicate...> const&
			)	const
		{	return
			Compute
			(	ComputeEquivalence
			,	t_vTerm
			,	DeduceTupleSet<t_tpPredicate...>
			,	t_vRightTerm
			,	DeduceTupleSet<t_tpRightPredicate...>
			);
		}

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator ()
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)	const
		->	bool
		{	return
			EvaluateTerm
			<	t_vTerm
			>(	Sequence
				<	t_vTerm.ClauseCount()
				>()
			,	Predicates
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}

		template
			<	USize
					t_nClauseIndex
			,	USize
					t_nLiteralIndex
			>
		friend auto constexpr
		(	GetClauseLiteral
		)	(	Term const
				&	i_rTerm
			)
		{
			auto constexpr
				vClause
			=	t_vTerm
				[	t_nClauseIndex
				]
			;
			if	constexpr(vClause.IsIdentity())
				return Trait::Contradiction{};
			else
			if	constexpr
				(	vClause.TestPositive
					(	t_nLiteralIndex
					)
				)
				return
				i_rTerm.Predicates
				[	Index<t_nLiteralIndex>
				];
			else
			if	constexpr
				(	vClause.TestNegative
					(	t_nLiteralIndex
					)
				)
				return
				Trait::Not
				{	i_rTerm.Predicates
					[	Index<t_nLiteralIndex>
					]
				};
			else
				return
				Trait::Tautology
				{};
		}
	};

	template
		<	typename
				t_tPredicate
		>
	(	Term
	)	(	t_tPredicate const&
		)
	->	Term
		<	Logic::BitClause{0uz}
		,	t_tPredicate
		>
	;

	template
		<	Logic::BitTerm
				t_vTerm
		,	typename
			...	t_tpPredicate
		>
	(	Term
	)	(	Term<t_vTerm, t_tpPredicate...> const&
		)
	->	Term<t_vTerm, t_tpPredicate...>
	;

	Term constexpr inline
		True
	=	Term<Logic::BitClause::Absorbing()>
		{}
	;

	Term constexpr inline
		False
	=	Term<Logic::BitClause::Identity()>
		{}
	;
}
