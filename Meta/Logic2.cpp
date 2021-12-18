export module Meta.Logic2;

import Std.Array;
import Meta.Logic.BitTerm;

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
		IndexType
			Index
		;

		auto constexpr
		(	operator()
		)	(	MapToIndex
			)	const
		->	IndexType
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

export namespace
	Meta
{
	template
		<	Logic::BitTerm
				t_vTerm
		,	typename
			...	t_tpPredicate
		>
	struct
		Term
	{
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
			<	Logic::BitTerm
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
			<	Logic::BitTerm
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
			<	Logic::BitTerm
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
			=	t_vRightTerm.Permutate(vMapArray)
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
			<	Logic::BitTerm
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
			=	t_vRightTerm.Permutate(vMapArray)
			;
			auto constexpr
				vResultTerm
			=	t_vTerm
			or	t_vPermutatedTerm
			;
			return
				Term<vResultTerm>::SetPredicates(vIndexMap);
		}
	};

	template
		<	typename
				t_tPredicate
		>
	using
		Atom
	=	Term
		<	::Meta::Logic::BitTerm{::Meta::Logic::BitClause{1u, 0u}}
		,	t_tPredicate
		>
	;
}

::Meta::Atom<int> constexpr inline f = {};
::Meta::Atom<void> constexpr inline g = {};
auto constexpr inline h = f and g;
auto constexpr inline i = g and f;
auto constexpr inline j = h and i;
auto constexpr inline j2 = i and h;
