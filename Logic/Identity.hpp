#pragma once

#include "Types.hpp"
#include "Concepts.hpp"

/// ****************************************************************************
///	operator ==
///	Read A == B as A has the exact same type as B
/// ****************************************************************************

template
	<	ProtoTerm
			t_tTerm
	>
auto consteval
(	operator ==
)	(	t_tTerm
	,	t_tTerm
	)
->	bool
{	return true;	}

auto consteval
(	operator ==
)	(	ProtoTerm auto
	,	ProtoTerm auto
	)
->	bool
{	return false;	}

auto consteval
(	IsTrue
)	(	True
	)
->	bool
{	return true;	}

auto consteval
(	IsTrue
)	(	ProtoLiteral auto
	)
->	bool
{	return false;	}

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
auto consteval
(	IsTrue
)	(	And<t_tpLiteral...>
	)
->	bool
{	return
	(	...
	and	IsTrue
		(	t_tpLiteral{}
		)
	);
}

template
	<	ProtoClause
		...	t_tpClause
	>
auto consteval
(	IsTrue
)	(	Or<t_tpClause...>
	)
->	bool
{
	if	constexpr
		((	...
		or	IsTrue
			(	t_tpClause{}
			)
		))
		return
			true
		;
	else
		return
		(	(	...
			or	t_tpClause{}
			)
		==	True{}
		);
}

auto consteval
(	IsFalse
)	(	False
	)
->	bool
{	return true;	}

auto consteval
(	IsFalse
)	(	ProtoLiteral auto
	)
->	bool
{	return false;	}

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
auto consteval
(	IsFalse
)	(	And<t_tpLiteral...>
	)
->	bool
{
	if	constexpr
		((	...
		or	IsFalse
			(	t_tpLiteral{}
			)
		))
		return
			true
		;
	else
		return
		(	(	...
			and	t_tpLiteral{}
			)
		==	False{}
		);
}

template
	<	ProtoClause
		...	t_tpClause
	>
auto consteval
(	IsFalse
)	(	Or<t_tpClause...>
	)
->	bool
{	return
	(	...
	and	IsFalse
		(	t_tpClause{}
		)
	);
}
