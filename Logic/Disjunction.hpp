#pragma once

#include "LiteralFilter.hpp"
#include "Identity.hpp"
#include "Implication.hpp"
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
		SimplifyNewClause
		(	i_vLeft
		,	i_vRight
		)
	;
}

template<ProtoClause... t_tpRightClause>
auto consteval
(	operator or
)	(	ProtoClause auto
			i_vLeft
	,	Or<t_tpRightClause...>
	)
->	ProtoTerm auto
{
	return
		SimplifyNewClause
		(	i_vLeft
		,	t_tpRightClause
			{}
			...
		)
	;
}

template<ProtoClause... t_tpLeftClause>
auto consteval
(	operator or
)	(	Or<t_tpLeftClause...>
	,	ProtoTerm auto
			i_vRight
	)
->	ProtoTerm auto
{
	return
	(	t_tpLeftClause
		{}
	or	...
	or	i_vRight
	);
}
