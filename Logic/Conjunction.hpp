#pragma once

#include "Disjunction.hpp"
#include "Negation.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

auto consteval
(	operator and
)	(	ProtoClause auto
			i_vLeft
	,	ProtoLiteral auto
			i_vRight
	)
->	ProtoClause auto
{
	return
	not
	(	not
		i_vLeft
	or	not
		i_vRight
	);
}

template
	<	ProtoLiteral
		...	t_tpRightLiteral
	>
auto consteval
(	operator and
)	(	ProtoTerm auto
			i_vLeft
	,	And<t_tpRightLiteral...>
	)
->	ProtoTerm auto
{
	return
	(	i_vLeft
	and	...
	and	t_tpRightLiteral{}
	);
}

template
	<	ProtoClause
		...	t_tpRightClause
	>
auto consteval
(	operator and
)	(	ProtoTerm auto
			i_vLeft
	,	Or<t_tpRightClause...>
	)
->	ProtoTerm auto
{
	return
	(	...
	or	(	i_vLeft
		and	t_tpRightClause{}
		)
	);
}

template
	<	ProtoClause
		...	t_tpLeftClause
	>
auto consteval
(	operator and
)	(	Or<t_tpLeftClause...>
	,	ProtoLiteral auto
			i_vRight
	)
->	ProtoTerm auto
{
	return
	(	...
	or	(	t_tpLeftClause{}
		and	i_vRight
		)
	);
}
