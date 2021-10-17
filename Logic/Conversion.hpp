#pragma once

#include "Conjunction.hpp"
#include "Negation.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

auto consteval
(	AsDisjunctive
)	(	ProtoDisjunctive auto
			i_vTerm
	)
->	ProtoDisjunctive auto
{	return	i_vTerm;	}

template<ProtoDisjunctionClause... t_tpDisjunction>
auto consteval
(	AsDisjunctive
)	(	And<t_tpDisjunction...>
			i_vTerm
	)
->	ProtoDisjunctive auto
{
	if	constexpr((... and ProtoLiteral<t_tpDisjunction>))
		return i_vTerm;
	else
		return (t_tpDisjunction() bitand ...);
}

auto consteval
(	AsConjunctive
)	(	ProtoTerm auto
			i_vTerm
	)
->	ProtoConjunctive auto
{	return	not AsDisjunctive(not i_vTerm);	}
