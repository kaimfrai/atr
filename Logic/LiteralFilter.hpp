#pragma once

#include "Replace.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

///	Filter Literals within clauses for which there exists a clause with the
///	negated Literal or without it that shares all other literals.
///	For example:
///		(A and B and C)	or	(not A and B)
/// =>	(B and C)		or	(not A and B)
///		(A and B)	or	(not A and B)
///	=>	(B)			or	(B)
///		(A and B)	or	(not A)
///	=>	(B)			or	(not A)
///		(A)		or	(not A)
///	=>	(True)	or	(True)
template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
struct
	LiteralFilter
{
	consteval
	(	LiteralFilter
	)	(	t_tFilterLiteral
		,	t_tpClauseLiteral
			...
		)
	{}

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpClause
		)
	->	ProtoLiteral auto
	{
		auto constexpr
		(	fReplaceByNegation
		)=	SetNegated
			(	t_tFilterLiteral
				()
			)
		;

		ProtoClause auto constexpr
		(	vReplacedConjunction
		)=	(	fReplaceByNegation
				(	t_tpClauseLiteral
					()
				)
			and	...
			)
		;

		if	constexpr
			((	...
			or	(	vReplacedConjunction
				>=	i_vpClause
				)
			))
			//	cancel this literal if it is not present
			//	or negation is present
			//	or True is present
			return
				True
				()
			;
		else
			//	retain this literal
			return
				t_tFilterLiteral
				()
			;
	}
};

template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
(	LiteralFilter
)	(	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	)
->	LiteralFilter
	<	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	>
;

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
	LiteralClauseFilter
{
	consteval
	(	LiteralClauseFilter
	)	(	t_tpLiteral
			...
		)
	{}

	consteval
	(	LiteralClauseFilter
	)	(	And<t_tpLiteral...>
		)
	{}

	static auto consteval
	(	IsFalse
	)	()
	->	bool
	{
		ProtoClause auto constexpr
			vSimplified
		=(	t_tpLiteral
			()
		and	...
		);

		return
			vSimplified
		==	False
			()
		;
	}

	static auto consteval
	(	AssumeTrue
	)	(	ProtoClause auto
			...	i_vpClause
		)
	->	bool
	{
		auto constexpr
			fAssumeLiteralsTrue
		=	SetTrue
			(	t_tpLiteral
				()
				...
			)
		;

		ProtoTerm auto constexpr
			vSimplifiedDisjunction
		=(	fAssumeLiteralsTrue
			(	i_vpClause
			)
		or	...
		);

		return
			vSimplifiedDisjunction
		==	True
			()
		;
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
				IsFalse
				()
			or	//	True => True
				AssumeTrue
				(	i_vpClause
					...
				)
			)
			//	cancel this clause
			return
				False
				()
			;
		else
			//	filter literals within this clause
			return
			(	LiteralFilter
				(	t_tpLiteral()
				,	t_tpLiteral()
					...
				)(	i_vpClause
					...
				)
			and	...
			);
	}
};

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	LiteralClauseFilter
)	(	t_tpLiteral
		...
	)
->	LiteralClauseFilter
	<	t_tpLiteral
		...
	>
;

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	LiteralClauseFilter
)	(	And<t_tpLiteral...>
	)
->	LiteralClauseFilter
	<	t_tpLiteral
		...
	>
;

template
	<	ProtoClause
			t_tFilterClause
	>
struct
	ReplaceClauseFilter
{
	consteval
	(	ReplaceClauseFilter
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
			fReplace
		=	SetFalse
			(	t_tFilterClause
				()
			)
		;

		return
			LiteralClauseFilter
			(	t_tFilterClause()
			)(	fReplace
				(	i_vpClause
				)
				...
			)
		;
	}
};

template
	<	ProtoClause
			t_tFilterClause
	>
(	ReplaceClauseFilter
)	(	t_tFilterClause
	)
->	ReplaceClauseFilter
	<	t_tFilterClause
	>
;

auto consteval
(	FilterOldClause
)	(	ProtoClause auto
			i_vNewClause
	,	ProtoClause auto
		...	i_vpOldClause
	)
->	ProtoTerm auto
{
	auto constexpr
		vUnsimplified
	=	Disjunct
		(	i_vpOldClause
			...
		)
	;
	auto constexpr
		vSimplified
	=(	ReplaceClauseFilter
		(	i_vpOldClause
		)(	i_vNewClause
		,	i_vpOldClause
			...
		)
	or	...
	);

	if	constexpr
		(	vSimplified
		==	vUnsimplified
		)
		return
			Disjunct
			(	i_vNewClause
			,	i_vpOldClause
				...
			)
		;
	else
		return
			i_vNewClause
		or	vSimplified
		;
}

auto consteval
(	SimplifyNewClause
)	(	True
	,	True
	)
->	True
{	return	{};	}

auto consteval
(	SimplifyNewClause
)	(	True
	,	False
	)
->	True
{	return	{};	}

auto consteval
(	SimplifyNewClause
)	(	False
	,	True
	)
->	True
{	return	{};	}

auto consteval
(	SimplifyNewClause
)	(	False
	,	False
	)
->	False
{	return	{};	}

auto consteval
(	SimplifyNewClause
)	(	True
	,	ProtoClause auto
		...
	)
->	True
{	return	{};	}

auto consteval
(	SimplifyNewClause
)	(	ProtoClause auto
	,	True
	)
->	True
{	return	{};	}

auto consteval
(	SimplifyNewClause
)	(	False
	,	ProtoClause auto
		...	i_vpOldClause
	)
->	ProtoTerm auto
{	return	Disjunct(i_vpOldClause...);	}

auto consteval
(	SimplifyNewClause
)	(	ProtoClause auto
			i_vNewClause
	,	False
	)
->	ProtoClause auto
{	return	i_vNewClause;	}

auto consteval
(	SimplifyNewClause
)	(	ProtoClause auto
			i_vNewClause
	,	ProtoClause auto
		...	i_vpOldClause
	)
->	ProtoTerm auto
{
	ProtoClause auto constexpr
		vSimplified
	=	LiteralClauseFilter
		(	i_vNewClause
		)(	i_vpOldClause
			...
		)
	;

	if	constexpr
		(	vSimplified
		==	i_vNewClause
		)
		return
			FilterOldClause
			(	vSimplified
			,	i_vpOldClause
				...
			)
		;
	else
		return
			SimplifyNewClause
			(	vSimplified
			,	i_vpOldClause
				...
			)
		;
}
