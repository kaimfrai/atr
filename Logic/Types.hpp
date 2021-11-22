#pragma once

#include "Concepts.hpp"
#include "TermTag.hpp"

auto constexpr inline
	MaxLiteralsPerClause
=	6uz
;

auto constexpr inline
	MaxClausesPerTerm
=	6uz
;

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
		Constant<true>
	::	operator bool
	;
	using
		Constant<true>
	::	operator()
	;
};

struct
	False final
:	Constant<false>
{
	using
		Constant<false>
	::	operator bool
	;
	using
		Constant<false>
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
				static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
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
		Literal<t_tAtom, true>
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
		Literal<t_tAtom, false>
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
	static_assert
	(	sizeof...(t_tpLiteral)
	<=	MaxLiteralsPerClause
	,	"Maximum amount of Literals per Clause exceeded."
		" Please adjust Logic::ProtoClauseConstraint to reflect the amount of Literals."
	);

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
		(	...
		and	t_tpLiteral{}
			(	// do not include std::forward just for this
				static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)...
			)
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
	static_assert
	(	sizeof...(t_tpClause)
	<=	MaxClausesPerTerm
	,	"Maximum amount of Clauses per Term exceeded."
		" Please adjust Logic::ProtoConstraint to reflect the amount of Clauses."
	);
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
		(	...
		or	t_tpClause{}
			(	// do not include std::forward just for this
				static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)...
			)
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
{	return
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
->	ProtoClause auto
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
{	return
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
{	return 0uz;	}

auto consteval
(	LiteralCount
)	(	ProtoLiteral auto
	)
{	return 1uz;	}

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
)	(	ProtoConstant auto
	)
{	return 0uz;	}

auto consteval
(	ClauseCount
)	(	ProtoClause auto
	)
{	return 1uz;	}

template
	<	ProtoClause
		...	t_tpClause
	>
auto consteval
(	ClauseCount
)	(	Or<t_tpClause...>
	)
{	return sizeof...(t_tpClause);	}
