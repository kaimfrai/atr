#pragma once

#include "Disjunction.hpp"
#include "Implication.hpp"
#include "Identity.hpp"
#include "MakeTerm.hpp"
#include "Negation.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

auto consteval
(	operator and
)	(	ProtoLiteral auto
			i_vLeft
	,	ProtoLiteral auto
			i_vRight
	)
->	ProtoClause auto
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
(	operator and
)	(	And<t_tpLeftLiteral...>
	,	ProtoTerm auto
			i_vRight
	)
->	ProtoTerm auto
{
	return
	(	t_tpLeftLiteral()
	and	...
	and	i_vRight
	);
}

template<ProtoLiteral... t_tpRightLiteral>
auto consteval
(	operator and
)	(	ProtoLiteral auto
			i_vLeft
	,	And<t_tpRightLiteral...>
	)
->	ProtoTerm auto
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

template<ProtoClause... t_tpRightClause>
auto consteval
(	operator and
)	(	ProtoLiteral auto
			i_vLeft
	,	Or<t_tpRightClause...>
	)
->	ProtoTerm auto
{
	return
	(	(	i_vLeft
		and	t_tpRightClause
			{}
		)
	or	...
	);
}

template<ProtoClause... t_tpLeftClause>
auto consteval
(	operator and
)	(	Or<t_tpLeftClause...>
	,	ProtoTerm auto
			i_vRight
	)
->	ProtoTerm auto
{
	return
	(	(	t_tpLeftClause
			{}
		and	i_vRight
		)
	or	...
	);
}
