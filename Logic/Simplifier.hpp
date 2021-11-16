#pragma once

#include "ClauseFilter.hpp"
#include "Equivalence.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

template
	<	ProtoClause
		...	t_tpSubTerm
	>
struct
	Simplifier
{
	explicit consteval
	(	Simplifier
	)	(	t_tpSubTerm
			...
		)
	{}

	explicit consteval
	(	Simplifier
	)	(	Or<t_tpSubTerm...>
		)
	{}

	static ProtoTerm auto constexpr
		ThisTerm
	=	Disjunction
		(	t_tpSubTerm{}
			...
		)
	;

	auto consteval
	(	operator()
	)	(	True
		)	const
	->	True
	{	return {};	}

	auto consteval
	(	operator()
	)	(	False
		)	const
	->	ProtoTerm auto
	{	return
			ThisTerm
		;
	}
	auto consteval
	(	operator()
	)	(	ProtoClause auto
				i_vNewSubTerm
		)	const
	->	ProtoTerm auto
	{
		ProtoTerm auto constexpr
			vSimplifiedNewSubTerm
		=	ClauseFilter
			{	i_vNewSubTerm
			}(	t_tpSubTerm{}
				...
			,	i_vNewSubTerm
			)
		;

		if	constexpr
			(	i_vNewSubTerm
			!=	vSimplifiedNewSubTerm
			)
			return
			(	ThisTerm
			or	vSimplifiedNewSubTerm
			);
		else
		{
			ProtoTerm auto constexpr
				vSimplifiedOldTerm
			=(	...
			or	ClauseFilter
				{	t_tpSubTerm{}
				}(	t_tpSubTerm{}
					...
				,	i_vNewSubTerm
				)
			);

			if	constexpr
				(	vSimplifiedOldTerm
				!=	ThisTerm
				)
				return
				(	vSimplifiedOldTerm
				or	i_vNewSubTerm
				);
			else
				return
				Disjunction
				(	t_tpSubTerm{}
					...
				,	i_vNewSubTerm
				);
		}
	}
};

template
	<>
struct
	Simplifier
	<	True
	>
{
	explicit consteval
	(	Simplifier
	)	(	True
		)
	{}

	auto consteval
	(	operator()
	)	(	ProtoClause auto
		)	const
	->	True
	{	return {};	}
};

template
	<>
struct
	Simplifier
	<	False
	>
{
	explicit consteval
	(	Simplifier
	)	(	False
		)
	{}

	auto consteval
	(	operator()
	)	(	ProtoClause auto
				i_vNewSubTerm
		)	const
	->	ProtoClause auto
	{	return
			i_vNewSubTerm
		;
	}
};

template
	<	ProtoClause
		...	t_tpSubTerm
	>
(	Simplifier
)	(	t_tpSubTerm
		...
	)
->	Simplifier
	<	t_tpSubTerm
		...
	>
;

template
	<	ProtoClause
		...	t_tpSubTerm
	>
(	Simplifier
)	(	Or<t_tpSubTerm...>
	)
->	Simplifier
	<	t_tpSubTerm
		...
	>
;
