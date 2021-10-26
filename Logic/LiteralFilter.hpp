#pragma once

#include "Substitute.hpp"
#include "Identity.hpp"
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
	explicit consteval
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
			fReplaceByNegation
		=	SubstituteNegation
			(	t_tFilterLiteral{}
			)
		;

		auto constexpr
			fAssumeNegationAndLiteralsTrue
		=	AssumeLiteralsTrue
			(	fReplaceByNegation
				(	t_tpClauseLiteral{}
				)
				...
			)
		;

		ProtoTerm auto constexpr
			vDisjunction
		=(	...
		or	fAssumeNegationAndLiteralsTrue
			(	i_vpClause
			)
		);

		if	constexpr
			(	IsTrue
				(	vDisjunction
				)
			)
			//	cancel this literal
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
