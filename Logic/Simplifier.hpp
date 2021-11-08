#pragma once

#include "ClauseFilter.hpp"
#include "Identity.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

template
	<	ProtoClause
		...	t_tpOldClause
	>
struct
	Simplifier
{
	explicit consteval
	(	Simplifier
	)	(	t_tpOldClause
			...
		)
	{}

	explicit consteval
	(	Simplifier
	)	(	Or<t_tpOldClause...>
		)
	{}

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
		(	...
		or	t_tpOldClause{}
		);
	}
	auto consteval
	(	operator()
	)	(	ProtoClause auto
				i_vNewClause
		)	const
	->	ProtoTerm auto
	{
		ProtoTerm auto constexpr
			vSimplifiedNewClause
		=	ClauseFilter
			{	i_vNewClause
			}(	t_tpOldClause{}
				...
			,	i_vNewClause
			)
		;

		ProtoTerm auto constexpr
			vOldTerm
		=(	...
		or	t_tpOldClause{}
		);

		if	constexpr
			(	i_vNewClause
			==	vSimplifiedNewClause
			)
		{
			ProtoTerm auto constexpr
				vSimplifiedOldTerm
			=(	...
			or	ClauseFilter
				{	t_tpOldClause{}
				}(	t_tpOldClause{}
					...
				,	i_vNewClause
				)
			);

			if	constexpr
				(	vSimplifiedOldTerm
				==	vOldTerm
				)
				return
				Or
				{	t_tpOldClause{}
					...
				,	i_vNewClause
				};
			else
				return
				(	vSimplifiedOldTerm
				or	i_vNewClause
				);
		}
		else
			return
			(	vOldTerm
			or	vSimplifiedNewClause
			);
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
				i_vNewClause
		)	const
	->	ProtoClause auto
	{	return
			i_vNewClause
		;
	}
};

template
	<	ProtoClause
		...	t_tpOldClause
	>
(	Simplifier
)	(	t_tpOldClause
		...
	)
->	Simplifier
	<	t_tpOldClause
		...
	>
;

template
	<	ProtoClause
		...	t_tpOldClause
	>
(	Simplifier
)	(	Or<t_tpOldClause...>
	)
->	Simplifier
	<	t_tpOldClause
		...
	>
;
