#pragma once

#include "Substitute.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
struct
	LiteralRedundancy
{
	explicit consteval
	(	LiteralRedundancy
	)	(	t_tFilterLiteral
		,	t_tpClauseLiteral
			...
		)
	{}

	explicit consteval
	(	LiteralRedundancy
	)	(	t_tFilterLiteral
		,	And<t_tpClauseLiteral...>
		)
	{}

	static ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpClauseLiteral{}
			...
		)
	;

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpSubTerm
		)	const
	->	ProtoTerm auto
	{
		auto constexpr
			fReplaceByNegation
		=	SubstituteNegation
			(	t_tFilterLiteral{}
			)
		;

		auto constexpr
			fAssumeNegationAndLiteralsTrue
		=	AssumeLiteralsTrue
			(	fReplaceByNegation
				(	t_tpClauseLiteral{}
				)
				...
			)
		;
		auto constexpr
			fIgnoreThisClause
		=	SubstituteFalse
			(	ThisClause
			)
		;

		return
		(	...
		or	fAssumeNegationAndLiteralsTrue
			(	fIgnoreThisClause
				(	i_vpSubTerm
				)
			)
		);
	}
};

template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
(	LiteralRedundancy
)	(	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	)
->	LiteralRedundancy
	<	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	>
;

template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
(	LiteralRedundancy
)	(	t_tFilterLiteral
	,	And<t_tpClauseLiteral...>
	)
->	LiteralRedundancy
	<	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	>
;
