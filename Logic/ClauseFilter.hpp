#pragma once

#include "LiteralFilter.hpp"
#include "ClauseRedundancy.hpp"
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

	static ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpLiteral{}
			...
		)
	;

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpSubTerm
		)	const
	->	ProtoTerm auto
	{
		//	this clause is simply redundant, replace it by false
		if	constexpr
			(	IsTrue
				(	ClauseRedundancy
					{	ThisClause
					}(	i_vpSubTerm
						...
					)
				)
			)
			//	cancel this clause
			return
			False
			{};
		else
		//	another clause is redundant
		//	delay further simplification
		if	constexpr
			(	(	0ul
				+	...
				+	IsTrue
					(	ClauseRedundancy
						{	i_vpSubTerm
						}(	i_vpSubTerm
							...
						)
					)
				)
			>	0ul
			)
			return
				ThisClause
			;
		else
		{
			//	filter literals within this clause
			//	this may result in multiple clauses with a filtered literal each
			ProtoTerm auto constexpr
				vFilteredLiteralTerm
			=(	...
			or	LiteralFilter
				{	t_tpLiteral{}
				,	ThisClause
				}(	i_vpSubTerm
					...
				)
			);
			//	no literal was filtered
			if	constexpr
				(	IsFalse
					(	vFilteredLiteralTerm
					)
				)
				return
					ThisClause
				;
			else
				return
					vFilteredLiteralTerm
				;
		}
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
