#pragma once

#include "Types.hpp"
#include <utility>

/// ****************************************************************************
///	operator not
/// ****************************************************************************

auto consteval
(	operator not
)	(	True
	)
->	False
{	return {};	}

auto consteval
(	operator not
)	(	False
	)
->	True
{	return {};	}

template<ProtoAtom t_tAtom>
auto consteval
(	operator not
)	(	Atom<t_tAtom>
	)
->	Not<t_tAtom>
{	return {};	}

template<ProtoAtom t_tAtom>
auto consteval
(	operator not
)	(	Not<t_tAtom>
	)
->	Atom<t_tAtom>
{	return {};	}

template<ProtoTerm t_tTerm>
using Negate = decltype(not std::declval<t_tTerm>());

template<ProtoDisjunctionClause... t_tpDisjunction>
auto consteval
(	operator not
)	(	And<t_tpDisjunction...>
	)
->	Or<Negate<t_tpDisjunction>...>
{	return {};	}

template<ProtoConjunctionClause... t_tpConjunction>
auto consteval
(	operator not
)	(	Or<t_tpConjunction...>
	)
->	And<Negate<t_tpConjunction>...>
{	return {};	}
