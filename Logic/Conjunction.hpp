#pragma once

#include "Disjunction.hpp"
#include "Implication.hpp"
#include "Identity.hpp"
#include "MakeTerm.hpp"
#include "Negation.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

auto consteval
(	operator bitand
)	(	ProtoLiteral auto
			i_vLeft
	,	ProtoLiteral auto
			i_vRight
	)
->	ProtoDisjunctive auto
{
	return
		not
		SimplifyNewClause
		(	not
			i_vLeft
		,	not
			i_vRight
		)
	;
}

template<ProtoLiteral... t_tpLeftLiteral>
auto consteval
(	operator bitand
)	(	And<t_tpLeftLiteral...>
	,	ProtoDisjunction auto
			i_vRight
	)
->	ProtoDisjunctive auto
{
	return
	(	t_tpLeftLiteral()
	bitand
		...
	bitand
		i_vRight
	);
}

template<ProtoLiteral... t_tpRightLiteral>
auto consteval
(	operator bitand
)	(	ProtoLiteral auto
			i_vLeft
	,	And<t_tpRightLiteral...>
	)
->	ProtoDisjunctive auto
{
	return
		not
		SimplifyNewClause
		(	not
			i_vLeft
		,	not
			t_tpRightLiteral
			()
			...
		)
	;
}

template<ProtoConjunctionClause... t_tpRightConjunction>
auto consteval
(	operator bitand
)	(	ProtoLiteral auto
			i_vLeft
	,	Or<t_tpRightConjunction...>
	)
->	ProtoDisjunctive auto
{
	return
	(	(	i_vLeft
		bitand
			t_tpRightConjunction()
		)
	bitor
		...
	);
}

template<ProtoConjunctionClause... t_tpLeftConjunction>
auto consteval
(	operator bitand
)	(	Or<t_tpLeftConjunction...>
	,	ProtoDisjunction auto
			i_vRight
	)
->	ProtoDisjunctive auto
{
	return
	(	(	t_tpLeftConjunction()
		bitand
			i_vRight
		)
	bitor
		...
	);
}
