#pragma once

#include "LiteralRedundancy.hpp"
#include "ClauseRedundancy.hpp"
#include "Substitute.hpp"
#include "Equivalence.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

///	Filters Literals within clauses for which there exists a clause with the negated Literal or
//	without it that shares all other literals.
///	For example:
///		(A and B and C)	or	(not A and B)
/// =>	(B and C)		or	(not A and B)
///		(A and B)	or	(not A and B)
///	=>	(B)			or	(B)
///		(A and B)	or	(not A)
///	=>	(B)			or	(not A)
///		(A)		or	(not A)
///	=>	(True)	or	(True)
///	Additionally synthesizes a new sub term from the clause without the literal if it makes more
///	clauses redundant than it introduces.
///	For example:
///		(A and B)	or	(not A and not B)	or	(A and C)	or	(not A and not C)
///	=>	(A and B)	or	(not A and not B)	or	(A and C)	or	(    B and not C)
///	=>	(False)		or	(not A and not B)	or	(A	and	C)	or	(    B and not C)
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

	explicit consteval
	(	LiteralFilter
	)	(	t_tFilterLiteral
		,	And<t_tpClauseLiteral...>
		)
	{}

	static ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpClauseLiteral{}
			...
		)
	;

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpSubTerm
		)	const
	->	ProtoClause auto
	{
		ProtoTerm auto constexpr
			vRedundancyCondition
		=	LiteralRedundancy
			{	t_tFilterLiteral{}
			,	ThisClause
			}(	i_vpSubTerm
				...
			)
		;

		//	this literal is always redundant
		if	constexpr
			(	IsTrue
				(	vRedundancyCondition
				)
			)
		{
			auto constexpr
				fSubstituteTrue
			=	SubstituteTrue
				(	t_tFilterLiteral{}
				)
			;
			//	new clause without the literal
			return
			(	...
			and	fSubstituteTrue
				(	t_tpClauseLiteral{}
				)
			);
		}
		else
		//	before replacing this clause can be considered it must be redundant
		if	constexpr
			(	IsFalse
				(	ClauseRedundancy
					{	ThisClause
					}(	i_vpSubTerm
						...
					,	//	no need to create a synthesized term just yet
						//	the other literals are assumed true anyways
						vRedundancyCondition
					)
				)
			)
			return
			False
			{};
		else
		{
			ProtoTerm auto constexpr
				vSynthesizedTerm
			=(	...
			and	Substitute
				{	t_tFilterLiteral{}
				}(	vRedundancyCondition
				)(	t_tpClauseLiteral{}
				)
			);

			//	at least 1 at this point (ThisClause)
			auto constexpr
				vNewRedundantClauseCount
			=(	0ul
			+	...
			+	IsTrue
				(	ClauseRedundancy
					{	i_vpSubTerm
					}(	i_vpSubTerm
						...
					,	vSynthesizedTerm
					)
				)
			);

			//	at least 1 at this point (can neither be True nor False)
			auto constexpr
				vAddedClauseCount
			=	ClauseCount
				(	vSynthesizedTerm
				)
			;
			//	using the synthesized term instead of this clause makes more clauses redundant than
			//	it introduces
			if	constexpr
				(	vNewRedundantClauseCount
				>	vAddedClauseCount
				)
				return
					vSynthesizedTerm
				;
			else
				return
				False
				{};
		}
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

template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
(	LiteralFilter
)	(	t_tFilterLiteral
	,	And<t_tpClauseLiteral...>
	)
->	LiteralFilter
	<	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	>
;
