#pragma once

#include "Disjunction.hpp"
#include "Implication.hpp"
#include "Identity.hpp"
#include "Negation.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

auto consteval
(	operator bitand
)	(	True
	,	True
	)
->	True
{	return {};	}

auto consteval
(	operator bitand
)	(	False
	,	False
	)
->	False
{	return {};	}

template<ProtoAtom t_tAtom>
auto consteval
(	operator bitand
)	(	Atom<t_tAtom>
	,	Atom<t_tAtom>
	)
->	Atom<t_tAtom>
{	return {};	}

template<ProtoAtom t_tAtom>
auto consteval
(	operator bitand
)	(	Not<t_tAtom>
	,	Not<t_tAtom>
	)
->	Not<t_tAtom>
{	return {};	}

template<ProtoLiteral... t_tpLiteral>
auto consteval
(	operator bitand
)	(	And<t_tpLiteral...>
	,	And<t_tpLiteral...>
	)
->	And<t_tpLiteral...>
{	return {};	}

template<ProtoConjunctionClause... t_tpConjunction>
auto consteval
(	operator bitand
)	(	Or<t_tpConjunction...>
	,	Or<t_tpConjunction...>
	)
->	Or<t_tpConjunction...>
{	return {};	}

auto consteval
(	operator bitand
)	(	True
	,	False
	)
->	False
{	return {};	}

auto consteval
(	operator bitand
)	(	True
	,	ProtoLiteral auto
			i_vRight
	)
->	ProtoLiteral auto
{	return i_vRight;	}

auto consteval
(	operator bitand
)	(	False
	,	True
	)
->	False
{	return{};	}

auto consteval
(	operator bitand
)	(	False
	,	ProtoLiteral auto
	)
->	False
{	return {};	}

auto consteval
(	operator bitand
)	(	ProtoLiteral auto
			i_vLeft
	,	True
	)
->	ProtoLiteral auto
{	return i_vLeft;	}

auto consteval
(	operator bitand
)	(	ProtoLiteral auto
	,	False
	)
->	False
{	return {};	}

template<ProtoAtom t_tAtom>
auto consteval
(	operator bitand
)	(	Atom<t_tAtom>
	,	Not<t_tAtom>
	)
->	False
{	return {};	}

template<ProtoAtom t_tAtom>
auto consteval
(	operator bitand
)	(	Not<t_tAtom>
	,	Atom<t_tAtom>
	)
->	False
{	return {};	}

auto consteval
(	operator bitand
)	(	ProtoLiteral auto
			i_vLeft
	,	ProtoLiteral auto
			i_vRight
	)
->	ProtoDisjunctive auto
{
	//	disallow dublicates
	if	constexpr
		(	i_vLeft
		<=	i_vRight
		)
		return i_vLeft;
	else
		return
			And(i_vLeft
			,	i_vRight
			)
		;
}

template<ProtoLiteral... t_tpLeftLiteral>
auto consteval
(	operator bitand
)	(	And<t_tpLeftLiteral...>
			i_vLeft
	,	ProtoLiteral auto
			i_vRight
	)
->	ProtoDisjunctive auto
{
	// disallow dublicates
	if	constexpr
		((	...
		or	(	t_tpLeftLiteral()
			<=	i_vRight
			)
		))
		return i_vLeft;
	else
	// short circuit negation and False
	if	constexpr
		((	...
		or	(	not
				t_tpLeftLiteral()
			<=	i_vRight
			)
		))
		return False();
	else
		return
			And(t_tpLeftLiteral()
				...
			,	i_vRight
			)
		;
}

template<ProtoLiteral... t_tpRightLiteral>
auto consteval
(	operator bitand
)	(	ProtoDisjunctive auto
			i_vLeft
	,	And<t_tpRightLiteral...>
	)
->	ProtoDisjunctive auto
{
	return
	(	i_vLeft
	bitand
		...
	bitand
		t_tpRightLiteral()
	);
}

template<ProtoConjunctionClause... t_tpRightConjunction>
auto consteval
(	operator bitand
)	(	ProtoDisjunctive auto
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
	,	ProtoLiteral auto
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
