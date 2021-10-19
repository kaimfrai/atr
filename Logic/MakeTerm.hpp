#pragma once

#include "Types.hpp"
#include "Concepts.hpp"

auto consteval
(	Disjunction
)	(	ProtoClause auto
			i_vClause
	)
->	ProtoClause auto
{
	return
		i_vClause
	;
}

auto consteval
(	Disjunction
)	(	ProtoClause auto
			i_vFirst
	,	ProtoClause auto
			i_vSecond
	,	ProtoClause auto
		...	i_vpRemaining
	)
->	ProtoTerm auto
{
	return
	Or
	{	i_vFirst
	,	i_vSecond
	,	i_vpRemaining
		...
	};
}

auto consteval
(	Conjunction
)	(	ProtoLiteral auto
			i_vLiteral
	)
->	ProtoLiteral auto
{
	return
		i_vLiteral
	;
}

auto consteval
(	Conjunction
)	(	ProtoLiteral auto
			i_vFirst
	,	ProtoLiteral auto
			i_vSecond
	,	ProtoLiteral auto
		...	i_vpRemaining
	)
->	ProtoClause auto
{
	return
	And
	{	i_vFirst
	,	i_vSecond
	,	i_vpRemaining
		...
	};
}
