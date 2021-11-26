#pragma once

#include "Substitute.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

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

auto consteval
(	Implies
)	(	ProtoClause auto
			i_vAssumedTrue
	,	ProtoTerm auto
			i_vTerm
	)
->	bool
{
	if	constexpr
		(	IsFalse
			(	i_vAssumedTrue
			)
		)
		return
			true
		;
	else
		return
		IsTrue
		(	AssumeLiteralsTrue
			(	i_vAssumedTrue
			)(	i_vTerm
			)
		);
}

template
	<	ProtoClause
		...	t_tpAssumedTrue
	>
auto consteval
(	Implies
)	(	Or<t_tpAssumedTrue...>
	,	ProtoTerm auto
			i_vTerm
	)
->	bool
{	return
	(	...
	and	Implies
		(	t_tpAssumedTrue{}
		,	i_vTerm
		)
	);
}

template
	<	ProtoTerm
			t_tTerm
	>
auto consteval
(	operator ==
)	(	t_tTerm
	,	t_tTerm
	)
->	bool
{	return true;	}

auto consteval
(	operator ==
)	(	ProtoTerm auto
			i_vLeftTerm
	,	ProtoTerm auto
			i_vRightTerm
	)
->	bool
{
	//	multiple if constexpr to prevent unnecessary template instantiations
	if	constexpr
		(	ClauseCount
			(	i_vLeftTerm
			)
		!=	ClauseCount
			(	i_vRightTerm
			)
		)
		return
			false
		;
	else
	if	constexpr
		(	LiteralCount
			(	i_vLeftTerm
			)
		!=	LiteralCount
			(	i_vRightTerm
			)
		)
		return
			false
		;
	else
	if	constexpr
		(	not
			Implies
			(	i_vLeftTerm
			,	i_vRightTerm
			)
		)
		return
			false
		;
	else
		return
		Implies
		(	i_vRightTerm
		,	i_vLeftTerm
		);
}
