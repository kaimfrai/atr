#pragma once

#include "Concepts.hpp"
#include "TermTag.hpp"

template
	<	bool
			t_bConstant
	>
struct
	Constant
{
	static auto constexpr
	(	Term
	)=	TermTag
		{	.	IsConstant
			=	true
		}
	;

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
	using Constant<true>::Term;
	using Constant<true>::operator bool;
	using Constant<true>::operator();
};

struct
	False final
:	Constant<false>
{
	using Constant<false>::Term;
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
{
	static auto constexpr
	(	Term
	)=	TermTag
		{	.IsLiteral
			=	true
		}
	;
};

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
{
	using Literal<t_tAtom, true>::Term;
};

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
{
	using Literal<t_tAtom, false>::Term;
};

template
	<	ProtoDisjunctionClause
		...	t_tpDisjunction
	>
struct
	And final
{
	static auto constexpr
	(	Term
	)=	TermTag
		{	.	IsClause
			=	(	...
				and	ProtoLiteral
					<	t_tpDisjunction
					>
				)
		,	.	IsConjunction
			=	true
		}
	;

	consteval
	(	And
	)	()
	=	default;

	explicit consteval
	(	And
	)	(	t_tpDisjunction
			...
		)
	{}
};

template
	<	ProtoDisjunctionClause
		...	t_tpDisjunction
	>
(	And
)	(	t_tpDisjunction
		...
	)
->	And
	<	t_tpDisjunction
		...
	>
;

template
	<	ProtoConjunctionClause
		...	t_tpConjunction
	>
struct
	Or final
{
	static auto constexpr
	(	Term
	)=	TermTag
		{	.	IsClause
			=	(	...
				and	ProtoLiteral
					<	t_tpConjunction
					>
				)
		,	.	IsDisjunction
			=	true
		}
	;

	consteval
	(	Or
	)	()
	=	default;

	explicit consteval
	(	Or
	)	(	t_tpConjunction
			...
		)
	{}
};

template
	<	ProtoConjunctionClause
		...	t_tpConjunction
	>
(	Or
)	(	t_tpConjunction
		...
	)
->	Or
	<	t_tpConjunction
		...
	>
;
