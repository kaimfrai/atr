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
			(	...
			and	operator()
				(	t_tpLiteral{}
				)
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
			(	...
			or	operator()
				(	t_tpClause{}
				)
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
	{	i_vpSubTerm
		...
	}(	(	(void)i_vpSubTerm
		,	True{}
		)
		...
	);
}

auto consteval
(	SubstituteFalse
)	(	ProtoTerm auto
		...	i_vpSubTerm
	)
{	return
	Substitute
	{	i_vpSubTerm
		...
	}(	(	(void)i_vpSubTerm
		,	False{}
		)
		...
	);
}

auto consteval
(	SubstituteNegation
)	(	ProtoTerm auto
		...	i_vpSubTerm
	)
{	return
	Substitute
	{	i_vpSubTerm
		...
	}(	not
		i_vpSubTerm
		...
	);
}

auto consteval
(	AssumeLiteralsTrue
)	(	ProtoLiteral auto
		...	i_vpLiteral
	)
{	return
	Substitute
	{	i_vpLiteral
		...
	,	not
		i_vpLiteral
		...
	}(	//	first half literals substituted by true
		(	(void)i_vpLiteral
		,	True{}
		)
		...
	,	//	second half negations substituted by false
		(	(void)i_vpLiteral
		,	False{}
		)
		...
	);
}

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
auto consteval
(	AssumeLiteralsTrue
)	(	And<t_tpLiteral...>
	)
{	return
	AssumeLiteralsTrue
	(	t_tpLiteral{}
		...
	);
}

template
	<	ProtoLiteral
		...	t_tpAssumed
	>
struct
	Assumption
{
	explicit consteval
	(	Assumption
	)	(	t_tpAssumed
			...
		)
	{}

	explicit consteval
	(	Assumption
	)	(	And<t_tpAssumed...>
		)
	{}

	auto consteval
	(	operator()
	)	(	ProtoTerm auto
				i_vTerm
		)	const
	->	ProtoTerm auto
	{
		auto constexpr
			vSubstitution
		=	Substitute
			{	t_tpAssumed{}
				...
			,	not
				t_tpAssumed{}
				...
			}(	//	first half literals substituted by true
				Tautology
				(	t_tpAssumed{}
				)
				...
			,	//	second half negations substituted by false
				Contradiction
				(	t_tpAssumed{}
				)
				...
			)
		;
		return
		vSubstitution
		(	i_vTerm
		);
	}
};

template
	<	ProtoLiteral
		...	t_tpAssumed
	>
(	Assumption
)	(	t_tpAssumed
		...
	)
->	Assumption
	<	t_tpAssumed
		...
	>
;

template
	<	ProtoLiteral
		...	t_tpAssumed
	>
(	Assumption
)	(	And<t_tpAssumed...>
	)
->	Assumption
	<	t_tpAssumed
		...
	>
;

template
	<	ProtoClause
			t_tSelf
	>
struct
	SelfIgnoringAssumption
{
	explicit consteval
	(	SelfIgnoringAssumption
	)	(	t_tSelf
		)
	{}

	auto consteval
	(	operator()
	)	(	t_tSelf
		)	const
	->	False
	{	return {};	}

	auto consteval
	(	operator()
	)	(	ProtoTerm auto
				i_vTerm
		)	const
	->	ProtoTerm auto
	{
		return
		Assumption
		{	t_tSelf{}
		}(	i_vTerm
		);
	}
};

template
	<	ProtoClause
			t_tSelf
	>
(	SelfIgnoringAssumption
)	(	t_tSelf
	)
->	SelfIgnoringAssumption
	<	t_tSelf
	>
;
