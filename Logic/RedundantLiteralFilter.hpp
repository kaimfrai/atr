#pragma once

#include "Substitute.hpp"
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
	RedundantLiteralFilter
{
	consteval
	(	RedundantLiteralFilter
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
		)=	SubstituteNegation
			(	t_tFilterLiteral{}
			)
		;

		ProtoClause auto constexpr
		(	vReplacedConjunction
		)=	(	...
			and	fReplaceByNegation
				(	t_tpClauseLiteral{}
				)
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
			{};
		else
			//	retain this literal
			return
			t_tFilterLiteral
			{};
	}
};

template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
(	RedundantLiteralFilter
)	(	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	)
->	RedundantLiteralFilter
	<	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	>
;
