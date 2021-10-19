#pragma once

#include "RedundantLiteralFilter.hpp"
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
	RedundantClauseFilter
{
	explicit consteval
	(	RedundantClauseFilter
	)	(	t_tpLiteral
			...
		)
	{}

	explicit consteval
	(	RedundantClauseFilter
	)	(	And<t_tpLiteral...>
		)
	{}

	static auto consteval
	(	IsClauseFalse
	)	()
	->	bool
	{
		return
		IsFalse
		((	...
		and	t_tpLiteral{}
		));
	}

	static auto consteval
	(	AssumeClauseTrue
	)	(	ProtoClause auto
			...	i_vpClause
		)
	->	bool
	{
		auto constexpr
			fAssumeLiteralsTrue
		=	SubstituteTrue
			(	t_tpLiteral{}
				...
			)
		;
		return
		IsTrue
		((	...
		or	fAssumeLiteralsTrue
			(	i_vpClause
			)
		));
	}

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpClause
		)	const
	->	ProtoClause auto
	{
		if	constexpr
			(	//	False => AnyTerm
				IsClauseFalse()
			or	//	True => True
				AssumeClauseTrue
				(	i_vpClause
					...
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
			and	RedundantLiteralFilter
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
(	RedundantClauseFilter
)	(	t_tpLiteral
		...
	)
->	RedundantClauseFilter
	<	t_tpLiteral
		...
	>
;

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	RedundantClauseFilter
)	(	And<t_tpLiteral...>
	)
->	RedundantClauseFilter
	<	t_tpLiteral
		...
	>
;

template
	<	ProtoClause
			t_tFilterClause
	>
struct
	SelfIgnoringRedundantClauseFilter
{
	consteval
	(	SelfIgnoringRedundantClauseFilter
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
		RedundantClauseFilter
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
(	SelfIgnoringRedundantClauseFilter
)	(	t_tFilterClause
	)
->	SelfIgnoringRedundantClauseFilter
	<	t_tFilterClause
	>
;
