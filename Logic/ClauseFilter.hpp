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

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpClause
		)	const
	->	ProtoTerm auto
	{
		if	constexpr
			(	ClauseRedundancy
				{	t_tpLiteral{}
					...
				}(	i_vpClause
					...
				)
			)
			//	cancel this clause
			return
			False
			{};
		else
		{
			//	filter literals within this clause
			//	this may result in multiple clauses with a filtered literal each
			ProtoTerm auto constexpr
				vFilteredLiteralTerm
			=(	...
			or	LiteralFilter
				{	t_tpLiteral{}
				,	t_tpLiteral{}
					...
				}(	i_vpClause
					...
				)
			);
			if	constexpr
				(	//	no literal was filtered
					IsFalse
					(	vFilteredLiteralTerm
					)
				)
				return
				Conjunction
				(	t_tpLiteral{}
					...
				);
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
