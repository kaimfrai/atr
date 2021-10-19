#pragma once

#include "DisjunctionSimplifier.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

auto consteval
(	operator or
)	(	ProtoClause auto
			i_vLeft
	,	ProtoClause auto
			i_vRight
	)
->	ProtoTerm auto
{
	return
	DisjunctionSimplifier
	{	i_vRight
	}(	i_vLeft
	);
}

template
	<	ProtoClause
		...	t_tpRightClause
	>
auto consteval
(	operator or
)	(	ProtoClause auto
			i_vLeft
	,	Or<t_tpRightClause...>
			i_vRight
	)
->	ProtoTerm auto
{
	return
	DisjunctionSimplifier
	{	i_vRight
	}(	i_vLeft
	);
}

template
	<	ProtoClause
		...	t_tpLeftClause
	>
auto consteval
(	operator or
)	(	Or<t_tpLeftClause...>
	,	ProtoTerm auto
			i_vRight
	)
->	ProtoTerm auto
{
	return
	(	t_tpLeftClause{}
	or	...
	or	i_vRight
	);
}
