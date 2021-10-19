#pragma once

#include "Identity.hpp"
#include "Implication.hpp"
#include "Concepts.hpp"

/// ****************************************************************************
///	operator <=>
///	Read A <=> B as A is equivalent to B
/// ****************************************************************************

auto consteval
(	operator <=>
)	(	ProtoTerm auto
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{
	if	constexpr
		(	i_vLeft
		==	i_vRight
		)
		return
			true
		;
	else
		return
		(	(	i_vLeft
			>=	i_vRight
			)
		and	(	i_vLeft
			<=	i_vRight
			)
		);
}
