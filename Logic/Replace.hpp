#pragma once

#include "Types.hpp"
#include "Concepts.hpp"

template
	<	ProtoTerm
			t_tSubTerm
	,	ProtoTerm
			t_tReplacement
	>
struct
	ReplaceItem
{
	auto consteval
	(	operator()
	)	(	t_tSubTerm
		)	const
	->	t_tReplacement
	{	return{};	}
};

/// Replaces all instances of a given sub-Term within a Term and returns the
/// modified term.
template
	<	ProtoTerm
		...	t_tpSubTerm
	>
struct
	Replace
{
	consteval
	(	Replace
	)	(	t_tpSubTerm
			...
		)
	{}

	template
		<	ProtoTerm
			...	t_tpReplacement
		>
	requires
		(	sizeof...(t_tpSubTerm)
		==	sizeof...(t_tpReplacement)
		)
	struct
		Replacement
	:	ReplaceItem
		<	t_tpSubTerm
		,	t_tpReplacement
		>
		...
	{
		using
			ReplaceItem
			<	t_tpSubTerm
			,	t_tpReplacement
			>
		::	operator()
			...
		;

		auto consteval
		(	operator()
		)	(	ProtoLiteral auto
					i_vOther
			)	const
		->	ProtoLiteral auto
		{	return i_vOther;	}

		template<ProtoLiteral... t_tpLiteral>
		auto consteval
		(	operator()
		)	(	And<t_tpLiteral...>
			)	const
		->	ProtoTerm auto
		{
			return
			(	operator()
				(	t_tpLiteral
					()
				)
			and	...
			);
		}

		template<ProtoClause... t_tpClause>
		auto consteval
		(	operator()
		)	(	Or<t_tpClause...>
			)	const
		->	ProtoTerm auto
		{
			return
			(	operator()
				(	t_tpClause
					()
				)
			or	...
			);
		}
	};

	template
		<	ProtoTerm
			...	t_tpReplacement
		>
	auto consteval
	(	operator()
	)	(	t_tpReplacement
			...
		)	const
	->	Replacement<t_tpReplacement...>
	{	return {};	}
};

template
	<>
struct
	Replace
	<>
{
	struct
		Replacement
	{
		auto consteval
		(	operator()
		)	(	ProtoTerm auto
					i_vTerm
			)
		->	ProtoTerm auto
		{	return i_vTerm;	}
	};

	auto consteval
	(	operator()
	)	()	const
	->	Replacement
	{	return {};	}
};

template
	<	ProtoTerm
		...	t_tpSubTerm
	>
(	Replace
)	(	t_tpSubTerm
		...
	)
->	Replace
	<	t_tpSubTerm
		...
	>
;

auto consteval
(	SetTrue
)	(	ProtoTerm auto
		...	i_vpSubTerm
	)
{
	return
		Replace
		(	i_vpSubTerm
			...
		)(	(	(void)i_vpSubTerm
			,	True
				()
			)
			...
		)
	;
}

auto consteval
(	SetFalse
)	(	ProtoTerm auto
		...	i_vpSubTerm
	)
{
	return
		Replace
		(	i_vpSubTerm
			...
		)(	(	(void)i_vpSubTerm
			,	False
				()
			)
			...
		)
	;
}

auto consteval
(	SetNegated
)	(	ProtoTerm auto
		...	i_vpSubTerm
	)
{
	return
		Replace
		(	i_vpSubTerm
			...
		)(	not
			i_vpSubTerm
			...
		)
	;
}
