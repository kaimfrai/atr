#pragma once

#include "ClauseRedundancy.hpp"
#include "Substitute.hpp"
#include "Equivalence.hpp"
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

	static ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpClauseLiteral{}
			...
		)
	;
	static auto constexpr
		IgnoreThisClause
	=	SubstituteFalse
		(	ThisClause
		)
	;

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpClause
		)
	->	ProtoClause auto
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
			vRedundancyCondition
		=(	...
		or	fAssumeNegationAndLiteralsTrue
			(	IgnoreThisClause
				(	i_vpClause
				)
			)
		);

		if	constexpr
			(	ClauseRedundancy
				{	ThisClause
				}(	i_vpClause
					...
				,	vRedundancyCondition
				)
			)
		{
			ProtoTerm auto
				vSynthesizedTerm
			=(	...
			and	Substitute
				{	t_tFilterLiteral{}
				}(	vRedundancyCondition
				)(	t_tpClauseLiteral{}
				)
			);

			auto constexpr
				vNewRedundantClauseCount
			=(	0ul
			+	...
			+	ClauseRedundancy
				{	i_vpClause
				}(	i_vpClause
					...
				,	vSynthesizedTerm
				)
			);
			auto constexpr
				vOldRedundantClauseCount
			=(	0ul
			+	...
			+	ClauseRedundancy
				{	i_vpClause
				}(	i_vpClause
					...
				)
			);

			if	constexpr
				(	//	by using the synthesized term instead of this clause
					//	more clauses are made redundant than are added
					(	vNewRedundantClauseCount
					-	vOldRedundantClauseCount
					)
				>	ClauseCount
					(	vSynthesizedTerm
					)
				or	//	by using the synthesied term instead of this clause
					//	more literals are made redundant than are added
					LiteralCount
					(	ThisClause
					)
				>	LiteralCount
					(	vSynthesizedTerm
					)
				)
				return
					vSynthesizedTerm
				;
			else
				return
				False
				{};
		}
		else
			return
			False
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
