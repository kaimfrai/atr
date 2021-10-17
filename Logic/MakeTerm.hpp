#pragma once

#include "Negation.hpp"
#include "Disjunction.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

auto consteval
(	MakeDisjunction
)	(	ProtoDisjunctive auto
		...	i_vpClause
	)
->	ProtoDisjunctive auto
{
	return
	(	False()
	bitor
		...
	bitor
		i_vpClause
	);
}

auto consteval
(	MakeConjunction
)	(	ProtoConjunctive auto
		...	i_vpClause
	)
->	ProtoConjunctive auto
{
	return
		not
		MakeDisjunction
		(	not
			i_vpClause
			...
		)
	;
}

auto consteval
(	Disjunct
)	(	ProtoConjunctionClause auto
			i_vClause
	)
->	ProtoDisjunctive auto
{
	return
		i_vClause
	;
}

auto consteval
(	Disjunct
)	(	ProtoConjunctionClause auto
			i_vFirst
	,	ProtoConjunctionClause auto
			i_vSecond
	,	ProtoConjunctionClause auto
		...	i_vpRemaining
	)
->	ProtoDisjunctive auto
{
	return
		Or
		(	i_vFirst
		,	i_vSecond
		,	i_vpRemaining
			...
		)
	;
}

auto consteval
(	Conjunct
)	(	ProtoDisjunctionClause auto
			i_vClause
	)
->	ProtoConjunctive auto
{
	return
		i_vClause
	;
}

auto consteval
(	Conjunct
)	(	ProtoDisjunctionClause auto
			i_vFirst
	,	ProtoDisjunctionClause auto
			i_vSecond
	,	ProtoDisjunctionClause auto
		...	i_vpRemaining
	)
->	ProtoConjunctive auto
{
	return
		And
		(	i_vFirst
		,	i_vSecond
		,	i_vpRemaining
			...
		)
	;
}
