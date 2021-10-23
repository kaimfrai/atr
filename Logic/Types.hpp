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
	auto consteval
	(	operator()
	)	(	auto
				&&
			...
		)	const
	->	bool
	{	return t_bConstant;	}
};

struct
	True final
:	Constant<true>
{
	using
		Constant
		<	true
		>
	::	operator()
	;
};

struct
	False final
:	Constant<false>
{
	using
		Constant
		<	false
		>
	::	operator()
	;
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
{
	auto consteval
	(	operator()
	)	(	auto
				&&
			...	i_rpArgument
		)	const
	->	bool
	{	return
		(	t_bPolarity
		==	t_tAtom
			{}(	// do not include std::forward just for this
				static_cast
				<	decltype(i_rpArgument)
						&&
				>(	i_rpArgument
				)...
			)
		);
	}
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
	using
		Literal
		<	t_tAtom
		,	true
		>
	::	operator()
	;
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
	using
		Literal
		<	t_tAtom
		,	false
		>
	::	operator()
	;
};

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

	auto consteval
	(	operator()
	)	(	auto
				&&
			...	i_rpArgument
		)	const
	->	bool
	{	return
		(	//	literals are inserted left to right
			//	more specialized literals are therefore to the right
			//	evaluate them first to get faster short circuiting
			t_tpLiteral{}
			(	// do not include std::forward just for this
				static_cast
				<	decltype(i_rpArgument)
						&&
				>(	i_rpArgument
				)...

			)
		and	...
		);
	}
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

	auto consteval
	(	operator()
	)	(	auto
				&&
			...	i_rpArgument
		)	const
	->	bool
	{	return
		(	//	literals are inserted left to right
			//	more specialized literals are therefore to the right
			//	evaluate them first to get faster short circuiting
			t_tpClause{}
			(	// do not include std::forward just for this
				static_cast
				<	decltype(i_rpArgument)
						&&
				>(	i_rpArgument
				)...

			)
		or	...
		);
	}
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
