#pragma once

#include "LiteralFilter.hpp"
#include "Substitute.hpp"
#include "Identity.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

///	Filters Clauses which imply the Disjunction of all other clauses.
///	For example:
///		(A and	B and C)	or	(A and B)
///	=>	(False)				or	(A and B)
///		(A and B)	or	(A and C)	or	(not B and C)
///	=>	(A and B)	or	(False)		or	(not B and C)
template
	<	ProtoLiteral
		...	t_tpLiteral
	>
struct
	ClauseFilter
{
	explicit consteval
	(	ClauseFilter
	)	(	t_tpLiteral
			...
		)
	{}

	explicit consteval
	(	ClauseFilter
	)	(	And<t_tpLiteral...>
		)
	{}

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpClause
		)	const
	->	ProtoClause auto
	{
		auto constexpr
			fAssumeLiteralsTrue
		=	AssumeLiteralsTrue
			(	t_tpLiteral{}
				...
			)
		;
		ProtoTerm auto constexpr
			vDisjunction
		=(	...
		or	fAssumeLiteralsTrue
			(	i_vpClause
			)
		)
		;

		if	constexpr
			(	IsTrue
				(	vDisjunction
				)
			)
			//	cancel this clause
			return
			False
			{};
		else
			//	filter literals within this clause
			return
			(	...
			and	LiteralFilter
				{	t_tpLiteral{}
				,	t_tpLiteral{}
					...
				}(	i_vpClause
					...
				)
			);
	}
};

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	ClauseFilter
)	(	t_tpLiteral
		...
	)
->	ClauseFilter
	<	t_tpLiteral
		...
	>
;

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	ClauseFilter
)	(	And<t_tpLiteral...>
	)
->	ClauseFilter
	<	t_tpLiteral
		...
	>
;

template
	<	ProtoClause
			t_tFilterClause
	>
struct
	SelfIgnoringClauseFilter
{
	consteval
	(	SelfIgnoringClauseFilter
	)	(	t_tFilterClause
		)
	{}

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpClause
		)	const
	->	ProtoClause auto
	{
		auto constexpr
			fRemoveFilterClause
		=	SubstituteFalse
			(	t_tFilterClause{}
			)
		;

		return
		ClauseFilter
		{	t_tFilterClause{}
		}(	fRemoveFilterClause
			(	i_vpClause
			)
			...
		);
	}
};

template
	<	ProtoClause
			t_tFilterClause
	>
(	SelfIgnoringClauseFilter
)	(	t_tFilterClause
	)
->	SelfIgnoringClauseFilter
	<	t_tFilterClause
	>
;
