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

template<ProtoDisjunctionClause... t_tpDisjunction>
auto consteval
(	operator >=
)	(	And<t_tpDisjunction...>
	,	And<t_tpDisjunction...>
	)
->	bool
{	return true;	}

template<ProtoConjunctionClause... t_tpConjunction>
auto consteval
(	operator >=
)	(	Or<t_tpConjunction...>
	,	Or<t_tpConjunction...>
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

template<ProtoDisjunctionClause... t_tpLeftDisjunction>
auto consteval
(	operator >=
)	(	And<t_tpLeftDisjunction...>
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{
	ProtoDisjunctive auto constexpr
		vSimplifiedLeft
	=(	t_tpLeftDisjunction
		()
	bitand
		...
	);

	if	constexpr
		(	i_vLeft
		==	vSimplifiedLeft
		)
		return
			TautologyByLiterals
			(	i_vRight
			,	t_tpLeftDisjunction
				()
				...
			)
		;
	else
		return
			vSimplifiedLeft
		>=	i_vRight
		;
}

template<ProtoConjunctionClause... t_tpLeftConjunction>
auto consteval
(	operator >=
)	(	Or<t_tpLeftConjunction...>
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{
	auto constexpr
		vSimplifiedLeft
	=(	t_tpLeftConjunction
		()
	bitor
		...
	);

	if	constexpr
		(	i_vLeft
		==	vSimplifiedLeft
		)
		return
		(	(	t_tpLeftConjunction
				()
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

// template<ProtoDisjunctionClause... t_tpRightDisjunction>
// auto consteval
// (	operator>=
// )	(	ProtoConjunction auto
// 			i_vLeft
// 	,	And<t_tpRightDisjunction...>
// 	)
// ->	bool
// {
// 	return
// 	(	...
// 	and	(	AsDisjunctive(i_vLeft)
// 		>=	t_tpRightDisjunction()
// 		)
// 	);
// }
//
// template<ProtoLiteral... t_tpRightLiteral>
// auto consteval
// (	operator >=
// )	(	ProtoLiteral auto
// 			i_vLeft
// 	,	Or<t_tpRightLiteral...>
// 	)
// ->	bool
// {
// 	return
// 	(	...
// 	or	(	i_vLeft
// 		>=	t_tpRightLiteral()
// 		)
// 	);
// }
//
// template<ProtoLiteral... t_tpLeftLiteral>
// auto consteval
// (	operator >=
// )	(	And<t_tpLeftLiteral...>
// 	,	ProtoDisjunction auto
// 			i_vRight
// 	)
// ->	bool
// {
// // 	if	constexpr
// // 		(	ProtoConjunctive
// // 			<	decltype(i_vRight)
// // 			>
// // 		)
// 		return
// 		(	...
// 		or	(	t_tpLeftLiteral()
// 			>=	AsConjunctive(i_vRight)
// 			)
// 		);
// // 	else
// // 		// Folding the other way around does not work
// // 		return
// // 			True()
// // 		==	(	not
// // 				t_tpLeftLiteral()
// // 			bitor
// // 				...
// // 			bitor
// // 				i_vRight
// // 			)
// // 		;
// }
//
// template<ProtoConjunctionClause... t_tpLeftConjunction>
// auto consteval
// (	operator >=
// )	(	Or<t_tpLeftConjunction...>
// 	,	ProtoConjunctive auto
// 			i_vRight
// 	)
// ->	bool
// {
// 	return
// 	(	...
// 	and	(	t_tpLeftConjunction()
// 		>=	i_vRight
// 		)
// 	);
// }
//
// auto consteval
// (	operator >=
// )	(	ProtoTerm auto
// 			i_vLeft
// 	,	ProtoTerm auto
// 			i_vRight
// 	)
// ->	bool
// {
// 	return
// 	(	AsDisjunctive(i_vLeft)
// 	>=	AsConjunctive(i_vRight)
// 	);
// }

auto consteval
(	operator <=
)	(	ProtoTerm auto
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{	return i_vRight >= i_vLeft;	}
