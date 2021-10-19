#pragma once

#include "Concepts.hpp"
#include "TermTag.hpp"

template
	<	bool
			t_bConstant
	>
struct
	Constant
:	ConstantTag
{
	explicit consteval
	(	operator bool
	)	()	const
	{	return t_bConstant;	}

	auto consteval
	(	operator()
	)	(	auto
			&&
		)	const
	->	bool
	{	return t_bConstant;	}
};

struct
	True final
:	Constant<true>
{
	using Constant<true>::operator bool;
	using Constant<true>::operator();
};

struct
	False final
:	Constant<false>
{
	using Constant<false>::operator bool;
	using Constant<false>::operator();
};

template
	<	ProtoAtom
			t_tAtom
	,	bool
			t_bPolarity
	>
struct
	Literal
:	LiteralTag
{};

template
	<	ProtoAtom
			t_tAtom
	>
struct
	Atom final
:	Literal
	<	t_tAtom
	,	true
	>
{};

template
	<	ProtoAtom
			t_tAtom
	>
struct
	Not final
:	Literal
	<	t_tAtom
	,	false
	>
{};

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
struct
	And final
:	ClauseTag
{
	consteval
	(	And
	)	()
	=	default;

	explicit consteval
	(	And
	)	(	t_tpLiteral
			...
		)
	{}
};

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	And
)	(	t_tpLiteral
		...
	)
->	And
	<	t_tpLiteral
		...
	>
;

template
	<	ProtoClause
		...	t_tpClause
	>
struct
	Or final
:	TermTag
{
	consteval
	(	Or
	)	()
	=	default;

	explicit consteval
	(	Or
	)	(	t_tpClause
			...
		)
	{}
};

template
	<	ProtoClause
		...	t_tpClause
	>
(	Or
)	(	t_tpClause
		...
	)
->	Or
	<	t_tpClause
		...
	>
;
