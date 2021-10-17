#pragma once

#include "LiteralFilter.hpp"
#include "Equivalence.hpp"
#include "Identity.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

// auto consteval
// (	SimplifyRedundantClauses
// )	(	ProtoDisjunctive auto
// 			i_vTerm
// 	)
// ->	ProtoDisjunctive auto
// {
// 	ProtoDisjunctive auto constexpr
// 		vSimplified
// 	=	FilterRedundantClauses
// 		(	i_vTerm
// 		)
// 	;
//
// // 	static_assert
// // 	(	decltype(i_vTerm)()
// // 	<=>	decltype(vSimplified)()
// // 	,	"FilterRedundantClauses did not simplify correctly!"
// // 	);
//
// 	return vSimplified;
// }

// auto consteval
// (	SimplifyRedundantLiterals
// )	(	ProtoDisjunctive auto
// 			i_vTerm
// 	)
// ->	ProtoDisjunctive auto
// {
//
//
// 	return vSimplified;
// }

auto consteval
(	Simplify
)	(	ProtoLiteral auto
			i_vLiteral
	)
->	ProtoLiteral auto
{	return i_vLiteral;	}

auto consteval
(	Simplify
)	(	ProtoDisjunctive auto
			i_vTerm
	)
->	ProtoDisjunctive auto
{
	ProtoDisjunctive auto constexpr
		vSimplified
	=	FilterRedundantLiterals
		(	i_vTerm
		)
	;

	static_assert
	(	decltype(i_vTerm)()
	<=>	decltype(vSimplified)()
	,	"Did not simplify correctly!"
	);

	if	constexpr
		(	i_vTerm
		==	vSimplified
		)
		return
			i_vTerm
		;
	else
		return
			Simplify
			(	vSimplified
			)
		;
}
