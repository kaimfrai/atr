#pragma once

#include "Types.hpp"
#include "Concepts.hpp"

/// ****************************************************************************
///	operator ==
///	Read A == B as A has the exact same type as B
/// ****************************************************************************

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

