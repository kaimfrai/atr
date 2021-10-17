#pragma once

#include "Identity.hpp"
#include "Implication.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

auto consteval
(	operator bitor
)	(	ProtoConjunctionClause auto
			i_vLeft
	,	ProtoConjunctionClause auto
			i_vRight
	)
->	ProtoDisjunctive auto
{
	return
		SimplifyNewClause
		(	i_vLeft
		,	i_vRight
		)
	;
}

template<ProtoConjunctionClause... t_tpRightConjunction>
auto consteval
(	operator bitor
)	(	ProtoConjunctionClause auto
			i_vLeft
	,	Or<t_tpRightConjunction...>
	)
->	ProtoDisjunctive auto
{
	return
		SimplifyNewClause
		(	i_vLeft
		,	t_tpRightConjunction
			()
			...
		)
	;
}

template<ProtoConjunctionClause... t_tpLeftConjunction>
auto consteval
(	operator bitor
)	(	Or<t_tpLeftConjunction...>
	,	ProtoDisjunctive auto
			i_vRight
	)
->	ProtoDisjunctive auto
{
	return
	(	t_tpLeftConjunction
		()
	bitor
		...
	bitor
		i_vRight
	);
}
