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
			...	i_vpClause
		)	const
	->	bool
	{
		auto constexpr
			nContainedCount
		=(	0ul
		+	...
		+	(	ThisClause
			==	i_vpClause
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
				true
			;
		else
		{
			auto constexpr
				fAssumeLiteralsTrue
			=	AssumeLiteralsTrue
				(	ThisClause
				)
			;
			auto constexpr
				fIgnoreSelf
			=	SubstituteFalse
				(	ThisClause
				)
			;
			ProtoTerm auto constexpr
				vDisjunction
			=(	...
			or	fAssumeLiteralsTrue
				(	fIgnoreSelf
					(	i_vpClause
					)
				)
			);

			return
			IsTrue
			(	vDisjunction
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
