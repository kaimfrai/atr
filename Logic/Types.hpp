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

auto consteval
(	Tautology
)	(	ProtoTerm auto
	,	ProtoTerm auto
		...
	)
->	True
{	return True{};	}

auto consteval
(	Constradiction
)	(	ProtoTerm auto
	,	ProtoTerm auto
		...
	)
->	False
{	return {};	}

auto consteval
(	Conjunction
)	(	ProtoLiteral auto
			i_vLiteral
	)
->	ProtoLiteral auto
{	return	i_vLiteral;	}

auto consteval
(	Conjunction
)	(	ProtoLiteral auto
			i_vFirstLiteral
	,	ProtoLiteral auto
			i_vSecondLiteral
	,	ProtoLiteral auto
		...	i_vpRemainingLiteral
	)
->	ProtoClause auto
{
	return
	And
	{	i_vFirstLiteral
	,	i_vSecondLiteral
	,	i_vpRemainingLiteral
		...
	};
}

auto consteval
(	Disjunction
)	(	ProtoClause auto
			i_vClause
	)
->	ProtoLiteral auto
{	return	i_vClause;	}

auto consteval
(	Disjunction
)	(	ProtoClause auto
			i_vFirstClause
	,	ProtoClause auto
			i_vSecondClause
	,	ProtoClause auto
		...	i_vpRemainingClause
	)
->	ProtoTerm auto
{
	return
	Or
	{	i_vFirstClause
	,	i_vSecondClause
	,	i_vpRemainingClause
		...
	};
}

auto consteval
(	LiteralCount
)	(	ProtoConstant auto
	)
{	return 0ul;	}

auto consteval
(	LiteralCount
)	(	ProtoLiteral auto
	)
{	return 1ul;	}

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
auto consteval
(	LiteralCount
)	(	And<t_tpLiteral...>
	)
{	return sizeof...(t_tpLiteral);	}

template
	<	ProtoClause
		...	t_tpClause
	>
auto consteval
(	LiteralCount
)	(	Or<t_tpClause...>
	)
{	return
	(	...
	+	LiteralCount
		(	t_tpClause{}
		)
	);
}

auto consteval
(	ClauseCount
)	(	ProtoClause auto
	)
{	return 1ul;	}

template
	<	ProtoClause
		...	t_tpClause
	>
auto consteval
(	ClauseCount
)	(	Or<t_tpClause...>
	)
{	return sizeof...(t_tpClause);	}
