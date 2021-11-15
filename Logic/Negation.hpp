#pragma once

#include "Types.hpp"
#include "Concepts.hpp"

auto consteval
(	operator not
)	(	True
	)
->	False
{	return {};	}

auto consteval
(	operator not
)	(	False
	)
->	True
{	return {};	}

template
	<	ProtoAtom
			t_tAtom
	>
auto consteval
(	operator not
)	(	Atom<t_tAtom>
	)
->	Not<t_tAtom>
{	return {};	}

template
	<	ProtoAtom
			t_tAtom
	>
auto consteval
(	operator not
)	(	Not<t_tAtom>
	)
->	Atom<t_tAtom>
{	return {};	}

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
auto consteval
(	operator not
)	(	And<t_tpLiteral...>
	)
->	ProtoTerm auto
{	return
	Or
	{	not
		t_tpLiteral
		{}
		...
	};
}

template
	<	ProtoClause
		...	t_tpClause
	>
auto consteval
(	operator not
)	(	Or<t_tpClause...>
	)
->	ProtoTerm auto
{
	if	constexpr
		((	...
		and	ProtoLiteral
			<	t_tpClause
			>
		))
		return
		And
		{	not
			t_tpClause{}
			...
		};
	else
		return
		(	...
		and	not
			t_tpClause{}
		);
}
