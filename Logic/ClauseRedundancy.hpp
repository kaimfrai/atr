#pragma once

#include "Equivalence.hpp"
#include "Substitute.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
struct
	ClauseRedundancy
{
	explicit consteval
	(	ClauseRedundancy
	)	(	t_tpLiteral
			...
		)
	{}

	explicit consteval
	(	ClauseRedundancy
	)	(	And<t_tpLiteral...>
		)
	{}

	static ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpLiteral{}
			...
		)
	;

	auto consteval
	(	operator()
	)	(	ProtoTerm auto
			...	i_vpSubTerm
		)	const
	->	ProtoTerm auto
	{
		auto constexpr
			nContainedCount
		=(	0ul
		+	...
		+	(	ThisClause
			==	i_vpSubTerm
			)
		);
		static_assert
		(	nContainedCount
		>=	1ul
		,	"Cannot check clause redundancy without the clause itself."
		);
		if	constexpr
			(	nContainedCount
			>	1ul
			)
			return
			True
			{};
		else
		{
			auto constexpr
				fAssumeLiteralsTrue
			=	AssumeLiteralsTrue
				(	ThisClause
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
			or	fAssumeLiteralsTrue
				(	fIgnoreThisClause
					(	i_vpSubTerm
					)
				)
			);
		}
	}
};

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	ClauseRedundancy
)	(	t_tpLiteral
		...
	)
->	ClauseRedundancy
	<	t_tpLiteral
		...
	>
;

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	ClauseRedundancy
)	(	And<t_tpLiteral...>
	)
->	ClauseRedundancy
	<	t_tpLiteral
		...
	>
;
