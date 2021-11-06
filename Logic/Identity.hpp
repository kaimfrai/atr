#pragma once

#include "Types.hpp"
#include "Concepts.hpp"

template
	<	ProtoLiteral
			t_tTerm
	>
auto consteval
(	operator ==
)	(	t_tTerm
	,	t_tTerm
	)
->	bool
{	return true;	}

template
	<	ProtoClause
			t_tCountClause
	>
struct
	Count
{
	explicit consteval
	(	Count
	)	(	t_tCountClause
		)
	{}

	template
		<	template
				<	typename
					...
				>
			typename
				t_t1Term
		,	ProtoClause
			...	t_tpClause
		>
	auto consteval
	(	operator()
	)	(	t_t1Term<t_tpClause...>
		)	const
	{	return
		(	0ul
		+	...
		+	(	t_tCountClause{}
			==	t_tpClause{}
			)
		);
	}
};

template
	<	ProtoClause
			t_tCountClause
	>
(	Count
)	(	t_tCountClause
	)
->	Count
	<	t_tCountClause
	>
;

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
auto consteval
(	operator ==
)	(	And<t_tpLiteral...>
	,	And<t_tpLiteral...>
	)
->	bool
{	return true;	}

template
	<	ProtoClause
		...	t_tpClause
	>
auto consteval
(	operator ==
)	(	Or<t_tpClause...>
	,	Or<t_tpClause...>
	)
->	bool
{	return true;	}

template
	<	template
			<	typename
				...
			>
		typename
			t_t1Term
	,	ProtoClause
		...	t_tpLeftClause
	,	ProtoClause
		...	t_tpRightClause
	>
requires
	(	sizeof...(t_tpLeftClause)
	==	sizeof...(t_tpRightClause)
	)
and	ProtoTerm
	<	t_t1Term
		<	t_tpLeftClause
			...
		>
	>
and	ProtoTerm
	<	t_t1Term
		<	t_tpRightClause
			...
		>
	>
auto consteval
(	operator ==
)	(	t_t1Term<t_tpLeftClause...>
			i_vLeftTerm
	,	t_t1Term<t_tpRightClause...>
			i_vRightTerm
	)
->	bool
{	return
	(	...
	and	(	Count
			{	t_tpLeftClause{}
			}(	i_vLeftTerm
			)
		==	Count
			{	t_tpLeftClause{}
			}(	i_vRightTerm
			)
		)
	);
}

auto consteval
(	operator ==
)	(	ProtoTerm auto
	,	ProtoTerm auto
	)
->	bool
{	return false;	}

auto consteval
(	IsTrue
)	(	True
	)
->	bool
{	return true;	}

auto consteval
(	IsTrue
)	(	ProtoTerm auto
	)
->	bool
{	return false;	}

auto consteval
(	IsFalse
)	(	False
	)
->	bool
{	return true;	}

auto consteval
(	IsFalse
)	(	ProtoTerm auto
	)
->	bool
{	return false;	}

