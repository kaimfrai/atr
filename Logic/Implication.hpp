#pragma once

#include "Substitute.hpp"
#include "Identity.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

/// ****************************************************************************
///	operator >=
///	Read A >= B as A implies B
/// ****************************************************************************

auto consteval
(	operator >=
)	(	ProtoLiteral auto
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{
	return
	(	IsFalse
		(	i_vLeft
		)
	or	IsTrue
		(	SubstituteTrue
			(	i_vLeft
			)(	i_vRight
			)
		)
	);
}

template
	<	ProtoLiteral
		...	t_tpLeftLiteral
	>
auto consteval
(	operator >=
)	(	And<t_tpLeftLiteral...>
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{
	return
	(	IsFalse
		(	i_vLeft
		)
	or	IsTrue
		(	SubstituteTrue
			(	t_tpLeftLiteral{}
				...
			)(	i_vRight
			)
		)
	);
}

template
	<	ProtoClause
		...	t_tpLeftClause
	>
auto consteval
(	operator >=
)	(	Or<t_tpLeftClause...>
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{
	return
	(	...
	and	(	t_tpLeftClause{}
		>=	i_vRight
		)
	);
}

auto consteval
(	operator <=
)	(	ProtoTerm auto
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{	return
	(	i_vRight
	>=	i_vLeft
	);
}
