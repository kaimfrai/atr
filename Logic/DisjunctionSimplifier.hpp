#pragma once

#include "RedundantClauseFilter.hpp"
#include "MakeTerm.hpp"
#include "Identity.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

template
	<	ProtoClause
		...	t_tpOldClause
	>
struct
	DisjunctionSimplifier
{
	explicit consteval
	(	DisjunctionSimplifier
	)	(	t_tpOldClause
			...
		)
	{}

	explicit consteval
	(	DisjunctionSimplifier
	)	(	Or<t_tpOldClause...>
		)
	{}

	auto consteval
	(	operator()
	)	(	True
		)	const
	->	True
	{	return {};	}

	auto consteval
	(	operator()
	)	(	False
		)	const
	->	ProtoTerm auto
	{	return
		Disjunction
		(	t_tpOldClause{}
			...
		);
	}

	static auto consteval
	(	FilterOldClauses
	)	(	ProtoClause auto
				i_vNewClause
		)
	->	ProtoTerm auto
	{
		ProtoTerm auto constexpr
			vUnsimplified
		=	Disjunction
			(	t_tpOldClause{}
				...
			)
		;
		ProtoTerm auto constexpr
			vSimplified
		=(	...
		or	SelfIgnoringRedundantClauseFilter
			{	t_tpOldClause{}
			}(	t_tpOldClause{}
				...
			,	i_vNewClause
			)
		);

		if	constexpr
			(	vSimplified
			==	vUnsimplified
			)
			return
			Disjunction
			(	t_tpOldClause{}
				...
			,	i_vNewClause
			);
		else
			return
			(	vSimplified
			or	i_vNewClause
			);
	}

	auto consteval
	(	operator()
	)	(	ProtoClause auto
				i_vNewClause
		)	const
	->	ProtoTerm auto
	{
		ProtoClause auto constexpr
			vSimplified
		=	RedundantClauseFilter
			{	i_vNewClause
			}(	t_tpOldClause{}
				...
			)
		;

		if	constexpr
			(	vSimplified
			==	i_vNewClause
			)
			return
			FilterOldClauses
			(	i_vNewClause
			);
		else
			return
			operator()
			(	vSimplified
			);
	}
};

template
	<>
struct
	DisjunctionSimplifier
	<	True
	>
{
	explicit consteval
	(	DisjunctionSimplifier
	)	(	True
		)
	{}

	auto consteval
	(	operator()
	)	(	ProtoClause auto
		)	const
	->	True
	{	return {};	}
};

template
	<>
struct
	DisjunctionSimplifier
	<	False
	>
{
	explicit consteval
	(	DisjunctionSimplifier
	)	(	False
		)
	{}

	auto consteval
	(	operator()
	)	(	ProtoClause auto
				i_vNewClause
		)	const
	->	ProtoClause auto
	{	return
			i_vNewClause
		;
	}
};

template
	<	ProtoClause
		...	t_tpOldClause
	>
(	DisjunctionSimplifier
)	(	t_tpOldClause
		...
	)
->	DisjunctionSimplifier
	<	t_tpOldClause
		...
	>
;

template
	<	ProtoClause
		...	t_tpOldClause
	>
(	DisjunctionSimplifier
)	(	Or<t_tpOldClause...>
	)
->	DisjunctionSimplifier
	<	t_tpOldClause
		...
	>
;
