export module Meta.Logic2;

import Std.Array;
import Meta.Logic.Disjunction;

export import Meta.Pack;

namespace
	Meta::Logic
{
	template
		<	typename
				t_tPredicate
		>
	struct
		MapToIndex
	{
		USize
			Index
		;

		auto constexpr
		(	operator()
		)	(	MapToIndex
			)	const
		->	USize
		{	return Index;	}
	};


	template
		<	typename
			...	t_tpPredicate
		>
	struct
		IndexMap
	:	MapToIndex
		<	t_tpPredicate
		>
		...
	{
		using MapToIndex<t_tpPredicate>::operator()...;

		template
			<	::std::size_t
				...	t_npIndex
			>
		constexpr
		(	IndexMap
		)	(	::std::index_sequence
				<	t_npIndex
					...
				>
			)
		:	MapToIndex
			<	t_tpPredicate
			>{	t_npIndex
			}
			...
		{}

		constexpr
		(	IndexMap
		)	()
		:	IndexMap
			{	::std::make_index_sequence
				<	sizeof...(t_tpPredicate)
				>{}
			}
		{}

		template
			<	typename
					t_tNewPredicate
			>
		friend auto constexpr
		(	operator +
		)	(	IndexMap const
				&	i_rIndexMap
			,	MapToIndex<t_tNewPredicate>
			)
		{
			if	constexpr
				(	requires
					{	static_cast
						<	MapToIndex<t_tNewPredicate> const *
						>(	&i_rIndexMap
						);
					}
				)
				return i_rIndexMap;
			else
				return
				IndexMap
				<	t_tpPredicate
					...
				,	t_tNewPredicate
				>{};
		}
	};
}

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
	)	(	Tuple<t_tpPredicate...> const
			&	i_rPredicates
		,	t_tpArgument
			&&
			...	i_rpArgument
		)
	->	bool
	{
		if	constexpr(t_vLiteral.Positive)
		{
			auto constexpr nIndex = ::std::countr_zero(t_vLiteral.Positive);
			return i_rPredicates[Index<nIndex>{}](::std::forward<t_tpArgument>(i_rpArgument)...);
		}
		else
		{
			auto constexpr nIndex = ::std::countr_zero(t_vLiteral.Negative);
			return not i_rPredicates[Index<nIndex>{}](::std::forward<t_tpArgument>(i_rpArgument)...);
		}
	}

	template
		<	Logic::BitClause
				t_vClause
		,	::std::size_t
			...	t_npLiteralIndex
		,	typename
			...	t_tpPredicate
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	EvaluateClause
	)	(	::std::index_sequence
			<	t_npLiteralIndex
				...
			>
		,	Tuple<t_tpPredicate...> const
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
		,	::std::size_t
			...	t_npClauseIndex
		,	typename
			...	t_tpPredicate
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	EvaluateTerm
	)	(	::std::index_sequence
			<	t_npClauseIndex
				...
			>
		,	Tuple<t_tpPredicate...> const
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
			(	::std::make_index_sequence
				<	t_vTerm.Term[t_npClauseIndex]
				.	LiteralCount()
				>{}
			,	i_rPredicates
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			)
		);
	}



	export template
		<	Logic::Disjunction
				t_vTerm
		,	typename
			...	t_tpPredicate
		>
	struct
		Term
	{
		Tuple<t_tpPredicate...> const
			Predicates
		;

		template
			<	typename
				...	t_tpNewPredicate
			>
		static auto constexpr
		(	SetPredicates
		)	(	Logic::IndexMap
				<	t_tpNewPredicate
					...
				>
			)
		->	Term
			<	t_vTerm
			,	t_tpNewPredicate
				...
			>
		{	return {};	}


		friend auto constexpr
		(	operator not
		)	(	Term
			)
		->	Term
			<	not
				t_vTerm
			,	t_tpPredicate
				...
			>
		{	return {};	}


		friend auto constexpr
		(	operator and
		)	(	Term
					i_vLeft
			,	Term
			)
		->	Term
		{	return i_vLeft;	}

		friend auto constexpr
		(	operator or
		)	(	Term
					i_vLeft
			,	Term
			)
		->	Term
		{	return i_vLeft;	}

		template
			<	Logic::Disjunction
					t_vRightTerm
			>
		friend auto constexpr
		(	operator and
		)	(	Term
			,	Term<t_vRightTerm, t_tpPredicate...>
			)
		->	Term
			<	t_vTerm and t_vRightTerm
			,	t_tpPredicate...
			>
		{	return	{};	}

		template
			<	Logic::Disjunction
					t_vRightTerm
			>
		friend auto constexpr
		(	operator or
		)	(	Term
			,	Term<t_vRightTerm, t_tpPredicate...>
			)
		->	Term
			<	t_vTerm or t_vRightTerm
			,	t_tpPredicate...
			>
		{	return	{};	}

		template
			<	Logic::Disjunction
					t_vRightTerm
			,	typename
				...	t_tpRightPredicate
			>
		friend auto constexpr
		(	operator and
		)	(	Term
			,	Term<t_vRightTerm, t_tpRightPredicate...>
			)
		{	auto constexpr
				vIndexMap
			=(	Logic::IndexMap<t_tpPredicate...>{}
			+	...
			+	Logic::MapToIndex<t_tpRightPredicate>{}
			);

			::std::array constexpr
				vMapArray
			={	vIndexMap
				(	Logic::MapToIndex<t_tpRightPredicate>{}
				)
				...
			};

			auto constexpr
				t_vPermutatedTerm
			=	t_vRightTerm.Permutation(vMapArray)
			;
			auto constexpr
				vResultTerm
			=	t_vTerm
			and	t_vPermutatedTerm
			;
			return
				Term<vResultTerm>::SetPredicates(vIndexMap);
		}

		template
			<	Logic::Disjunction
					t_vRightTerm
			,	typename
				...	t_tpRightPredicate
			>
		friend auto constexpr
		(	operator or
		)	(	Term
			,	Term<t_vRightTerm, t_tpRightPredicate...>
			)
		{	auto constexpr
				vIndexMap
			=(	Logic::IndexMap<t_tpPredicate...>{}
			+	...
			+	Logic::MapToIndex<t_tpRightPredicate>{}
			);

			::std::array constexpr
				vMapArray
			={	vIndexMap
				(	Logic::MapToIndex<t_tpRightPredicate>{}
				)
				...
			};

			auto constexpr
				t_vPermutatedTerm
			=	t_vRightTerm.Permutation(vMapArray)
			;
			auto constexpr
				vResultTerm
			=	t_vTerm
			or	t_vPermutatedTerm
			;
			return
				Term<vResultTerm>::SetPredicates(vIndexMap);
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
			>(	::std::make_index_sequence
				<	t_vTerm.ClauseCount()
				>{}
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
		<	typename
				t_tPredicate
		>
	using
		Atom
	=	Term
		<	Logic::Disjunction::Literal(0uz)
		,	t_tPredicate
		>
	;
}

::Meta::Atom<int> constexpr inline f = {};
::Meta::Atom<double> constexpr inline g = {};
auto constexpr inline h = f and g;
auto constexpr inline i = g and f;
auto constexpr inline j = h and i;
auto constexpr inline j2 = i and h;
