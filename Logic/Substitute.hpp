#pragma once

#include "Types.hpp"
#include "Concepts.hpp"

template
	<	ProtoTerm
			t_tSubTerm
	,	ProtoTerm
			t_tSubstitute
	>
struct
	SubstitutionItem
{
	auto consteval
	(	operator()
	)	(	t_tSubTerm
		)	const
	->	t_tSubstitute
	{	return{};	}
};

/// Substitutes all instances of a given sub-Term within a Term and returns the
/// modified term.
template
	<	ProtoTerm
		...	t_tpSubTerm
	>
struct
	Substitute
{
	consteval
	(	Substitute
	)	(	t_tpSubTerm
			...
		)
	{}

	template
		<	ProtoTerm
			...	t_tpSubstitute
		>
	requires
		(	sizeof...(t_tpSubTerm)
		==	sizeof...(t_tpSubstitute)
		)
	struct
		Substitution
	:	SubstitutionItem
		<	t_tpSubTerm
		,	t_tpSubstitute
		>
		...
	{
		using
			SubstitutionItem
			<	t_tpSubTerm
			,	t_tpSubstitute
			>
		::	operator()
			...
		;

		auto consteval
		(	operator()
		)	(	ProtoLiteral auto
					i_vLiteral
			)	const
		->	ProtoLiteral auto
		{	return i_vLiteral;	}

		template
			<	ProtoLiteral
				...	t_tpLiteral
			>
		auto consteval
		(	operator()
		)	(	And<t_tpLiteral...>
			)	const
		->	ProtoTerm auto
		{
			return
			(	operator()
				(	t_tpLiteral{}
				)
			and	...
			);
		}

		template
			<	ProtoClause
				...	t_tpClause
			>
		auto consteval
		(	operator()
		)	(	Or<t_tpClause...>
			)	const
		->	ProtoTerm auto
		{
			return
			(	operator()
				(	t_tpClause{}
				)
			or	...
			);
		}
	};

	template
		<	ProtoTerm
			...	t_tpSubstitute
		>
	auto consteval
	(	operator()
	)	(	t_tpSubstitute
			...
		)	const
	->	Substitution<t_tpSubstitute...>
	{	return {};	}
};

template
	<	ProtoTerm
		...	t_tpSubTerm
	>
(	Substitute
)	(	t_tpSubTerm
		...
	)
->	Substitute
	<	t_tpSubTerm
		...
	>
;

auto consteval
(	SubstituteTrue
)	(	ProtoTerm auto
		...	i_vpSubTerm
	)
{
	return
		Substitute
		(	i_vpSubTerm
			...
		)(	(	(void)i_vpSubTerm
			,	True{}
			)
			...
		)
	;
}

auto consteval
(	SubstituteFalse
)	(	ProtoTerm auto
		...	i_vpSubTerm
	)
{
	return
		Substitute
		(	i_vpSubTerm
			...
		)(	(	(void)i_vpSubTerm
			,	False{}
			)
			...
		)
	;
}

auto consteval
(	SubstituteNegation
)	(	ProtoTerm auto
		...	i_vpSubTerm
	)
{
	return
		Substitute
		(	i_vpSubTerm
			...
		)(	not
			i_vpSubTerm
			...
		)
	;
}
