#pragma once

#include "DisjunctionSimplifier.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

auto consteval
(	operator or
)	(	ProtoTerm auto
			i_vLeft
	,	ProtoClause auto
			i_vRight
	)
->	ProtoTerm auto
{
	return
	DisjunctionSimplifier
	{	i_vLeft
	}(	i_vRight
	);
}

template
	<	ProtoClause
		...	t_tpRightClause
	>
auto consteval
(	operator or
)	(	ProtoTerm auto
			i_vLeft
	,	Or<t_tpRightClause...>
	)
->	ProtoTerm auto
{
	return
	(	i_vLeft
	or	...
	or	t_tpRightClause{}
	);
}
