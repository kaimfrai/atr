export module Meta.Logic;

export import Meta.Logic.Disjunction;

export import Meta.TupleSet;

import Std.Array;

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
		<	Logic::Disjunction
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
		or	EvaluateClause<t_vTerm.Term[t_npClauseIndex]>
			(	Sequence
				<	t_vTerm.Term[t_npClauseIndex]
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
}

export namespace
	Meta
{
	template
		<	Logic::Disjunction
				t_vTerm
		,	typename
			...	t_tpPredicate
		>
	struct
		Term
	{
		TupleSet<t_tpPredicate...> const
			Predicates
		;

		explicit constexpr
		(	Term
		)	(	t_tpPredicate const
				&
				...	i_rpPredicate
			)
		:	Predicates
			{	i_rpPredicate
				...
			}
		{}

		explicit constexpr
		(	Term
		)	(	TupleSet<t_tpPredicate...> const
				&	i_rPredicates
			)
		:	Predicates
			{	i_rPredicates
			}
		{}

		constexpr
		(	Term
		)	(	Term const&
			)
		=	default;

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

		auto constexpr
		(	operator not
		)	()	const
		{	return
			Term
			<	not
				t_vTerm
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
			<	Logic::Disjunction
					t_vRightTerm
			,	typename
				...	t_tpRightPredicate
			>
		auto constexpr
		(	operator and
		)	(	Term<t_vRightTerm, t_tpRightPredicate...> const
				&	i_rRight
			)	const
		{
			auto const
				vPredicateUnion
			=	Predicates
			.	Union
				(	i_rRight.Predicates
				)
			;

			using
				tPredicateUnion
			=	decltype
				(	vPredicateUnion
				)
			;

			::std::array<USize, sizeof...(t_tpRightPredicate)> constexpr
				vPermutationArray
			={	(	tPredicateUnion
				::	IndexOf(Type<t_tpRightPredicate>)
				)
				...
			};

			auto constexpr
				t_vPermutatedTerm
			=	t_vRightTerm.Permutation(vPermutationArray)
			;

			auto constexpr
				vResultTerm
			=	t_vTerm
			and	t_vPermutatedTerm
			;

			auto constexpr
				vPredicateField
			=	vResultTerm
			.	PredicateField
				()
			;

			auto constexpr
				nRequiredPredicateCount
			=	CountOneBits(vPredicateField)
			;

			auto constexpr
				nUnionPredicateCount
			=	tPredicateUnion::size()
			;

			if	constexpr
				(	nRequiredPredicateCount
				==	nUnionPredicateCount
				)
			{
				return
				Term<vResultTerm>::SetPredicates
				(	vPredicateUnion
				);
			}
			else
			if	constexpr
				(	nRequiredPredicateCount
				==	0uz
				)
				return Term<vResultTerm>{};
			else
			{
				::std::array constexpr
					vTrimPredicatePermutation
				=[]	<	USize
						...	t_npIndex
					>(	IndexToken<t_npIndex...>
					)
				{
					::std::array<USize, sizeof...(t_npIndex)>
						vPermutationBuffer
					{};
					USize
						nNewIndex
					=	0uz
					;
					(void)
					(	...
					,	(	vPermutationBuffer[t_npIndex] = nNewIndex
						,	nNewIndex += TestBit(vPredicateField, t_npIndex)
						)
					);

					return vPermutationBuffer;
				}(	Sequence<nUnionPredicateCount>()
				);

				auto constexpr
					vAdjustedResultTerm
				=	vResultTerm.Permutation
					(	vTrimPredicatePermutation
					)
				;

				auto const
					vTrimmedPredicates
				=[	&
				]	<	USize
						...	t_npIndex
					>(	IndexToken<t_npIndex...>
					)
				{	return
					TupleSet
					{	vPredicateUnion
						[	Index
							<	GetIndexOfNthOneBit
								(	vPredicateField
								,	t_npIndex
								)
							>
						]
						...
					};
				}(	Sequence<nRequiredPredicateCount>()
				);

				return
					Term<vAdjustedResultTerm>
				::	SetPredicates
					(	vTrimmedPredicates
					)
				;
			}
		}

		template
			<	Logic::Disjunction
					t_vRightTerm
			,	typename
				...	t_tpRightPredicate
			>
		auto constexpr
		(	operator or
		)	(	Term<t_vRightTerm, t_tpRightPredicate...> const
				&	i_rRight
			)	const
		{
			auto const
				vPredicateUnion
			=	Predicates
			.	Union
				(	i_rRight.Predicates
				)
			;

			using
				tPredicateUnion
			=	decltype
				(	vPredicateUnion
				)
			;

			::std::array<USize, sizeof...(t_tpRightPredicate)> constexpr
				vPermutationArray
			={	(	tPredicateUnion
				::	IndexOf(Type<t_tpRightPredicate>)
				)
				...
			};

			auto constexpr
				t_vPermutatedTerm
			=	t_vRightTerm.Permutation(vPermutationArray)
			;

			auto constexpr
				vResultTerm
			=	t_vTerm
			or	t_vPermutatedTerm
			;

			auto constexpr
				vPredicateField
			=	vResultTerm
			.	PredicateField
				()
			;

			auto constexpr
				nRequiredPredicateCount
			=	CountOneBits(vPredicateField)
			;

			auto constexpr
				nUnionPredicateCount
			=	tPredicateUnion::size()
			;

			if	constexpr
				(	nRequiredPredicateCount
				==	nUnionPredicateCount
				)
			{
				return
				Term<vResultTerm>::SetPredicates
				(	vPredicateUnion
				);
			}
			else
			if	constexpr
				(	nRequiredPredicateCount
				==	0uz
				)
				return Term<vResultTerm>{};
			else
			{
				::std::array constexpr
					vTrimPredicatePermutation
				=[]	<	USize
						...	t_npIndex
					>(	IndexToken<t_npIndex...>
					)
				{
					::std::array<USize, sizeof...(t_npIndex)>
						vPermutationBuffer
					{};
					USize
						nNewIndex
					=	0uz
					;
					(void)
					(	...
					,	(	vPermutationBuffer[t_npIndex] = nNewIndex
						,	nNewIndex += TestBit(vPredicateField, t_npIndex)
						)
					);

					return vPermutationBuffer;
				}(	Sequence<nUnionPredicateCount>()
				);

				auto constexpr
					vAdjustedResultTerm
				=	vResultTerm.Permutation
					(	vTrimPredicatePermutation
					)
				;

				auto const
					vTrimmedPredicates
				=[	&
				]	<	USize
						...	t_npIndex
					>(	IndexToken<t_npIndex...>
					)
				{	return
					TupleSet
					{	vPredicateUnion
						[	Index
							<	GetIndexOfNthOneBit
								(	vPredicateField
								,	t_npIndex
								)
							>
						]
						...
					};
				}(	Sequence<nRequiredPredicateCount>()
				);

				return
					Term<vAdjustedResultTerm>
				::	SetPredicates
					(	vTrimmedPredicates
					)
				;
			}
		}

		template
			<	Logic::Disjunction
					t_vRightTerm
			,	typename
				...	t_tpRightPredicate
			>
		auto constexpr
		(	operator ==
		)	(	Term<t_vRightTerm, t_tpRightPredicate...> const
				&	i_rRight
			)	const
		{
			using
				tPredicateUnion
			=	decltype
				(	Predicates
				.	Union
					(	i_rRight.Predicates
					)
				)
			;

			::std::array<USize, sizeof...(t_tpRightPredicate)> constexpr
				vPermutationArray
			={	(	tPredicateUnion
				::	IndexOf(Type<t_tpRightPredicate>)
				)
				...
			};

			auto constexpr
				vPermutatedTerm
			=	t_vRightTerm.Permutation(vPermutationArray)
			;

			return t_vTerm == vPermutatedTerm;
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
			)
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
	};

	template
		<	Logic::Disjunction
				t_vTerm
		,	typename
			...	t_tpPredicate
		>
	(	Term
	)	(	Term<t_vTerm, t_tpPredicate...> const&
		)
	->	Term<t_vTerm, t_tpPredicate...>
	;

	auto constexpr inline
		True
	=	Term<Logic::Disjunction::True()>
		{}
	;

	auto constexpr inline
		False
	=	Term<Logic::Disjunction::False()>
		{}
	;

	template
		<	typename
				t_tPredicate
		>
	auto constexpr inline
		Atom
	=	Term
		<	Logic::Disjunction::Literal(0uz)
		,	t_tPredicate
		>{	t_tPredicate
			{}
		}
	;
}

// namespace Meta2
// {
// 	using Meta::TupleSet;
// 	using Meta::Logic::Disjunction;
// 	export template
// 		<	typename
// 			...	t_tpPredicate
// 		>
// 	struct
// 		Term
// 	{
// 		TupleSet<t_tpPredicate...> const
// 			Predicates
// 		{};
//
// 		template
// 			<	typename
// 				...	t_tpRightPredicate
// 			>
// 		auto constexpr
// 		(	operator and
// 		)	(Term<t_tpRightPredicate...> const
// 				&	i_rRight
// 			)	const&
// 		{
// 			return sizeof...(t_tpRightPredicate);
// 		}
// 	};
//
// 	template
// 		<	typename
// 			...	t_tpPredicate
// 		,	typename
// 			...	t_tpRightPredicate
// 		>
// 	auto constexpr
// 	(	operator and
// 	)	(	Term<t_tpPredicate...> const
// 			&	i_rLeft
// 		,	Term<t_tpRightPredicate...> const
// 			&	i_rRight
// 		)
// 	{
// 		return sizeof...(t_tpRightPredicate);
// 	}
//
// 	export template
// 		<	typename
// 				t_tPredicate
// 		>
// 	auto constexpr inline
// 		Atom
// 	=	Term
// 		<	t_tPredicate
// 		>{	TupleSet<t_tPredicate>
// 			{	t_tPredicate
// 				{}
// 			}
// 		}
// 	;
// 	export auto constexpr inline True = Term<>{};
// 	export auto constexpr inline False = Term<>{};
// }
// using namespace Meta2;
// auto constexpr inline T = True;
// auto constexpr inline F = False;
//
// /// Literals
// struct P{};
// auto constexpr inline p = Atom<P>;
// struct Q{};
// auto constexpr inline q = Atom<Q>;
// struct R{};
// auto constexpr inline r = Atom<R>;
//
// auto constexpr inline f = p and q;
//
//
//
//
//
//
// static_assert(std::is_same_v<decltype(f), int>);
