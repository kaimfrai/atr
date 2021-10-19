#pragma once

#include "Identity.hpp"
#include "Replace.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

/// ****************************************************************************
///	operator >=
///	Read A >= B as A implies B
/// ****************************************************************************

auto consteval
(	operator >=
)	(	True
	,	True
	)
->	bool
{	return true;	}

auto consteval
(	operator >=
)	(	False
	,	False
	)
->	bool
{	return true;	}

template<ProtoAtom t_tAtom>
auto consteval
(	operator >=
)	(	Atom<t_tAtom>
	,	Atom<t_tAtom>
	)
->	bool
{	return true;	}

template<ProtoAtom t_tAtom>
auto consteval
(	operator >=
)	(	Not<t_tAtom>
	,	Not<t_tAtom>
	)
->	bool
{	return true;	}

template<ProtoLiteral... t_tpLiteral>
auto consteval
(	operator >=
)	(	And<t_tpLiteral...>
	,	And<t_tpLiteral...>
	)
->	bool
{	return true;	}

template<ProtoClause... t_tpClause>
auto consteval
(	operator >=
)	(	Or<t_tpClause...>
	,	Or<t_tpClause...>
	)
->	bool
{	return true;	}

auto consteval
(	operator >=
)	(	True
	,	False
	)
->	bool
{	return false;	}

auto consteval
(	operator >=
)	(	False
	,	True
	)
->	bool
{	return true;	}

auto consteval
(	operator >=
)	(	False
	,	ProtoLiteral auto
	)
->	bool
{	return true;	}

auto consteval
(	operator >=
)	(	ProtoLiteral auto
	,	True
	)
->	bool
{	return true;	}


auto consteval
(	operator >=
)	(	ProtoLiteral auto
	,	ProtoLiteral auto
	)
->	bool
{	return false;	}

auto consteval
(	TautologyByLiterals
)	(	ProtoTerm auto
			i_vTerm
	,	ProtoLiteral auto
		...	i_vpAssumeTrue
	)
->	bool
{
	return
		SetTrue
		(	i_vpAssumeTrue
			...
		)(	i_vTerm
		)
	==	True
		()
	;
}


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
		TautologyByLiterals
		(	i_vRight
		,	i_vLeft
		)
	;
}

template<ProtoLiteral... t_tpLeftLiteral>
auto consteval
(	operator >=
)	(	And<t_tpLeftLiteral...>
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{
	ProtoClause auto constexpr
		vSimplifiedLeft
	=(	t_tpLeftLiteral
		()
	and	...
	);

	if	constexpr
		(	i_vLeft
		==	vSimplifiedLeft
		)
		return
			TautologyByLiterals
			(	i_vRight
			,	t_tpLeftLiteral
				{}
				...
			)
		;
	else
		return
			vSimplifiedLeft
		>=	i_vRight
		;
}

template<ProtoClause... t_tpLeftClause>
auto consteval
(	operator >=
)	(	Or<t_tpLeftClause...>
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{
	auto constexpr
		vSimplifiedLeft
	=(	t_tpLeftClause
		{}
	or	...
	);

	if	constexpr
		(	i_vLeft
		==	vSimplifiedLeft
		)
		return
		(	(	t_tpLeftClause
				{}
			>=	i_vRight
			)
		and	...
		);
	else
		return
			vSimplifiedLeft
		>=	i_vRight
		;
}

auto consteval
(	operator <=
)	(	ProtoTerm auto
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{	return i_vRight >= i_vLeft;	}
